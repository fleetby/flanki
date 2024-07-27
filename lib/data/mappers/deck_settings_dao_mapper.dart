import 'package:flanki/data/daos/deck_settings_dao.dart';
import 'package:flanki/domain/models/deck_settings_model.dart';

extension DeckSettingsDaoMapper on DeckSettingsDao {
  DeckSettingsModel get model => DeckSettingsModel(shuffleCards: shuffleCards);
}
