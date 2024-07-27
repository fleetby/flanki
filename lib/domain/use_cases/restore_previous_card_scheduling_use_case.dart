import 'package:flanki/domain/failures/card_not_found_exception.dart';
import 'package:flanki/domain/repositories/cards_repository.dart';
import 'package:flanki/domain/repositories/scheduling_logs_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class RestorePreviousCardSchedulingUseCase {
  const RestorePreviousCardSchedulingUseCase(
    this._schedulingLogsRepository,
    this._cardsRepository,
  );

  final CardsRepository _cardsRepository;
  final SchedulingLogsRepository _schedulingLogsRepository;

  Future<void> call(RestorePreviousCardSchedulingUseCaseParams params) async {
    final card = await _cardsRepository.getCard(cardId: params.cardId);
    if (card == null) {
      throw CardNotFoundException(params.cardId);
    }

    final schedulingLog = await _schedulingLogsRepository
        .getLastSchedulingLogForCard(cardId: params.cardId);

    await _cardsRepository.updateSchedulingInfo(
      cardId: params.cardId,
      schedulingInfo: schedulingLog?.old,
    );

    if (schedulingLog != null) {
      await _schedulingLogsRepository.deleteSchedulingLog(id: schedulingLog.id);
    }
  }
}

class RestorePreviousCardSchedulingUseCaseParams {
  const RestorePreviousCardSchedulingUseCaseParams({required this.cardId});

  final int cardId;
}
