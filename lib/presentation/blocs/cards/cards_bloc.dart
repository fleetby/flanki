import 'dart:async';

import 'package:flanki/domain/models/card_model.dart';
import 'package:flanki/domain/use_cases/create_card_use_case.dart';
import 'package:flanki/domain/use_cases/delete_card_use_case.dart';
import 'package:flanki/domain/use_cases/edit_card_use_case.dart';
import 'package:flanki/domain/use_cases/get_cards_stream_use_case.dart';
import 'package:flanki/presentation/view_models/card_item_vm.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cards_bloc.freezed.dart';

part 'cards_event.dart';
part 'cards_state.dart';

@injectable
class CardsBloc extends Bloc<CardsEvent, CardsState> {
  CardsBloc(
    this._getCardsStreamUseCase,
    this._createCardUseCase,
    this._editCardUseCase,
    this._deleteCardUseCase,
  ) : super(const CardsInitial()) {
    on<CardsLoad>(_load);
    on<CardsCreate>(_create);
    on<CardsSet>(_set);
    on<CardsEdit>(_edit);
    on<CardsDelete>(_delete);
  }

  final GetCardsStreamUseCase _getCardsStreamUseCase;
  final CreateCardUseCase _createCardUseCase;
  final EditCardUseCase _editCardUseCase;
  final DeleteCardUseCase _deleteCardUseCase;

  StreamSubscription<List<CardModel>>? _cardsStreamSubscription;

  Future<void> _load(CardsLoad event, Emitter<CardsState> emit) async {
    try {
      emit(const CardsLoading());
      await _cardsStreamSubscription?.cancel();
      _cardsStreamSubscription = _getCardsStreamUseCase(
        GetCardsStreamUseCaseParams(
          deckId: event.deckId,
          fireImmediately: true,
        ),
      ).listen(
        (cards) => add(
          CardsSet(
            deckId: event.deckId,
            cards: cards,
          ),
        ),
      );
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
      emit(const CardsError());
    }
  }

  Future<void> _create(CardsCreate event, Emitter<CardsState> emit) async {
    assert(
      state is CardsLoaded,
      'Cannot create card when cards are not loaded',
    );

    try {
      await _createCardUseCase(
        CreateCardUseCaseParams(
          deckId: (state as CardsLoaded).deckId,
          frontText: event.frontText,
          backText: event.backText,
        ),
      );
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
    }
  }

  Future<void> _set(CardsSet event, Emitter<CardsState> emit) async {
    emit(
      CardsLoaded(
        deckId: event.deckId,
        cards: event.cards.map(CardItemVm.fromModel).toList(),
      ),
    );
  }

  Future<void> _edit(CardsEdit event, Emitter<CardsState> emit) async {
    assert(
      state is CardsLoaded,
      'Cannot edit card when cards are not loaded',
    );

    try {
      await _editCardUseCase(
        EditCardUseCaseParams(
          cardId: event.cardId,
          frontText: event.frontText,
          backText: event.backText,
        ),
      );
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
    }
  }

  Future<void> _delete(CardsDelete event, Emitter<CardsState> emit) async {
    assert(
      state is CardsLoaded,
      'Cannot delete card when cards are not loaded',
    );

    try {
      await _deleteCardUseCase(DeleteCardUseCaseParams(cardId: event.cardId));
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
    }
  }

  @override
  Future<void> close() {
    _cardsStreamSubscription?.cancel();
    return super.close();
  }
}
