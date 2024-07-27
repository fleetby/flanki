import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flutter/material.dart';

Future<bool> showResetDeckSchedulingDialog(BuildContext context) =>
    showDialog<bool>(
      context: context,
      builder: (context) => const ResetDeckSchedulingDialog(),
    ).then((value) => value ?? false);

class ResetDeckSchedulingDialog extends StatelessWidget {
  const ResetDeckSchedulingDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return AlertDialog(
      title: Text(tr.resetDeckSchedulingDialogTitle),
      content: Text(tr.resetDeckSchedulingDialogContent),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context, false),
          child: Text(tr.cancelAction),
        ),
        TextButton(
          onPressed: () => Navigator.pop(context, true),
          child: Text(tr.resetAction),
        ),
      ],
    );
  }
}
