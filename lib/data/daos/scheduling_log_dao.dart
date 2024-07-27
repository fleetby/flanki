import 'package:flanki/data/daos/card_dao.dart';
import 'package:flanki/data/daos/scheduling_info_dao.dart';
import 'package:flanki/domain/constants/card_rate.dart';
import 'package:isar/isar.dart';

part 'scheduling_log_dao.g.dart';

@Collection(accessor: 'schedulingLogs')
class SchedulingLogDao {
  Id id = Isar.autoIncrement;

  SchedulingInfoDao? old;
  SchedulingInfoDao? new_;
  DateTime? dateTime;

  @Enumerated(EnumType.name)
  CardRate? rate;

  final card = IsarLink<CardDao>();
}
