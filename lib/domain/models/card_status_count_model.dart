import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_status_count_model.freezed.dart';

@freezed
class CardStatusCountModel with _$CardStatusCountModel {
  const factory CardStatusCountModel({
    required int initial,
    required int learning,
    required int review,
    required int total,
  }) = _CardStatusCountModel;
}
