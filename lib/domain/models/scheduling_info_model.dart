import 'package:flanki/domain/constants/card_status.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scheduling_info_model.freezed.dart';

@freezed
class SchedulingInfoModel with _$SchedulingInfoModel {
  const factory SchedulingInfoModel({
    required int interval,
    required int repetitions,
    required double easeFactor,
    required DateTime? ratedAt,
    required DateTime? nextRepetitionAt,
    required CardStatus status,
  }) = _SchedulingInfoModel;
}
