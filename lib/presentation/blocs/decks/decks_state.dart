part of 'decks_bloc.dart';

@freezed
sealed class DecksState with _$DecksState {
  const factory DecksState({
    @Default([])
    List<DeckModel> decks,
    (Object, StackTrace)? error,
    @Default(false)
    bool loading,
  }) = _DecksState;
}
