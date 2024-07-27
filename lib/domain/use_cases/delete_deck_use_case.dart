import 'package:flanki/domain/repositories/cards_repository.dart';
import 'package:flanki/domain/repositories/decks_repository.dart';
import 'package:flanki/domain/repositories/scheduling_logs_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class DeleteDeckUseCase {
  const DeleteDeckUseCase(
    this._decksRepository,
    this._cardsRepository,
    this._schedulingLogsRepository,
  );

  final DecksRepository _decksRepository;
  final CardsRepository _cardsRepository;
  final SchedulingLogsRepository _schedulingLogsRepository;

  Future<void> call(DeleteDeckUseCaseParams params) async {
    await _schedulingLogsRepository.deleteSchedulingLogs(deckId: params.deckId);
    await _cardsRepository.deleteCards(deckId: params.deckId);
    await _decksRepository.deleteDeck(deckId: params.deckId);
  }
}

class DeleteDeckUseCaseParams {
  const DeleteDeckUseCaseParams({required this.deckId});

  final int deckId;
}
