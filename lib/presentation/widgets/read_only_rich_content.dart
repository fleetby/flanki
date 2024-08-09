import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';

class ReadOnlyRichContent extends StatefulWidget {
  const ReadOnlyRichContent(this.quillJson, {super.key});

  final String quillJson;

  @override
  State<ReadOnlyRichContent> createState() => _ReadOnlyRichContentState();
}

class _ReadOnlyRichContentState extends State<ReadOnlyRichContent> {
  late Document _document;
  QuillController? _quillController;

  @override
  void initState() {
    super.initState();
    _update();
  }

  @override
  void didUpdateWidget(covariant ReadOnlyRichContent oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.quillJson != oldWidget.quillJson) {
      _update();
    }
  }

  void _update() {
    _document = Document.fromJson(jsonDecode(widget.quillJson) as List);
    _document.format(0, _document.length, const AlignAttribute('center'));
    _quillController?.dispose();
    _quillController = QuillController(
      document: _document,
      selection: const TextSelection.collapsed(offset: 0),
      readOnly: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return QuillEditor.basic(
      controller: _quillController,
      configurations: const QuillEditorConfigurations(
        showCursor: false,
        enableInteractiveSelection: false,
      ),
    );
  }

  @override
  void dispose() {
    _quillController?.dispose();
    super.dispose();
  }
}
