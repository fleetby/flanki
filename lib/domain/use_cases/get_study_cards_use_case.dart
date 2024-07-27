import 'package:flanki/domain/failures/deck_not_found_exception.dart';
import 'package:flanki/domain/models/card_model.dart';
import 'package:flanki/domain/repositories/cards_repository.dart';
import 'package:flanki/domain/repositories/decks_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetStudyCardsUseCase {
  GetStudyCardsUseCase(this._decksRepository, this._cardsRepository);

  final DecksRepository _decksRepository;
  final CardsRepository _cardsRepository;

  Future<List<CardModel>> call(GetStudyCardsUseCaseParams params) async {
    final deck = await _decksRepository.getDeck(deckId: params.deckId);
    if (deck == null) {
      throw DeckNotFoundException(params.deckId);
    }

    final cards = await _cardsRepository.getCards(
      deckId: params.deckId,
      onlyNeedsRepetition: !params.ignoreNeedsRepetition,
    );

    if (deck.settings.shuffleCards) {
      cards.shuffle();
    }

    return cards;
  }
}

class GetStudyCardsUseCaseParams {
  GetStudyCardsUseCaseParams({
    required this.deckId,
    this.ignoreNeedsRepetition = false,
  });

  final int deckId;
  final bool ignoreNeedsRepetition;
}
