import 'package:bloc/bloc.dart';
import 'package:flanki/domain/models/card_model.dart';
import 'package:flanki/domain/use_cases/create_card_use_case.dart';
import 'package:flanki/domain/use_cases/edit_card_use_case.dart';
import 'package:flanki/domain/use_cases/get_card_use_case.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'create_card_event.dart';
part 'create_card_state.dart';
part 'create_card_bloc.freezed.dart';

@injectable
class CreateCardBloc extends Bloc<CreateCardEvent, CreateCardState> {
  CreateCardBloc(
    this._getCardUseCase,
    this._createCardUseCase,
    this._editCardUseCase,
  ) : super(const CreateCardState()) {
    on<CreateCardLoad>(_load);
    on<CreateCardSave>(_save);
    on<CreateCardClear>(_clear);
  }

  final GetCardUseCase _getCardUseCase;
  final CreateCardUseCase _createCardUseCase;
  final EditCardUseCase _editCardUseCase;

  Future<void> _load(
    CreateCardLoad event,
    Emitter<CreateCardState> emit,
  ) async {
    try {
      emit(state.copyWith(loadStatus: CreateCardLoadStatus.loading));
      final card = await _getCardUseCase(cardId: event.cardId);
      emit(CreateCardState(card: card));
      emit(state.copyWith(loadStatus: CreateCardLoadStatus.success));
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
      emit(state.copyWith(loadStatus: CreateCardLoadStatus.error));
    }
  }

  Future<void> _save(
    CreateCardSave event,
    Emitter<CreateCardState> emit,
  ) async {
    try {
      emit(state.copyWith(saveStatus: CreateCardSaveStatus.loading));
      if (state.card?.id != null) {
        await _editCardUseCase(
          EditCardUseCaseParams(
            cardId: state.card!.id,
            frontText: event.frontText,
            backText: event.backText,
          ),
        );
      } else {
        await _createCardUseCase(
          CreateCardUseCaseParams(
            frontText: event.frontText,
            backText: event.backText,
            deckId: event.deckId!,
          ),
        );
      }
      emit(state.copyWith(saveStatus: CreateCardSaveStatus.success));
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
      emit(state.copyWith(saveStatus: CreateCardSaveStatus.error));
    }
  }

  Future<void> _clear(
    CreateCardClear event,
    Emitter<CreateCardState> emit,
  ) async {
    emit(const CreateCardState());
  }
}
