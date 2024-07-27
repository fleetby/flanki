import 'package:flanki/domain/models/card_model.dart';
import 'package:flanki/domain/models/card_status_count_model.dart';
import 'package:flanki/domain/models/scheduling_info_model.dart';

abstract interface class CardsRepository {
  Future<CardModel> createCard({
    required int deckId,
    required String frontText,
    required String backText,
    required SchedulingInfoModel? schedulingInfo,
  });

  Stream<List<CardModel>> getCardsStream({
    required int? deckId,
    required List<int>? cardIds,
    required bool fireImmediately,
  });

  Future<List<CardModel>> getCards({
    required int deckId,
    bool onlyNeedsRepetition,
  });

  Future<CardModel?> getCard({required int cardId});

  Future<CardModel> editCard({
    required int cardId,
    required String frontText,
    required String backText,
  });

  Future<CardModel> updateSchedulingInfo({
    required int cardId,
    required SchedulingInfoModel? schedulingInfo,
  });

  Future<void> deleteCard({required int cardId});

  Future<void> deleteCards({required int? deckId});

  Future<void> resetSchedulings({required int? deckId});

  Future<DateTime?> getNextRepetitionDate({int? deckId});

  Stream<CardStatusCountModel> getCardStatusCountStream({
    int? deckId,
    bool fireImmediately = false,
  });
}
