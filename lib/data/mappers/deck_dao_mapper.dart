import 'package:flanki/data/daos/deck_dao.dart';
import 'package:flanki/data/mappers/deck_settings_dao_mapper.dart';
import 'package:flanki/domain/models/card_status_count_model.dart';
import 'package:flanki/domain/models/deck_model.dart';

extension DeckDaoMapper on DeckDao {
  DeckModel toModel({CardStatusCountModel? cardStatusCount}) => DeckModel(
        id: id,
        name: name,
        settings: settings.model,
        pinned: pinned,
        cardStatusCount: cardStatusCount,
      );
}
