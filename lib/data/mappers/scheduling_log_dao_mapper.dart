import 'package:flanki/data/daos/scheduling_log_dao.dart';
import 'package:flanki/data/mappers/scheduling_info_dao_mapper.dart';
import 'package:flanki/domain/models/scheduling_log_model.dart';

extension SchedulingLogDaoMapper on SchedulingLogDao {
  Future<SchedulingLogModel> get model async {
    await card.load();
    return SchedulingLogModel(
      id: id,
      cardId: card.value!.id,
      old: old?.model,
      new_: new_?.model,
      dateTime: dateTime,
      rate: rate,
    );
  }
}
