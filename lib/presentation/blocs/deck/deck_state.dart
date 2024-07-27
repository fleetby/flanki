part of 'deck_bloc.dart';

@freezed
sealed class DeckState with _$DeckState {
  const factory DeckState.initial() = DeckInitial;
  const factory DeckState.loading() = DeckLoading;
  const factory DeckState.loaded({required DeckModel deck}) = DeckLoaded;
  const factory DeckState.error() = DeckError;
  const factory DeckState.deleted() = DeckDeleted;
}
