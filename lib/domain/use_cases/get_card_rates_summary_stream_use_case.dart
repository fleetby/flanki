import 'package:dartx/dartx.dart';
import 'package:flanki/domain/constants/card_rate.dart';
import 'package:flanki/domain/models/card_rates_summary_model.dart';
import 'package:flanki/domain/repositories/scheduling_logs_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetCardRatesSummaryStreamUseCase {
  const GetCardRatesSummaryStreamUseCase(this._schedulingLogsRepository);

  final SchedulingLogsRepository _schedulingLogsRepository;

  Stream<CardRatesSummaryModel> call(
    GetCardRatesSummaryStreamUseCaseParams params,
  ) =>
      _schedulingLogsRepository
          .getSchedulingLogsStream(
            deckId: params.deckId,
            from: params.from,
            to: params.to,
            fireImmediately: params.fireImmediately,
          )
          .map((logs) => logs.map((log) => log.rate))
          .map((rates) => rates.groupBy((rate) => rate))
          .map(
            (groups) => CardRatesSummaryModel(
              againCount: groups[CardRate.again]?.length ?? 0,
              hardCount: groups[CardRate.hard]?.length ?? 0,
              goodCount: groups[CardRate.good]?.length ?? 0,
            ),
          );
}

class GetCardRatesSummaryStreamUseCaseParams {
  const GetCardRatesSummaryStreamUseCaseParams({
    this.fireImmediately = false,
    this.from,
    this.to,
    this.deckId,
  });

  final bool fireImmediately;
  final DateTime? from;
  final DateTime? to;
  final int? deckId;
}
