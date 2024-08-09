import 'dart:convert';

import 'package:flanki/domain/models/card_model.dart';
import 'package:flanki/domain/models/scheduling_info_model.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_item_vm.freezed.dart';

@freezed
class CardItemVm with _$CardItemVm {
  const factory CardItemVm({
    required int id,
    required String frontPlainText,
    required String backPlainText,
    required SchedulingInfoModel? schedulingInfo,
  }) = _CardItemVm;

  factory CardItemVm.fromModel(CardModel model) {
    final frontPlainText = _quillPlainText(model.frontNote.text).trim();
    final backPlainText = _quillPlainText(model.backNote.text).trim();
    return CardItemVm(
      id: model.id,
      frontPlainText: frontPlainText,
      backPlainText: backPlainText,
      schedulingInfo: model.schedulingInfo,
    );
  }
}

String _quillPlainText(String quillJson) {
  final document = Document.fromJson(jsonDecode(quillJson) as List);
  return document.getPlainText(0, document.length);
}
