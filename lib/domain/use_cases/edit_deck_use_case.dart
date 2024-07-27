import 'package:flanki/domain/models/deck_model.dart';
import 'package:flanki/domain/repositories/decks_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class EditDeckUseCase {
  const EditDeckUseCase(this._decksRepository);

  final DecksRepository _decksRepository;

  Future<DeckModel> call(EditDeckUseCaseParams params) =>
      _decksRepository.editDeck(
        deckId: params.deckId,
        name: params.name,
      );
}

class EditDeckUseCaseParams {
  const EditDeckUseCaseParams({required this.deckId, required this.name});

  final int deckId;
  final String name;
}
