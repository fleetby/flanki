import 'dart:async';

import 'package:flanki/domain/models/deck_model.dart';
import 'package:flanki/domain/use_cases/apply_deck_settings_use_case.dart';
import 'package:flanki/domain/use_cases/delete_deck_use_case.dart';
import 'package:flanki/domain/use_cases/edit_deck_use_case.dart';
import 'package:flanki/domain/use_cases/get_deck_stream_use_case.dart';
import 'package:flanki/domain/use_cases/reset_schedulings_use_case.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'deck_bloc.freezed.dart';

part 'deck_event.dart';
part 'deck_state.dart';

@injectable
class DeckBloc extends Bloc<DeckEvent, DeckState> {
  DeckBloc(
    this._getDeckStreamUseCase,
    this._editDeckUseCase,
    this._deleteDeckUseCase,
    this._resetSchedulingsUseCase,
    this._applyDeckSettingsUseCase,
  ) : super(const DeckInitial()) {
    on<DeckLoad>(_load);
    on<DeckSet>(_set);
    on<DeckEdit>(_edit);
    on<DeckDelete>(_delete);
    on<DeckResetScheduling>(_resetScheduling);
    on<DeckSetShuffleCards>(_setShuffleCards);
  }

  final GetDeckStreamUseCase _getDeckStreamUseCase;
  final EditDeckUseCase _editDeckUseCase;
  final DeleteDeckUseCase _deleteDeckUseCase;
  final ResetSchedulingsUseCase _resetSchedulingsUseCase;
  final ApplyDeckSettingsUseCase _applyDeckSettingsUseCase;

  StreamSubscription<DeckModel?>? _deckStreamSubscription;

  Future<void> _load(DeckLoad event, Emitter<DeckState> emit) async {
    try {
      emit(const DeckLoading());
      await _deckStreamSubscription?.cancel();
      _deckStreamSubscription = _getDeckStreamUseCase(
        GetDeckStreamUseCaseParams(
          id: event.id,
          fireImmediately: true,
        ),
      ).listen((deck) => add(DeckSet(deck: deck)));
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
      emit(const DeckError());
    }
  }

  Future<void> _set(DeckSet event, Emitter<DeckState> emit) async {
    if (event.deck == null) {
      emit(const DeckDeleted());
      return;
    }

    emit(DeckLoaded(deck: event.deck!));
  }

  Future<void> _edit(DeckEdit event, Emitter<DeckState> emit) async {
    assert(state is DeckLoaded, 'Can only edit loaded deck');
    try {
      await _editDeckUseCase(
        EditDeckUseCaseParams(
          deckId: (state as DeckLoaded).deck.id,
          name: event.name,
        ),
      );
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
    }
  }

  Future<void> _delete(DeckDelete event, Emitter<DeckState> emit) async {
    assert(state is DeckLoaded, 'Can only delete loaded deck');
    try {
      await _deleteDeckUseCase(
        DeleteDeckUseCaseParams(deckId: (state as DeckLoaded).deck.id),
      );
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
    }
  }

  Future<void> _resetScheduling(
    DeckResetScheduling event,
    Emitter<DeckState> emit,
  ) async {
    assert(state is DeckLoaded, 'Can only reset loaded deck');
    try {
      await _resetSchedulingsUseCase(
        ResetSchedulingsUseCaseParams(deckId: (state as DeckLoaded).deck.id),
      );
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
    }
  }

  Future<void> _setShuffleCards(
    DeckSetShuffleCards event,
    Emitter<DeckState> emit,
  ) async {
    assert(state is DeckLoaded, 'Can only set loaded deck');
    try {
      await _applyDeckSettingsUseCase(
        ApplyDeckSettingsUseCaseParams(
          deckId: (state as DeckLoaded).deck.id,
          shuffleCards: event.shuffleCards,
        ),
      );
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
    }
  }

  @override
  Future<void> close() {
    _deckStreamSubscription?.cancel();
    return super.close();
  }
}
