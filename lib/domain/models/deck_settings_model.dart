import 'package:freezed_annotation/freezed_annotation.dart';

part 'deck_settings_model.freezed.dart';

@freezed
class DeckSettingsModel with _$DeckSettingsModel {
  const factory DeckSettingsModel({required bool shuffleCards}) =
      _DeckSettingsModel;
}
