part of 'statistics_bloc.dart';

@freezed
sealed class StatisticsState with _$StatisticsState {
  const factory StatisticsState.initial() = StatisticsInitial;
  const factory StatisticsState.loading() = StatisticsLoading;
  const factory StatisticsState.loaded({
    required CardRatesSummaryModel? cardRatesSummary,
    required CardStatusCountModel? cardStatusCount,
  }) = StatisticsLoaded;
  const factory StatisticsState.error({
    required Object error,
    required StackTrace stackTrace,
  }) = StatisticsError;
}
