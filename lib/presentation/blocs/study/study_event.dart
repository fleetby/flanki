part of 'study_bloc.dart';

@freezed
sealed class StudyEvent with _$StudyEvent {
  const factory StudyEvent.load({
    required int deckId,
    @Default(false)
    bool trainingMode,
  }) = StudyLoad;
  const factory StudyEvent.showAnswer() = StudyShowAnswer;
  const factory StudyEvent.rateCard({required CardRate rate}) = StudyRateCard;
  const factory StudyEvent.restorePreviousCard() = StudyRestorePreviousCard;
  const factory StudyEvent.updateCards({required List<CardModel> cards}) =
      StudyUpdateCards;
  const factory StudyEvent.editCard({
    required int cardId,
    required String frontText,
    required String backText,
  }) = StudyEditCard;
}
