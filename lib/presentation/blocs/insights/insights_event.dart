part of 'insights_bloc.dart';

@freezed
sealed class InsightsEvent with _$InsightsEvent {
  const factory InsightsEvent.load() = InsightsLoad;
  const factory InsightsEvent.setDecks({required List<DeckModel> decks}) =
      InsightsSetDecks;
  const factory InsightsEvent.setSelectedDeck({required DeckModel? deck}) =
      InsightsSetSelectedDeck;
}
