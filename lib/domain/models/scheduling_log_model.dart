import 'package:flanki/domain/constants/card_rate.dart';
import 'package:flanki/domain/models/scheduling_info_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scheduling_log_model.freezed.dart';

@freezed
class SchedulingLogModel with _$SchedulingLogModel {
  const factory SchedulingLogModel({
    required int id,
    required int cardId,
    required SchedulingInfoModel? old,
    required SchedulingInfoModel? new_,
    required DateTime? dateTime,
    required CardRate? rate,
  }) = _SchedulingLogModel;
}
