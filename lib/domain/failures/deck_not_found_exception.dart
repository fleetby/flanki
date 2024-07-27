class DeckNotFoundException implements Exception {
  const DeckNotFoundException(this.deckId);

  final int deckId;
}
