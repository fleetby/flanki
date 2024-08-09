import 'package:flanki/domain/models/card_model.dart';
import 'package:flanki/domain/repositories/cards_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetCardUseCase {
  const GetCardUseCase(this._cardsRepository);

  final CardsRepository _cardsRepository;

  Future<CardModel?> call({required int cardId}) =>
      _cardsRepository.getCard(cardId: cardId);
}
