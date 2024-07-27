import 'dart:async';

import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flanki/domain/models/card_rates_summary_model.dart';
import 'package:flanki/domain/models/card_status_count_model.dart';
import 'package:flanki/domain/use_cases/get_card_rates_summary_stream_use_case.dart';
import 'package:flanki/domain/use_cases/get_card_status_count_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'statistics_bloc.freezed.dart';

part 'statistics_event.dart';
part 'statistics_state.dart';

@injectable
class StatisticsBloc extends Bloc<StatisticsEvent, StatisticsState> {
  StatisticsBloc(
    this._getCardRatesSummaryStreamUseCase,
    this._getCardStatusCountStreamUseCase,
  ) : super(const StatisticsInitial()) {
    on<StatisticsLoad>(_load);
    on<StatisticsUpdate>(_update, transformer: sequential());
  }

  final GetCardRatesSummaryStreamUseCase _getCardRatesSummaryStreamUseCase;
  final GetCardStatusCountStreamUseCase _getCardStatusCountStreamUseCase;

  StreamSubscription<CardRatesSummaryModel>? _cardRatesSummarySubscription;
  StreamSubscription<CardStatusCountModel>? _cardStatusCountSubscription;

  Future<void> _load(
    StatisticsLoad event,
    Emitter<StatisticsState> emit,
  ) async {
    emit(const StatisticsLoading());
    try {
      await _cardRatesSummarySubscription?.cancel();
      await _cardStatusCountSubscription?.cancel();

      _cardRatesSummarySubscription = _getCardRatesSummaryStreamUseCase(
        GetCardRatesSummaryStreamUseCaseParams(
          deckId: event.deckId,
          fireImmediately: true,
        ),
      ).listen(
        (cardRatesSummary) => add(
          StatisticsUpdate(
            cardRatesSummary: cardRatesSummary,
          ),
        ),
      );

      _cardStatusCountSubscription = _getCardStatusCountStreamUseCase(
        GetCardStatusCountStreamUseCaseParams(
          deckId: event.deckId,
          fireImmediately: true,
        ),
      ).listen(
        (cardStatusCount) => add(
          StatisticsUpdate(
            cardStatusCount: cardStatusCount,
          ),
        ),
      );
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
      emit(StatisticsError(error: e, stackTrace: st));
    }
  }

  Future<void> _update(
    StatisticsUpdate event,
    Emitter<StatisticsState> emit,
  ) async {
    final oldState = state.mapOrNull(loaded: (state) => state);
    emit(
      StatisticsLoaded(
        cardRatesSummary: event.cardRatesSummary ?? oldState?.cardRatesSummary,
        cardStatusCount: event.cardStatusCount ?? oldState?.cardStatusCount,
      ),
    );
  }

  @override
  Future<void> close() {
    _cardRatesSummarySubscription?.cancel();
    _cardStatusCountSubscription?.cancel();
    return super.close();
  }
}
