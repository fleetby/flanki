import 'package:flanki/data/daos/deck_dao.dart';
import 'package:flanki/data/daos/note_dao.dart';
import 'package:flanki/data/daos/scheduling_info_dao.dart';
import 'package:isar/isar.dart';

part 'card_dao.g.dart';

@Collection(accessor: 'cards')
class CardDao {
  Id id = Isar.autoIncrement;

  NoteDao frontNote = NoteDao();
  NoteDao backNote = NoteDao();

  SchedulingInfoDao? schedulingInfo;

  final deck = IsarLink<DeckDao>();
}
