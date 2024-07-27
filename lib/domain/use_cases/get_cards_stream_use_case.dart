import 'package:flanki/domain/models/card_model.dart';
import 'package:flanki/domain/repositories/cards_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetCardsStreamUseCase {
  const GetCardsStreamUseCase(this._cardsRepository);

  final CardsRepository _cardsRepository;

  Stream<List<CardModel>> call(GetCardsStreamUseCaseParams params) =>
      _cardsRepository.getCardsStream(
        deckId: params.deckId,
        cardIds: params.cardIds,
        fireImmediately: params.fireImmediately,
      );
}

class GetCardsStreamUseCaseParams {
  const GetCardsStreamUseCaseParams({
    required this.fireImmediately,
    this.deckId,
    this.cardIds,
  });

  final int? deckId;
  final List<int>? cardIds;
  final bool fireImmediately;
}
