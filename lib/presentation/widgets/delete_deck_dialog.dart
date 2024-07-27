import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flutter/material.dart';

Future<bool> showDeleteDeckDialog(BuildContext context) => showDialog<bool>(
      context: context,
      builder: (context) => const DeleteDeckDialog(),
    ).then((result) => result ?? false);

class DeleteDeckDialog extends StatelessWidget {
  const DeleteDeckDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return AlertDialog(
      title: Text(tr.deleteDeckDialogTitle),
      content: Text(tr.deleteDeckDialogContent),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text(tr.cancelAction),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, true),
          child: Text(tr.deleteAction),
        ),
      ],
    );
  }
}
