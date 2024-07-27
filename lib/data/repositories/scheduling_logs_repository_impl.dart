import 'package:flanki/data/daos/card_dao.dart';
import 'package:flanki/data/daos/deck_dao.dart';
import 'package:flanki/data/daos/scheduling_log_dao.dart';
import 'package:flanki/data/mappers/scheduling_info_model_mapper.dart';
import 'package:flanki/data/mappers/scheduling_log_dao_mapper.dart';
import 'package:flanki/domain/constants/card_rate.dart';
import 'package:flanki/domain/failures/card_not_found_exception.dart';
import 'package:flanki/domain/models/scheduling_info_model.dart';
import 'package:flanki/domain/models/scheduling_log_model.dart';
import 'package:flanki/domain/repositories/scheduling_logs_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:isar/isar.dart';

@Singleton(as: SchedulingLogsRepository)
class SchedulingLogsRepositoryImpl implements SchedulingLogsRepository {
  const SchedulingLogsRepositoryImpl(this._isar);

  final Isar _isar;

  @override
  Stream<List<SchedulingLogModel>> getSchedulingLogsStream({
    bool fireImmediately = false,
    int? deckId,
    DateTime? from,
    DateTime? to,
  }) =>
      _isar.schedulingLogs
          .filter()
          .optional(
            deckId != null,
            (q) => q.card((q) => q.deck((q) => q.idEqualTo(deckId!))),
          )
          .optional(
            from != null,
            (q) => q.dateTimeGreaterThan(from, include: true),
          )
          .optional(to != null, (q) => q.dateTimeLessThan(to, include: true))
          .watch(fireImmediately: fireImmediately)
          .asyncMap((logs) async => [for (final log in logs) await log.model]);

  @override
  Future<SchedulingLogModel> createSchedulingLog({
    required int cardId,
    required SchedulingInfoModel? old,
    required SchedulingInfoModel? new_,
    required DateTime? dateTime,
    required CardRate? rate,
  }) async {
    final card = await _isar.cards.get(cardId);
    if (card == null) {
      throw CardNotFoundException(cardId);
    }

    final log = SchedulingLogDao()
      ..card.value = card
      ..old = old?.dao
      ..new_ = new_?.dao
      ..dateTime = dateTime
      ..rate = rate;

    await _isar.writeTxn(() async {
      await _isar.schedulingLogs.put(log);
      await log.card.save();
    });

    return log.model;
  }

  /// Important note:
  ///
  /// This method get the last scheduling log for the given card.
  /// But it sorts the logs by ID in descending order.
  /// NOT by dateTime!
  @override
  Future<SchedulingLogModel?> getLastSchedulingLogForCard({
    required int cardId,
  }) =>
      _isar.schedulingLogs
          .where(sort: Sort.desc)
          .anyId()
          .filter()
          .card((q) => q.idEqualTo(cardId))
          .findFirst()
          .then((dao) => dao?.model);

  @override
  Future<void> deleteSchedulingLog({required int id}) =>
      _isar.writeTxn(() => _isar.schedulingLogs.delete(id));

  @override
  Future<void> deleteSchedulingLogs({int? deckId, int? cardId}) =>
      _isar.writeTxn(
        () => _isar.schedulingLogs
            .filter()
            .optional(
              deckId != null,
              (q) => q.card((q) => q.deck((q) => q.idEqualTo(deckId!))),
            )
            .optional(
              cardId != null,
              (q) => q.card((q) => q.idEqualTo(cardId!)),
            )
            .deleteAll(),
      );
}
