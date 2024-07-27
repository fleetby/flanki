import 'package:flanki/domain/constants/card_rate.dart';
import 'package:flanki/domain/models/scheduling_info_model.dart';
import 'package:flanki/domain/models/scheduling_log_model.dart';

abstract interface class SchedulingLogsRepository {
  Stream<List<SchedulingLogModel>> getSchedulingLogsStream({
    bool fireImmediately = false,
    int? deckId,
    DateTime? from,
    DateTime? to,
  });
  Future<SchedulingLogModel> createSchedulingLog({
    required int cardId,
    required SchedulingInfoModel? old,
    required SchedulingInfoModel? new_,
    required DateTime? dateTime,
    required CardRate? rate,
  });
  Future<SchedulingLogModel?> getLastSchedulingLogForCard({
    required int cardId,
  });
  Future<void> deleteSchedulingLog({required int id});
  Future<void> deleteSchedulingLogs({
    int? deckId,
    int? cardId,
  });
}
