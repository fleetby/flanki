import 'package:flanki/data/daos/scheduling_info_dao.dart';
import 'package:flanki/domain/models/scheduling_info_model.dart';

extension SchedulingInfoModelMapper on SchedulingInfoModel {
  SchedulingInfoDao get dao => SchedulingInfoDao()
    ..interval = interval
    ..repetitions = repetitions
    ..easeFactor = easeFactor
    ..ratedAt = ratedAt
    ..nextRepetitionAt = nextRepetitionAt
    ..status = status;
}
