import 'package:flanki/domain/repositories/decks_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class UnpinDeckUseCase {
  const UnpinDeckUseCase(this._decksRepository);

  final DecksRepository _decksRepository;

  Future<void> call(UnpinDeckUseCaseParams params) =>
      _decksRepository.unpinDeck(deckId: params.deckId);
}

class UnpinDeckUseCaseParams {
  const UnpinDeckUseCaseParams({required this.deckId});

  final int deckId;
}
