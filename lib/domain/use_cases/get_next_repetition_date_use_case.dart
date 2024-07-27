import 'package:flanki/domain/repositories/cards_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetNextRepetitionDateUseCase {
  GetNextRepetitionDateUseCase(this._cardsRepository);

  final CardsRepository _cardsRepository;

  Future<DateTime?> call(GetNextRepetitionDateUseCaseParams params) =>
      _cardsRepository.getNextRepetitionDate(deckId: params.deckId);
}

class GetNextRepetitionDateUseCaseParams {
  const GetNextRepetitionDateUseCaseParams({this.deckId});

  final int? deckId;
}
