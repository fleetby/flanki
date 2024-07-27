import 'package:flanki/domain/repositories/cards_repository.dart';
import 'package:flanki/domain/repositories/scheduling_logs_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class ResetSchedulingsUseCase {
  const ResetSchedulingsUseCase(
    this._cardsRepository,
    this._schedulingLogsRepository,
  );

  final CardsRepository _cardsRepository;
  final SchedulingLogsRepository _schedulingLogsRepository;

  Future<void> call(ResetSchedulingsUseCaseParams params) async {
    await _schedulingLogsRepository.deleteSchedulingLogs(deckId: params.deckId);
    await _cardsRepository.resetSchedulings(deckId: params.deckId);
  }
}

class ResetSchedulingsUseCaseParams {
  const ResetSchedulingsUseCaseParams({this.deckId});

  final int? deckId;
}
