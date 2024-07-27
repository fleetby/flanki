import 'package:flanki/domain/repositories/cards_repository.dart';
import 'package:flanki/domain/repositories/scheduling_logs_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class DeleteCardUseCase {
  const DeleteCardUseCase(
    this._cardsRepository,
    this._schedulingLogsRepository,
  );

  final CardsRepository _cardsRepository;
  final SchedulingLogsRepository _schedulingLogsRepository;

  Future<void> call(DeleteCardUseCaseParams params) async {
    await _schedulingLogsRepository.deleteSchedulingLogs(cardId: params.cardId);
    await _cardsRepository.deleteCard(cardId: params.cardId);
  }
}

class DeleteCardUseCaseParams {
  const DeleteCardUseCaseParams({required this.cardId});

  final int cardId;
}
