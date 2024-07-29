import 'package:flanki/domain/models/deck_model.dart';
import 'package:flanki/domain/repositories/decks_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetDecksStreamUseCase {
  const GetDecksStreamUseCase(this._decksRepository);

  final DecksRepository _decksRepository;

  Stream<List<DeckModel>> call(GetDecksStreamUseCaseParams params) =>
      _decksRepository.getDecksStream(
        fireImmediately: params.fireImmediately,
        includeCardStatusCount: params.includeCardStatusCount,
      );
}

class GetDecksStreamUseCaseParams {
  const GetDecksStreamUseCaseParams({
    this.fireImmediately = false,
    this.includeCardStatusCount = false,
  });

  final bool fireImmediately;
  final bool includeCardStatusCount;
}
