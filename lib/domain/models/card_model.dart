
import 'package:flanki/domain/models/note_model.dart';
import 'package:flanki/domain/models/scheduling_info_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_model.freezed.dart';

@freezed
class CardModel with _$CardModel {
  const factory CardModel({
    required int id,
    required NoteModel frontNote,
    required NoteModel backNote,
    required SchedulingInfoModel? schedulingInfo,
  }) = _CardModel;
}
