import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flanki/presentation/validators/cannot_be_blank_or_empty_validator.dart';
import 'package:flutter/material.dart';

class CreateCardDialogResult {
  const CreateCardDialogResult({
    required this.frontText,
    required this.backText,
  });

  final String frontText;
  final String backText;
}

class CreateCardDialogInitialData {
  const CreateCardDialogInitialData({
    required this.frontText,
    required this.backText,
  });

  final String frontText;
  final String backText;
}

Future<CreateCardDialogResult?> showCreateCardDialog(
  BuildContext context, {
  CreateCardDialogInitialData? initialData,
  bool edit = false,
}) =>
    showDialog<CreateCardDialogResult>(
      context: context,
      builder: (context) => CreateCardDialog(
        initialData: initialData,
        edit: edit,
      ),
    );

class CreateCardDialog extends StatefulWidget {
  const CreateCardDialog({
    this.edit = false,
    this.initialData,
    super.key,
  });

  final CreateCardDialogInitialData? initialData;
  final bool edit;

  @override
  State<CreateCardDialog> createState() => _CreateCardDialogState();
}

class _CreateCardDialogState extends State<CreateCardDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _frontTextController;
  late final TextEditingController _backTextController;

  @override
  void initState() {
    super.initState();
    _frontTextController =
        TextEditingController(text: widget.initialData?.frontText);
    _backTextController =
        TextEditingController(text: widget.initialData?.backText);
  }

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return AlertDialog(
      title: Text(
        widget.edit
            ? tr.createCardDialogEditModeTitle
            : tr.createCardDialogTitle,
      ),
      content: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: _frontTextController,
              validator: (value) => cannotBeBlankOrEmptyValidator(
                context,
                value,
              ),
              decoration: InputDecoration(
                hintText: tr.createCardDialogFrontTextFieldHint,
              ),
            ),
            TextFormField(
              controller: _backTextController,
              validator: (value) => cannotBeBlankOrEmptyValidator(
                context,
                value,
              ),
              decoration: InputDecoration(
                hintText: tr.createCardDialogBackTextFieldHint,
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: Text(tr.cancelAction),
        ),
        TextButton(
          onPressed: () {
            if (!_formKey.currentState!.validate()) {
              return;
            }

            Navigator.pop(
              context,
              CreateCardDialogResult(
                frontText: _frontTextController.text,
                backText: _backTextController.text,
              ),
            );
          },
          child: Text(widget.edit ? tr.saveAction : tr.createAction),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _frontTextController.dispose();
    _backTextController.dispose();
    super.dispose();
  }
}
