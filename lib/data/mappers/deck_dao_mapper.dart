import 'package:flanki/data/daos/deck_dao.dart';
import 'package:flanki/data/mappers/deck_settings_dao_mapper.dart';
import 'package:flanki/domain/models/deck_model.dart';

extension DeckDaoMapper on DeckDao {
  DeckModel get model => DeckModel(
        id: id,
        name: name,
        settings: settings.model,
      );
}
