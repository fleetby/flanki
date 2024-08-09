import 'dart:convert';
import 'dart:io';

import 'package:auto_route/auto_route.dart';
import 'package:flanki/presentation/blocs/create_card/create_card_bloc.dart';
import 'package:flanki/presentation/constants/constants.dart';
import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:flutter_quill/quill_delta.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class CreateCardBody extends StatefulWidget {
  const CreateCardBody({
    this.deckId,
    this.editMode = false,
    super.key,
  });

  final int? deckId;
  final bool editMode;

  @override
  State<CreateCardBody> createState() => _CreateCardBodyState();
}

class _CreateCardBodyState extends State<CreateCardBody> {
  final _frontSideController = QuillController.basic();
  final _backSideController = QuillController.basic();

  final _frontSideFocusNode = FocusNode();
  final _backSideFocusNode = FocusNode();

  late QuillController _activeController;

  var _closeAfterSave = true;

  @override
  void initState() {
    super.initState();
    _activeController = _frontSideController;
    _frontSideFocusNode.addListener(() {
      if (_frontSideFocusNode.hasFocus) {
        _updateActiveEditor(_frontSideController);
      }
    });

    _backSideFocusNode.addListener(() {
      if (_backSideFocusNode.hasFocus) {
        _updateActiveEditor(_backSideController);
      }
    });

    _frontSideController.onSelectionChanged = (selection) {
      if (!selection.isCollapsed) {
        _updateActiveEditor(_frontSideController);
      }
    };

    _backSideController.onSelectionChanged = (selection) {
      if (!selection.isCollapsed) {
        _updateActiveEditor(_backSideController);
      }
    };
  }

  void _updateActiveEditor(QuillController quillController) {
    if (_activeController == quillController) return;
    _activeController = quillController;
    setState(() {});

    final toUnselect = _activeController == _frontSideController
        ? _backSideController
        : _frontSideController;

    // ignore: cascade_invocations
    if (!toUnselect.selection.isCollapsed) {
      toUnselect.updateSelection(
        const TextSelection.collapsed(offset: 0),
        ChangeSource.local,
      );
    }

    toUnselect.editorFocusNode!.unfocus();
    _activeController.editorFocusNode!.requestFocus();

  }

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return MultiBlocListener(
      listeners: [
        BlocListener<CreateCardBloc, CreateCardState>(
          listenWhen: (previous, current) => previous.card != current.card,
          listener: (context, state) {
            if (state.card != null) {
              _frontSideController.setContents(
                Delta.fromJson(jsonDecode(state.card!.frontNote.text) as List),
              );
              _backSideController.setContents(
                Delta.fromJson(jsonDecode(state.card!.backNote.text) as List),
              );
            }
          },
        ),
        BlocListener<CreateCardBloc, CreateCardState>(
          listenWhen: (previous, current) =>
              previous.saveStatus != current.saveStatus ||
              previous.loadStatus != current.loadStatus,
          listener: (context, state) {
            if (state.saveStatus == CreateCardSaveStatus.success) {
              if (_closeAfterSave) {
                context.maybePop();
              } else {
                _frontSideController.clear();
                _backSideController.clear();
                context
                    .read<CreateCardBloc>()
                    .add(const CreateCardEvent.clear());
              }
            }

            final loading = state.saveStatus == CreateCardSaveStatus.loading ||
                state.loadStatus == CreateCardLoadStatus.loading;
            _frontSideController.readOnly = loading;
            _backSideController.readOnly = loading;
          },
        ),
      ],
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            widget.editMode ? tr.createCardEditModeTitle : tr.createCardTitle,
          ),
          actions: [
            IconButton(
              constraints: actionConstraints,
              onPressed: () => context.read<CreateCardBloc>().add(
                    CreateCardEvent.save(
                      deckId: widget.deckId,
                      frontText: jsonEncode(
                        _frontSideController.document.toDelta().toJson(),
                      ),
                      backText: jsonEncode(
                        _backSideController.document.toDelta().toJson(),
                      ),
                    ),
                  ),
              icon: const Icon(PhosphorIconsRegular.check),
            ),
          ],
          bottom: PreferredSize(
            preferredSize:
                const Size.fromHeight(kLinearProgressIndicatorHeight),
            child: BlocSelector<CreateCardBloc, CreateCardState, bool>(
              selector: (state) =>
                  state.saveStatus == CreateCardSaveStatus.loading,
              builder: (context, loading) {
                return loading
                    ? const LinearProgressIndicator()
                    : const SizedBox.shrink();
              },
            ),
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            _Editor(
              controller: _frontSideController,
              labelText: tr.createCardBackTextFieldHint,
              focusNode: _frontSideFocusNode,
              showCursor: _activeController == _frontSideController,
              onTapDown: () {
                if (!_backSideController.selection.isCollapsed) {
                  _backSideController.updateSelection(
                    const TextSelection.collapsed(offset: 0),
                    ChangeSource.silent,
                  );
                }
              },
            ),
            const SizedBox(height: 16),
            _Editor(
              controller: _backSideController,
              labelText: tr.createCardFrontTextFieldHint,
              focusNode: _backSideFocusNode,
              showCursor: _activeController == _backSideController,
              onTapDown: () {
                if (!_frontSideController.selection.isCollapsed) {
                  _frontSideController.updateSelection(
                    const TextSelection.collapsed(offset: 0),
                    ChangeSource.silent,
                  );
                }
              },
            ),
            if (!widget.editMode) ...[
              const SizedBox(height: 24),
              const Divider(height: 0),
              const SizedBox(height: 4),
              CheckboxListTile(
                title: Text(tr.createCardCloseAfterSaveOption),
                value: _closeAfterSave,
                onChanged: (newValue) {
                  setState(() {
                    _closeAfterSave = newValue!;
                  });
                },
              ),
            ],
          ],
        ),
        bottomNavigationBar: QuillSimpleToolbar(
          controller: _activeController,
          configurations: QuillSimpleToolbarConfigurations(
            multiRowsDisplay:
                Platform.isWindows || Platform.isMacOS || Platform.isLinux,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _frontSideController.dispose();
    _backSideController.dispose();
    _frontSideFocusNode.dispose();
    _backSideFocusNode.dispose();
    super.dispose();
  }
}

class _Editor extends StatelessWidget {
  const _Editor({
    required this.controller,
    required this.labelText,
    required this.onTapDown,
    required this.showCursor,
    this.focusNode,
  });

  final QuillController controller;
  final String labelText;
  final FocusNode? focusNode;
  final VoidCallback onTapDown;
  final bool showCursor;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(labelText, style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(height: 8),
        InputDecorator(
          decoration: const InputDecoration(
            border: OutlineInputBorder(),
            contentPadding: EdgeInsets.zero,
          ),
          child: QuillEditor.basic(
            focusNode: focusNode,
            controller: controller,
            configurations: QuillEditorConfigurations(
              showCursor: showCursor,
              padding: const EdgeInsets.all(16),
              onTapDown: (details, p1) {
                onTapDown();
                return true;
              },
              onTapOutside: (event, focusNode) {
                focusNode.unfocus();
              },
            ),
          ),
        ),
      ],
    );
  }
}
