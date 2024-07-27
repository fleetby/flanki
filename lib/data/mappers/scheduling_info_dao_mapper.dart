import 'package:flanki/data/daos/scheduling_info_dao.dart';
import 'package:flanki/domain/models/scheduling_info_model.dart';

extension SchedulingInfoDaoMapper on SchedulingInfoDao {
  SchedulingInfoModel get model => SchedulingInfoModel(
    interval: interval,
    repetitions: repetitions,
    easeFactor: easeFactor,
    ratedAt: ratedAt,
    nextRepetitionAt: nextRepetitionAt,
    status: status,
  );
}
