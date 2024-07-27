part of 'statistics_bloc.dart';

@freezed
sealed class StatisticsEvent with _$StatisticsEvent {
  const factory StatisticsEvent.load({int? deckId}) = StatisticsLoad;
  const factory StatisticsEvent.update({
    CardRatesSummaryModel? cardRatesSummary,
    CardStatusCountModel? cardStatusCount,
  }) = StatisticsUpdate;
}
