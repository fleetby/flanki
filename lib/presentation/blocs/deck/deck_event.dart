part of 'deck_bloc.dart';

@freezed
sealed class DeckEvent with _$DeckEvent {
  const factory DeckEvent.load({required int id}) = DeckLoad;

  const factory DeckEvent.set({required DeckModel? deck}) = DeckSet;

  const factory DeckEvent.edit({required String name}) = DeckEdit;

  const factory DeckEvent.delete() = DeckDelete;

  const factory DeckEvent.resetScheduling() = DeckResetScheduling;

  const factory DeckEvent.setShuffleCards({required bool shuffleCards}) =
      DeckSetShuffleCards;
}
