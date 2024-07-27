part of 'cards_bloc.dart';

@freezed
sealed class CardsEvent with _$CardsEvent {
  const factory CardsEvent.load({required int deckId}) = CardsLoad;
  const factory CardsEvent.create({
    required String frontText,
    required String backText,
  }) = CardsCreate;

  const factory CardsEvent.set({
    required int deckId,
    required List<CardModel> cards,
  }) = CardsSet;

  const factory CardsEvent.edit({
    required int cardId,
    required String frontText,
    required String backText,
  }) = CardsEdit;

  const factory CardsEvent.delete({required int cardId}) = CardsDelete;
}
