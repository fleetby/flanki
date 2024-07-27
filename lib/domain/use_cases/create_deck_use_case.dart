import 'package:flanki/domain/models/deck_model.dart';
import 'package:flanki/domain/repositories/decks_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class CreateDeckUseCase {
  const CreateDeckUseCase(this._decksRepository);

  final DecksRepository _decksRepository;

  Future<DeckModel?> call(CreateDeckUseCaseParams params) =>
      _decksRepository.createDeck(name: params.name);
}

class CreateDeckUseCaseParams {
  const CreateDeckUseCaseParams({required this.name});

  final String name;
}
