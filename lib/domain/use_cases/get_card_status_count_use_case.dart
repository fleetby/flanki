import 'package:flanki/domain/models/card_status_count_model.dart';
import 'package:flanki/domain/repositories/cards_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetCardStatusCountStreamUseCase {
  const GetCardStatusCountStreamUseCase(this._cardsRepository);

  final CardsRepository _cardsRepository;

  Stream<CardStatusCountModel> call(
    GetCardStatusCountStreamUseCaseParams params,
  ) =>
      _cardsRepository.getCardStatusCountStream(
        deckId: params.deckId,
        fireImmediately: params.fireImmediately,
      );
}

class GetCardStatusCountStreamUseCaseParams {
  const GetCardStatusCountStreamUseCaseParams({
    required this.fireImmediately,
    this.deckId,
  });

  final int? deckId;
  final bool fireImmediately;
}
