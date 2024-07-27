import 'package:flanki/domain/repositories/decks_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class ApplyDeckSettingsUseCase {
  const ApplyDeckSettingsUseCase(this._decksRepository);

  final DecksRepository _decksRepository;

  Future<void> call(ApplyDeckSettingsUseCaseParams params) =>
      _decksRepository.applyDeckSettings(
        deckId: params.deckId,
        shuffleCards: params.shuffleCards,
      );
}

class ApplyDeckSettingsUseCaseParams {
  const ApplyDeckSettingsUseCaseParams({
    required this.deckId,
    this.shuffleCards,
  });

  final int deckId;
  final bool? shuffleCards;
}
