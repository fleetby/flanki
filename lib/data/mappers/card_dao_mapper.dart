import 'package:flanki/data/daos/card_dao.dart';
import 'package:flanki/data/mappers/note_dao_mapper.dart';
import 'package:flanki/data/mappers/scheduling_info_dao_mapper.dart';
import 'package:flanki/domain/models/card_model.dart';

extension CardDaoMapper on CardDao {
  CardModel get model => CardModel(
    id: id,
    frontNote: frontNote.model,
    backNote: backNote.model,
    schedulingInfo: schedulingInfo?.model,
  );
}
