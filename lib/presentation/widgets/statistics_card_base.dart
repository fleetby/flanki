import 'package:flutter/material.dart';

class StatisticsCardBase extends StatelessWidget {
  const StatisticsCardBase({
    required this.title,
    required this.children,
    super.key,
  });

  final Widget title;
  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Card.outlined(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DefaultTextStyle(
              style: theme.textTheme.titleLarge!,
              textAlign: TextAlign.center,
              child: title,
            ),
            const SizedBox(height: 8),
            ...children,
          ],
        ),
      ),
    );
  }
}
