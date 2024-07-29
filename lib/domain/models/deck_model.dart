import 'package:flanki/domain/models/card_status_count_model.dart';
import 'package:flanki/domain/models/deck_settings_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'deck_model.freezed.dart';

@freezed
class DeckModel with _$DeckModel {
  const factory DeckModel({
    required int id,
    required String name,
    required DeckSettingsModel settings,
    required bool pinned,
    CardStatusCountModel? cardStatusCount,
  }) = _DeckModel;
}
