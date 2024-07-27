import 'package:flanki/domain/constants/card_rate.dart';
import 'package:flanki/domain/failures/card_not_found_exception.dart';
import 'package:flanki/domain/repositories/cards_repository.dart';
import 'package:flanki/domain/repositories/scheduling_logs_repository.dart';
import 'package:flanki/domain/services/scheduling_service.dart';
import 'package:injectable/injectable.dart';

@singleton
class RateCardUseCase {
  const RateCardUseCase(
    this._cardsRepository,
    this._schedulingService,
    this._schedulingLogsRepository,
  );

  final CardsRepository _cardsRepository;
  final SchedulingService _schedulingService;
  final SchedulingLogsRepository _schedulingLogsRepository;

  Future<void> call(RateCardUseCaseParams params) async {
    final card = await _cardsRepository.getCard(cardId: params.cardId);

    if (card == null) {
      throw CardNotFoundException(params.cardId);
    }

    final ratedAt = DateTime.now();

    final newSchedulingInfo = _schedulingService.schedule(
      oldSchedulingInfo: card.schedulingInfo,
      rate: params.rate,
      ratedAt: ratedAt,
    );

    await _cardsRepository.updateSchedulingInfo(
      cardId: params.cardId,
      schedulingInfo: newSchedulingInfo,
    );

    await _schedulingLogsRepository.createSchedulingLog(
      cardId: card.id,
      old: card.schedulingInfo,
      new_: newSchedulingInfo,
      dateTime: ratedAt,
      rate: params.rate,
    );
  }
}

class RateCardUseCaseParams {
  const RateCardUseCaseParams({required this.cardId, required this.rate});

  final int cardId;
  final CardRate rate;
}
