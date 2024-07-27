part of 'insights_bloc.dart';

@freezed
sealed class InsightsState with _$InsightsState {
  const factory InsightsState.initial() = InsightsInitial;
  const factory InsightsState.loading() = InsightsLoading;
  const factory InsightsState.loaded({
    required List<DeckModel> decks,
    DeckModel? selectedDeck,
  }) = InsightsLoaded;
  const factory InsightsState.error({
    required Object error,
    required StackTrace stackTrace,
  }) = InsightsError;
}
