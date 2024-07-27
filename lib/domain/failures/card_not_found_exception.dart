class CardNotFoundException implements Exception {
  const CardNotFoundException(this.cardId);

  final int cardId;
}
