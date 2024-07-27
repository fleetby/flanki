import 'package:flanki/data/daos/note_dao.dart';
import 'package:flanki/domain/models/note_model.dart';

extension NoteDaoMapper on NoteDao {
  NoteModel get model => NoteModel(text: text);
}
