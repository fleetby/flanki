part of 'decks_bloc.dart';

@freezed
sealed class DecksEvent with _$DecksEvent {
  const factory DecksEvent.load() = DecksLoad;
  const factory DecksEvent.set({required List<DeckModel> decks}) = DecksSet;
  const factory DecksEvent.create({required String name}) = DecksCreate;
}
