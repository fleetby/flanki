import 'package:flanki/domain/constants/card_rate.dart';
import 'package:flanki/domain/constants/card_status.dart';
import 'package:flanki/domain/models/scheduling_info_model.dart';
import 'package:flanki/domain/services/scheduling_service.dart';
import 'package:injectable/injectable.dart';
import 'package:sm2/sm2.dart';

@Singleton(as: SchedulingService)
class Sm2SchedulingService implements SchedulingService {
  @override
  SchedulingInfoModel get defaultSchedulingInfo => Sm2().toModel(
        ratedAt: null,
        nextRepetitionAt: null,
        status: CardStatus.initial,
      );

  @override
  SchedulingInfoModel schedule({
    required SchedulingInfoModel? oldSchedulingInfo,
    required CardRate rate,
    required DateTime ratedAt,
  }) {
    final state = (oldSchedulingInfo ?? defaultSchedulingInfo).sm2
      ..update(rate.quality);
    final newStatus = switch (rate) {
        CardRate.again => CardStatus.initial,
        CardRate.hard => CardStatus.learning,
        CardRate.good => switch (
              oldSchedulingInfo?.status ?? CardStatus.initial) {
            CardStatus.learning || CardStatus.review => CardStatus.review,
            _ => CardStatus.learning,
          },
      };
    return state.toModel(
      ratedAt: ratedAt,
      nextRepetitionAt: ratedAt.add(Duration(days: state.interval)),
      status: newStatus,
    );
  }
}

extension on Sm2 {
  SchedulingInfoModel toModel({
    required DateTime? ratedAt,
    required DateTime? nextRepetitionAt,
    required CardStatus status,
  }) =>
      SchedulingInfoModel(
        interval: interval,
        repetitions: repetitions,
        easeFactor: easeFactor,
        ratedAt: ratedAt,
        nextRepetitionAt: nextRepetitionAt,
        status: status,
      );
}

extension on SchedulingInfoModel {
  Sm2 get sm2 => Sm2(
        interval: interval,
        repetitions: repetitions,
        easeFactor: easeFactor,
      );
}

extension on CardRate {
  int get quality => switch (this) {
        CardRate.again => 0,
        CardRate.hard => 2,
        CardRate.good => 5,
      };
}
