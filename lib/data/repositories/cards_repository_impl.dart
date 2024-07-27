import 'package:dartx/dartx.dart';
import 'package:flanki/data/daos/card_dao.dart';
import 'package:flanki/data/daos/deck_dao.dart';
import 'package:flanki/data/daos/note_dao.dart';
import 'package:flanki/data/daos/scheduling_info_dao.dart';
import 'package:flanki/data/mappers/card_dao_mapper.dart';
import 'package:flanki/data/mappers/scheduling_info_model_mapper.dart';
import 'package:flanki/domain/constants/card_status.dart';
import 'package:flanki/domain/failures/card_not_found_exception.dart';
import 'package:flanki/domain/failures/deck_not_found_exception.dart';
import 'package:flanki/domain/models/card_model.dart';
import 'package:flanki/domain/models/card_status_count_model.dart';
import 'package:flanki/domain/models/scheduling_info_model.dart';
import 'package:flanki/domain/repositories/cards_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@Singleton(as: CardsRepository)
class CardsRepositoryImpl implements CardsRepository {
  const CardsRepositoryImpl(this._isar);

  final Isar _isar;

  @override
  Future<CardModel> createCard({
    required int deckId,
    required String frontText,
    required String backText,
    required SchedulingInfoModel? schedulingInfo,
  }) async {
    final deck = await _isar.decks.get(deckId);

    if (deck == null) {
      throw DeckNotFoundException(deckId);
    }

    final frontNote = NoteDao(text: frontText);
    final backNote = NoteDao(text: backText);

    final card = CardDao()
      ..frontNote = frontNote
      ..backNote = backNote
      ..schedulingInfo = schedulingInfo?.dao;

    await _isar.writeTxn(() async {
      card.deck.value = deck;
      await _isar.cards.put(card);
      await card.deck.save();
    });
    return card.model;
  }

  @override
  Stream<List<CardModel>> getCardsStream({
    required int? deckId,
    required List<int>? cardIds,
    required bool fireImmediately,
  }) =>
      _isar.cards
          .where(sort: Sort.desc)
          .anyId()
          .filter()
          .optional(deckId != null, (q) => q.deck((q) => q.idEqualTo(deckId!)))
          .optional(
            cardIds != null,
            (q) => q.anyOf<int, CardDao>(cardIds!, (q, id) => q.idEqualTo(id)),
          )
          .watch(fireImmediately: fireImmediately)
          .map(
            (daos) => daos.map((dao) => dao.model).toList(),
          );

  @override
  Future<List<CardModel>> getCards({
    required int deckId,
    bool onlyNeedsRepetition = false,
  }) async {
    return _isar.cards
        .where(sort: Sort.desc)
        .anyId()
        .filter()
        .deck((q) => q.idEqualTo(deckId))
        .optional(
          onlyNeedsRepetition,
          (card) => card.schedulingInfoIsNull().or().schedulingInfo(
                (info) => info
                    .nextRepetitionAtIsNull()
                    .or()
                    .nextRepetitionAtLessThan(DateTime.now(), include: true),
              ),
        )
        .findAll()
        .then((daos) => daos.map((dao) => dao.model).toList());
  }

  @override
  Future<CardModel> editCard({
    required int cardId,
    required String frontText,
    required String backText,
  }) async {
    final card = await _isar.cards.get(cardId);
    if (card == null) {
      throw CardNotFoundException(cardId);
    }

    card.frontNote.text = frontText;
    card.backNote.text = backText;

    await _isar.writeTxn(() => _isar.cards.put(card));
    return card.model;
  }

  @override
  Future<void> deleteCard({required int cardId}) =>
      _isar.writeTxn(() => _isar.cards.delete(cardId));

  @override
  Future<CardModel?> getCard({required int cardId}) =>
      _isar.cards.get(cardId).then((dao) => dao?.model);

  @override
  Future<CardModel> updateSchedulingInfo({
    required int cardId,
    required SchedulingInfoModel? schedulingInfo,
  }) async {
    final card = await _isar.cards.get(cardId);

    if (card == null) {
      throw CardNotFoundException(cardId);
    }

    card.schedulingInfo = schedulingInfo?.dao;
    await _isar.writeTxn(() => _isar.cards.put(card));

    return card.model;
  }

  @override
  Future<void> resetSchedulings({required int? deckId}) async {
    final cards = await _isar.cards
        .filter()
        .optional(deckId != null, (q) => q.deck((q) => q.idEqualTo(deckId!)))
        .findAll();

    for (final card in cards) {
      card.schedulingInfo = null;
    }

    await _isar.writeTxn(() => _isar.cards.putAll(cards));
  }

  @override
  Future<void> deleteCards({required int? deckId}) => _isar.writeTxn(
        () => _isar.cards
            .filter()
            .optional(
              deckId != null,
              (q) => q.deck((q) => q.idEqualTo(deckId!)),
            )
            .deleteAll(),
      );

  @override
  Future<DateTime?> getNextRepetitionDate({
    int? deckId,
  }) =>
      _isar.cards
          .filter()
          .optional(deckId != null, (q) => q.deck((q) => q.idEqualTo(deckId!)))
          .schedulingInfo((q) => q.nextRepetitionAtIsNotNull())
          .schedulingInfoProperty()
          .findAll()
          .then(
            (infos) => infos.nonNulls
                .minBy((info) => info.nextRepetitionAt!)!
                .nextRepetitionAt,
          );

  @override
  Stream<CardStatusCountModel> getCardStatusCountStream({
    int? deckId,
    bool fireImmediately = false,
  }) =>
      _isar.cards
          .filter()
          .optional(deckId != null, (q) => q.deck((q) => q.idEqualTo(deckId!)))
          .schedulingInfoProperty()
          .watch(fireImmediately: fireImmediately)
          .map(
            (infos) =>
                infos.groupBy((info) => info?.status ?? CardStatus.initial),
          )
          .map(
            (groups) => CardStatusCountModel(
              initialCount: groups[CardStatus.initial]?.length ?? 0,
              learningCount: groups[CardStatus.learning]?.length ?? 0,
              reviewCount: groups[CardStatus.review]?.length ?? 0,
            ),
          );
}
