import 'package:flanki/domain/models/card_model.dart';
import 'package:flanki/domain/repositories/cards_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class EditCardUseCase {
  const EditCardUseCase(this._cardsRepository);

  final CardsRepository _cardsRepository;

  Future<CardModel> call(EditCardUseCaseParams params) =>
      _cardsRepository.editCard(
        cardId: params.cardId,
        frontText: params.frontText,
        backText: params.backText,
      );
}

class EditCardUseCaseParams {
  const EditCardUseCaseParams({
    required this.cardId,
    required this.frontText,
    required this.backText,
  });

  final int cardId;
  final String frontText;
  final String backText;
}
