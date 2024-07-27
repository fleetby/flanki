import 'package:isar/isar.dart';

part 'note_dao.g.dart';

@embedded
class NoteDao {
  NoteDao({this.text = ''});

  String text = '';  
}
