import 'dart:async';

import 'package:dartx/dartx.dart';
import 'package:flanki/domain/models/deck_model.dart';
import 'package:flanki/domain/use_cases/get_decks_stream_use_case.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'insights_bloc.freezed.dart';

part 'insights_event.dart';
part 'insights_state.dart';

@injectable
class InsightsBloc extends Bloc<InsightsEvent, InsightsState> {
  InsightsBloc(this._getDecksStreamUseCase) : super(const InsightsInitial()) {
    on<InsightsLoad>(_load);
    on<InsightsSetDecks>(_setDecks);
    on<InsightsSetSelectedDeck>(_setSelectedDeck);
  }

  final GetDecksStreamUseCase _getDecksStreamUseCase;

  StreamSubscription<List<DeckModel>>? _decksSubscription;

  Future<void> _load(InsightsLoad event, Emitter<InsightsState> emit) async {
    try {
      await _decksSubscription?.cancel();
      _decksSubscription = _getDecksStreamUseCase(
        const GetDecksStreamUseCaseParams(fireImmediately: true),
      ).listen((decks) => add(InsightsSetDecks(decks: decks)));
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
    }
  }

  Future<void> _setDecks(
    InsightsSetDecks event,
    Emitter<InsightsState> emit,
  ) async {
    final oldState = state.mapOrNull(loaded: (state) => state);
    emit(
      InsightsLoaded(
        decks: event.decks,
        selectedDeck: event.decks
            .firstOrNullWhere((e) => e.id == oldState?.selectedDeck?.id),
      ),
    );
  }

  Future<void> _setSelectedDeck(
    InsightsSetSelectedDeck event,
    Emitter<InsightsState> emit,
  ) async {
    assert(
      this.state is InsightsLoaded,
      'Cannot set selected deck when not loaded',
    );
    final state = this.state as InsightsLoaded;

    emit(state.copyWith(selectedDeck: event.deck));
  }

  @override
  Future<void> close() {
    _decksSubscription?.cancel();
    return super.close();
  }
}
