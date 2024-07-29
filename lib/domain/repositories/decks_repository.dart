import 'package:flanki/domain/models/deck_model.dart';

abstract interface class DecksRepository {
  Future<DeckModel> createDeck({required String name});

  Stream<List<DeckModel>> getDecksStream({
    required bool fireImmediately,
    bool includeCardStatusCount = false,
  });

  Stream<DeckModel?> getDeckStream({
    required int deckId,
    required bool fireImmediately,
  });

  Future<DeckModel?> getDeck({required int deckId});

  Future<DeckModel> editDeck({
    required int deckId,
    required String name,
  });

  Future<void> deleteDeck({required int deckId});

  Future<void> applyDeckSettings({
    required int deckId,
    bool? shuffleCards,
  });

  Future<void> pinDeck({required int deckId});

  Future<void> unpinDeck({required int deckId});
}
