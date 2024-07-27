part of 'study_bloc.dart';

@freezed
sealed class StudyState with _$StudyState {
  const factory StudyState.initial() = StudyInitial;
  const factory StudyState.loading() = StudyLoading;
  const factory StudyState.ongoing({
    required int deckId,
    required List<CardModel> cards,
    required bool trainingMode,
    @Default(0) int currentCardIndex,
    @Default(false) bool showAnswer,
    @Default(0) int againCount,
    @Default(0) int hardCount,
    @Default(0) int goodCount,
  }) = StudyOngoing;
  const factory StudyState.finished({
    required int deckId,
    @Default({})
    Map<CardRate, int> rates,
    DateTime? nextRepetitionDate,
  }) = StudyFinished;
  const factory StudyState.error(Object error, StackTrace stackTrace) =
      StudyError;
}

extension StudyOngoingX on StudyOngoing {
  CardModel? get currentCard => cards.elementAtOrNull(currentCardIndex);
}
