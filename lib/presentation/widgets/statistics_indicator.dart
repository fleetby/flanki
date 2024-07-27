import 'package:flutter/material.dart';

class StatisticsIndicator extends StatelessWidget {
  const StatisticsIndicator({
    required this.color,
    required this.title,
    required this.value,
    super.key,
  });

  final Color color;
  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Row(
      children: [
        Container(
          constraints: BoxConstraints.tight(const Size.square(16)),
          decoration: BoxDecoration(
            color: color,
            border: Border.all(),
          ),
        ),
        const SizedBox(width: 8),
        Text(title, style: theme.textTheme.titleSmall),
        const Spacer(),
        const SizedBox(width: 8),
        Text(value, style: theme.textTheme.titleSmall),
      ],
    );
  }
}
