import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:dartx/dartx.dart';
import 'package:flanki/domain/constants/card_rate.dart';
import 'package:flanki/domain/models/card_model.dart';
import 'package:flanki/domain/use_cases/edit_card_use_case.dart';
import 'package:flanki/domain/use_cases/get_cards_stream_use_case.dart';
import 'package:flanki/domain/use_cases/get_next_repetition_date_use_case.dart';
import 'package:flanki/domain/use_cases/get_study_cards_use_case.dart';
import 'package:flanki/domain/use_cases/rate_card_use_case.dart';
import 'package:flanki/domain/use_cases/restore_previous_card_scheduling_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'study_bloc.freezed.dart';

part 'study_event.dart';
part 'study_state.dart';

@injectable
class StudyBloc extends Bloc<StudyEvent, StudyState> {
  StudyBloc(
    this._getStudyCardsUseCase,
    this._rateCardUseCase,
    this._getCardsStreamUseCase,
    this._editCardUseCase,
    this._restoreCardPreviousSchedulingUseCase,
    this._getNextRepetitionDateUseCase,
  ) : super(const StudyState.initial()) {
    on<StudyLoad>(_load);
    on<StudyShowAnswer>(_showAnswer);
    on<StudyRateCard>(_rateCard);
    on<StudyRestorePreviousCard>(
      _restorePreviousCard,
      transformer: droppable(),
    );
    on<StudyUpdateCards>(_updateCards);
    on<StudyEditCard>(_editCard);
  }

  final GetStudyCardsUseCase _getStudyCardsUseCase;
  final RateCardUseCase _rateCardUseCase;
  final GetCardsStreamUseCase _getCardsStreamUseCase;
  final EditCardUseCase _editCardUseCase;
  final RestorePreviousCardSchedulingUseCase
      _restoreCardPreviousSchedulingUseCase;
  final GetNextRepetitionDateUseCase _getNextRepetitionDateUseCase;

  StreamSubscription<List<CardModel>>? _cardsChangesSubscription;

  Future<void> _load(StudyLoad event, Emitter<StudyState> emit) async {
    try {
      await _cardsChangesSubscription?.cancel();
      emit(const StudyLoading());
      final cards = await _getStudyCardsUseCase(
        GetStudyCardsUseCaseParams(
          deckId: event.deckId,
          ignoreNeedsRepetition: event.trainingMode,
        ),
      );
      if (cards.isEmpty) {
        emit(
          StudyFinished(
            deckId: event.deckId,
            nextRepetitionDate: await _getNextRepetitionDateUseCase(
              GetNextRepetitionDateUseCaseParams(deckId: event.deckId),
            ),
          ),
        );
      } else {
        emit(
          StudyOngoing(
            deckId: event.deckId,
            cards: cards,
            trainingMode: event.trainingMode,
          ),
        );
        _cardsChangesSubscription = _getCardsStreamUseCase(
          GetCardsStreamUseCaseParams(
            cardIds: cards.map((e) => e.id).toList(),
            fireImmediately: true,
          ),
        ).listen((cards) => add(StudyUpdateCards(cards: cards)));
      }
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
      emit(StudyError(e, st));
    }
  }

  Future<void> _showAnswer(
    StudyShowAnswer event,
    Emitter<StudyState> emit,
  ) async {
    assert(
      state is StudyOngoing,
      'Cannot show answer when state is not ongoing',
    );

    emit((state as StudyOngoing).copyWith(showAnswer: true));
  }

  Future<void> _rateCard(
    StudyRateCard event,
    Emitter<StudyState> emit,
  ) async {
    assert(
      this.state is StudyOngoing,
      'Cannot rate card when state is not ongoing',
    );
    final state = this.state as StudyOngoing;
    final currentCard = state.cards[state.currentCardIndex];

    if (!state.trainingMode) {
      await _rateCardUseCase(
        RateCardUseCaseParams(
          cardId: currentCard.id,
          rate: event.rate,
        ),
      );
    }

    final againCount =
        state.againCount + (event.rate == CardRate.again ? 1 : 0);
    final hardCount = state.hardCount + (event.rate == CardRate.hard ? 1 : 0);
    final goodCount = state.goodCount + (event.rate == CardRate.good ? 1 : 0);

    final nextCardIndex = state.currentCardIndex + 1;
    if (nextCardIndex >= state.cards.length) {
      await _cardsChangesSubscription?.cancel();
      emit(
        StudyFinished(
          deckId: state.deckId,
          rates: {
            CardRate.again: againCount,
            CardRate.hard: hardCount,
            CardRate.good: goodCount,
          },
          nextRepetitionDate: await _getNextRepetitionDateUseCase(
            GetNextRepetitionDateUseCaseParams(deckId: state.deckId),
          ),
        ),
      );
    } else {
      emit(
        state.copyWith(
          showAnswer: false,
          currentCardIndex: nextCardIndex,
          againCount: againCount,
          hardCount: hardCount,
          goodCount: goodCount,
        ),
      );
    }
  }

  Future<void> _restorePreviousCard(
    StudyRestorePreviousCard event,
    Emitter<StudyState> emit,
  ) async {
    assert(
      this.state is StudyOngoing,
      'Cannot restore previous card when state is not ongoing',
    );
    final state = this.state as StudyOngoing;
    final previousIndex = state.currentCardIndex - 1;

    if (!state.trainingMode) {
      await _restoreCardPreviousSchedulingUseCase(
        RestorePreviousCardSchedulingUseCaseParams(
          cardId: state.cards[previousIndex].id,
        ),
      );
    }

    emit(
      state.copyWith(
        currentCardIndex: previousIndex,
        showAnswer: false,
      ),
    );
  }

  Future<void> _updateCards(
    StudyUpdateCards event,
    Emitter<StudyState> emit,
  ) async {
    assert(
      this.state is StudyOngoing,
      'Cannot update cards when state is not ongoing',
    );
    final state = this.state as StudyOngoing;

    final updatedCards = <CardModel>[];
    for (final oldCard in state.cards) {
      final newCard = event.cards.firstOrNullWhere((e) => e.id == oldCard.id);
      updatedCards.add(newCard ?? oldCard);
    }

    emit(state.copyWith(cards: updatedCards));
  }

  Future<void> _editCard(
    StudyEditCard event,
    Emitter<StudyState> emit,
  ) async {
    await _editCardUseCase(
      EditCardUseCaseParams(
        cardId: event.cardId,
        frontText: event.frontText,
        backText: event.backText,
      ),
    );
  }

  @override
  Future<void> close() {
    _cardsChangesSubscription?.cancel();
    return super.close();
  }
}
