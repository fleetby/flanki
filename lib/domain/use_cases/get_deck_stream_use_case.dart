import 'package:flanki/domain/models/deck_model.dart';
import 'package:flanki/domain/repositories/decks_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetDeckStreamUseCase {
  const GetDeckStreamUseCase(this._decksRepository);

  final DecksRepository _decksRepository;

  Stream<DeckModel?> call(GetDeckStreamUseCaseParams params) =>
      _decksRepository.getDeckStream(
        deckId: params.id,
        fireImmediately: params.fireImmediately,
      );
}

class GetDeckStreamUseCaseParams {
  const GetDeckStreamUseCaseParams({
    required this.id,
    required this.fireImmediately,
  });

  final int id;
  final bool fireImmediately;
}
