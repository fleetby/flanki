import 'package:flanki/domain/constants/card_rate.dart';
import 'package:flanki/domain/models/scheduling_info_model.dart';

abstract interface class SchedulingService {
  SchedulingInfoModel get defaultSchedulingInfo;
  SchedulingInfoModel schedule({
    required SchedulingInfoModel? oldSchedulingInfo,
    required CardRate rate,
    required DateTime ratedAt,
  });
}
