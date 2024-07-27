import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_rates_summary_model.freezed.dart';

@freezed
class CardRatesSummaryModel with _$CardRatesSummaryModel {
  const factory CardRatesSummaryModel({
    required int againCount,
    required int hardCount,
    required int goodCount,
  }) = _CardRatesSummaryModel;
}
