import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_status_count_model.freezed.dart';

@freezed
class CardStatusCountModel with _$CardStatusCountModel {
  const factory CardStatusCountModel({
    required int initialCount,
    required int learningCount,
    required int reviewCount,
  }) = _CardStatusCountModel;
}
