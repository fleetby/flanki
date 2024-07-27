import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flutter/material.dart';

Future<void> showCardDetailsDialog(
  BuildContext context, {
  required int? interval,
  required int? repetitions,
  required double? easeFactor,
  required DateTime? ratedAt,
  required DateTime? nextRepetitionAt,
}) =>
    showDialog<void>(
      context: context,
      builder: (context) => CardDetailsDialog(
        interval: interval,
        repetitions: repetitions,
        easeFactor: easeFactor,
        ratedAt: ratedAt,
        nextRepetitionAt: nextRepetitionAt,
      ),
    );

class CardDetailsDialog extends StatelessWidget {
  const CardDetailsDialog({
    required this.interval,
    required this.repetitions,
    required this.easeFactor,
    required this.ratedAt,
    required this.nextRepetitionAt,
    super.key,
  });

  final int? interval;
  final int? repetitions;
  final double? easeFactor;
  final DateTime? ratedAt;
  final DateTime? nextRepetitionAt;

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return AlertDialog(
      title: Text(tr.cardDetailsDialogTitle),
      content: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            '${tr.cardDetailsIntervalLabel}: '
            '$interval',
          ),
          Text(
            '${tr.cardDetailsRepetitionsLabel}: '
            '$repetitions',
          ),
          Text(
            '${tr.cardDetailsEaseFactorLabel}: '
            '$easeFactor',
          ),
          Text(
            '${tr.cardDetailsRatedAtLabel}: '
            '$ratedAt',
          ),
          Text(
            '${tr.cardDetailsNextRepetitionAtLabel}: '
            '$nextRepetitionAt',
          ),
        ],
      ),
    );
  }
}
