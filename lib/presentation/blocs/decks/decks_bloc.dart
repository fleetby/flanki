import 'dart:async';

import 'package:flanki/domain/models/deck_model.dart';
import 'package:flanki/domain/use_cases/create_deck_use_case.dart';
import 'package:flanki/domain/use_cases/get_decks_stream_use_case.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'decks_bloc.freezed.dart';

part 'decks_event.dart';
part 'decks_state.dart';

@injectable
class DecksBloc extends Bloc<DecksEvent, DecksState> {
  DecksBloc(
    this._createDeckUseCase,
    this._getDecksStreamUseCase,
  ) : super(const DecksState(loading: true)) {
    on<DecksLoad>(_load);
    on<DecksCreate>(_create);
    on<DecksSet>(_set);
  }

  final CreateDeckUseCase _createDeckUseCase;
  final GetDecksStreamUseCase _getDecksStreamUseCase;

  StreamSubscription<List<DeckModel>>? _decksSubscription;

  Future<void> _load(DecksLoad event, Emitter<DecksState> emit) async {
    try {
      await _decksSubscription?.cancel();
      _decksSubscription = _getDecksStreamUseCase(
        const GetDecksStreamUseCaseParams(fireImmediately: true),
      ).listen((decks) => add(DecksSet(decks: decks)));
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
      emit(DecksState(error: (e, st)));
    }
  }

  Future<void> _create(DecksCreate event, Emitter<DecksState> emit) async {
    try {
      await _createDeckUseCase(CreateDeckUseCaseParams(name: event.name));
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
    }
  }

  Future<void> _set(DecksSet event, Emitter<DecksState> emit) async {
    emit(DecksState(decks: event.decks));
  }

  @override
  Future<void> close() {
    _decksSubscription?.cancel();
    return super.close();
  }
}
