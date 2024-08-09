part of 'create_card_bloc.dart';

@freezed
class CreateCardEvent with _$CreateCardEvent {
  const factory CreateCardEvent.load({required int cardId}) = CreateCardLoad;

  const factory CreateCardEvent.save({
    required String frontText,
    required String backText,
    int? deckId,
  }) = CreateCardSave;

  const factory CreateCardEvent.clear() = CreateCardClear;
}
