import 'dart:async';

import 'package:flanki/data/daos/card_dao.dart';
import 'package:flanki/data/daos/deck_dao.dart';
import 'package:flanki/data/mappers/deck_dao_mapper.dart';
import 'package:flanki/domain/constants/card_status.dart';
import 'package:flanki/domain/failures/deck_not_found_exception.dart';
import 'package:flanki/domain/models/card_status_count_model.dart';
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
    return deckDao.toModel();
  }

  @override
  Stream<List<DeckModel>> getDecksStream({
    required bool fireImmediately,
    bool includeCardStatusCount = false,
  }) {
    final controller = StreamController<List<DeckModel>>();

    Stream<List<DeckModel>> getStream() => _isar.decks
            .where(sort: Sort.desc)
            .anyId()
            .sortByPinnedDesc()
            .watch(fireImmediately: fireImmediately)
            .asyncMap((decks) async {
          final models = <DeckModel>[];

          for (final deck in decks) {
            CardStatusCountModel? cardStatusCount;
            if (includeCardStatusCount) {
              cardStatusCount = await _isar.cards
                  .filter()
                  .deck((q) => q.idEqualTo(deck.id))
                  .schedulingInfoProperty()
                  .findAll()
                  .then(
                    (infos) =>
                        infos.map((info) => info?.status ?? CardStatus.initial),
                  )
                  .then(
                (statuses) {
                  var initial = 0;
                  var learning = 0;
                  var review = 0;
                  var total = 0;

                  for (final status in statuses) {
                    switch (status) {
                      case CardStatus.initial:
                        initial++;
                      case CardStatus.learning:
                        learning++;
                      case CardStatus.review:
                        review++;
                    }
                    total++;
                  }

                  return CardStatusCountModel(
                    initial: initial,
                    learning: learning,
                    review: review,
                    total: total,
                  );
                },
              );
            }
            models.add(deck.toModel(cardStatusCount: cardStatusCount));
          }
          return models;
        });

    if (!includeCardStatusCount) {
      controller.addStream(getStream());
    } else {
      StreamSubscription<List<DeckModel>>? subscription;
      _isar.cards.watchLazy(fireImmediately: true).listen((_) {
        subscription?.cancel();
        subscription = getStream().listen(controller.add);
      });
    }

    return controller.stream;
  }

  @override
  Future<DeckModel?> getDeck({required int deckId}) =>
      _isar.decks.get(deckId).then((dao) => dao?.toModel());

  @override
  Stream<DeckModel?> getDeckStream({
    required int deckId,
    required bool fireImmediately,
  }) =>
      _isar.decks
          .watchObject(deckId, fireImmediately: fireImmediately)
          .map((dao) => dao?.toModel());

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
    return deck.toModel();
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

  @override
  Future<void> pinDeck({required int deckId}) async {
    final deck = await _isar.decks.get(deckId);
    if (deck == null) {
      throw DeckNotFoundException(deckId);
    }

    deck.pinned = true;

    await _isar.writeTxn(() => _isar.decks.put(deck));
  }

  @override
  Future<void> unpinDeck({required int deckId}) async {
    final deck = await _isar.decks.get(deckId);
    if (deck == null) {
      throw DeckNotFoundException(deckId);
    }

    deck.pinned = false;

    await _isar.writeTxn(() => _isar.decks.put(deck));
  }
}
