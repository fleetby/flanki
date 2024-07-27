import 'package:flanki/data/daos/deck_dao.dart';
import 'package:flanki/data/mappers/deck_dao_mapper.dart';
import 'package:flanki/domain/failures/deck_not_found_exception.dart';
import 'package:flanki/domain/models/deck_model.dart';
import 'package:flanki/domain/repositories/decks_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@Singleton(as: DecksRepository)
class DecksRepositoryImpl implements DecksRepository {
  DecksRepositoryImpl(this._isar);

  final Isar _isar;

  @override
  Future<DeckModel> createDeck({required String name}) async {
    final deckDao = DeckDao(name: name);
    await _isar.writeTxn(() => _isar.decks.put(deckDao));
    return deckDao.model;
  }

  @override
  Stream<List<DeckModel>> getDecksStream({required bool fireImmediately}) =>
      _isar.decks
          .where(sort: Sort.desc)
          .anyId()
          .watch(fireImmediately: fireImmediately)
          .map((daos) => daos.map((dao) => dao.model).toList());

  @override
  Future<DeckModel?> getDeck({required int deckId}) =>
      _isar.decks.get(deckId).then((dao) => dao?.model);

  @override
  Stream<DeckModel?> getDeckStream({
    required int deckId,
    required bool fireImmediately,
  }) =>
      _isar.decks
          .watchObject(deckId, fireImmediately: fireImmediately)
          .map((dao) => dao?.model);

  @override
  Future<DeckModel> editDeck({
    required int deckId,
    required String name,
  }) async {
    final deck = await _isar.decks.get(deckId);
    if (deck == null) {
      throw DeckNotFoundException(deckId);
    }

    deck.name = name;

    await _isar.writeTxn(() => _isar.decks.put(deck));
    return deck.model;
  }

  @override
  Future<void> deleteDeck({required int deckId}) =>
      _isar.writeTxn(() => _isar.decks.delete(deckId));

  @override
  Future<void> applyDeckSettings({
    required int deckId,
    bool? shuffleCards,
  }) async {
    final deck = await _isar.decks.get(deckId);
    if (deck == null) {
      throw DeckNotFoundException(deckId);
    }

    if (shuffleCards != null) {
      deck.settings.shuffleCards = shuffleCards;
    }

    await _isar.writeTxn(() => _isar.decks.put(deck));
  }
}
