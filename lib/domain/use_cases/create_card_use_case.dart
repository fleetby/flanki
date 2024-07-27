import 'package:flanki/domain/models/card_model.dart';
import 'package:flanki/domain/repositories/cards_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class CreateCardUseCase {
  const CreateCardUseCase(this._cardsRepository);

  final CardsRepository _cardsRepository;

  Future<CardModel> call(CreateCardUseCaseParams params) async =>
      _cardsRepository.createCard(
        deckId: params.deckId,
        frontText: params.frontText,
        backText: params.backText,
        schedulingInfo: null,
      );
}

class CreateCardUseCaseParams {
  const CreateCardUseCaseParams({
    required this.deckId,
    required this.frontText,
    required this.backText,
  });

  final int deckId;
  final String frontText;
  final String backText;
}
