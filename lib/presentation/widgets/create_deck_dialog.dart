import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flanki/presentation/validators/cannot_be_blank_or_empty_validator.dart';
import 'package:flutter/material.dart';

class CreateDeckDialogResult {
  const CreateDeckDialogResult({required this.name});

  final String name;
}

class CreateDeckDialogInitialData {
  const CreateDeckDialogInitialData({required this.name});

  final String name;
}

Future<CreateDeckDialogResult?> showCreateDeckDialog(
  BuildContext context, {
  CreateDeckDialogInitialData? initialData,
  bool edit = false,
}) async =>
    showDialog<CreateDeckDialogResult>(
      context: context,
      builder: (context) => CreateDeckDialog(
        initialData: initialData,
        edit: edit,
      ),
    );

class CreateDeckDialog extends StatefulWidget {
  const CreateDeckDialog({
    this.edit = false,
    this.initialData,
    super.key,
  });

  final CreateDeckDialogInitialData? initialData;
  final bool edit;

  @override
  State<CreateDeckDialog> createState() => _CreateDeckDialogState();
}

class _CreateDeckDialogState extends State<CreateDeckDialog> {
  final _formKey = GlobalKey<FormState>();
  late final TextEditingController _nameController;

  @override
  void initState() {
    super.initState();
    _nameController = TextEditingController(text: widget.initialData?.name);
  }

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return AlertDialog(
      title: Text(
        widget.edit
            ? tr.createDeckDialogEditModeTitle
            : tr.createDeckDialogTitle,
      ),
      content: Form(
        key: _formKey,
        child: TextFormField(
          controller: _nameController,
          validator: (value) => cannotBeBlankOrEmptyValidator(context, value),
          decoration: InputDecoration(
            hintText: tr.createDeckDialogNameFieldHint,
          ),
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
              CreateDeckDialogResult(name: _nameController.text),
            );
          },
          child: Text(widget.edit ? tr.saveAction : tr.createAction),
        ),
      ],
    );
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }
}
