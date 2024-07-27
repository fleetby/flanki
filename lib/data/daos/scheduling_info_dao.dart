import 'package:flanki/domain/constants/card_status.dart';
import 'package:isar/isar.dart';

part 'scheduling_info_dao.g.dart';

@embedded
class SchedulingInfoDao {
  int interval = -1;
  int repetitions = -1;
  double easeFactor = -1;
  DateTime? ratedAt;
  DateTime? nextRepetitionAt;
  
  @enumerated
  CardStatus status = CardStatus.initial;
}
