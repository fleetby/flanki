import 'package:flanki/domain/repositories/decks_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class PinDeckUseCase {
  const PinDeckUseCase(this._decksRepository);

  final DecksRepository _decksRepository;

  Future<void> call(PinDeckUseCaseParams params) =>
      _decksRepository.pinDeck(deckId: params.deckId);
}

class PinDeckUseCaseParams {
  const PinDeckUseCaseParams({required this.deckId});

  final int deckId;
}
