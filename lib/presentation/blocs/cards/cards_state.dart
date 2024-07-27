part of 'cards_bloc.dart';

@freezed
sealed class CardsState with _$CardsState {
  const factory CardsState.initial() = CardsInitial;
  const factory CardsState.loading() = CardsLoading;
  const factory CardsState.loaded({
    required int deckId,
    required List<CardModel> cards,
  }) = CardsLoaded;
  const factory CardsState.error() = CardsError;
}
