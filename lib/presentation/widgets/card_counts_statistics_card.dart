import 'package:fl_chart/fl_chart.dart';
import 'package:flanki/domain/constants/card_status.dart';
import 'package:flanki/domain/models/card_status_count_model.dart';
import 'package:flanki/presentation/extensions/card_status_x.dart';
import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flanki/presentation/widgets/statistics_card_base.dart';
import 'package:flanki/presentation/widgets/statistics_indicator.dart';
import 'package:flutter/material.dart';

class CardCountsStatisticsCard extends StatelessWidget {
  const CardCountsStatisticsCard({
    required this.cardStatusCount,
    super.key,
  });

  final CardStatusCountModel? cardStatusCount;

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    final total = (cardStatusCount?.initial ?? 0) +
        (cardStatusCount?.learning ?? 0) +
        (cardStatusCount?.review ?? 0);
    final noData = cardStatusCount == null || total == 0;
    return StatisticsCardBase(
      title: Text(tr.cardCountsLabel),
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          height: 250,
          child: noData
              ? Center(child: Text(tr.noDataLabel))
              : PieChart(
                  PieChartData(
                    centerSpaceRadius: 0,
                    sections: [
                      _getSectionData(
                        context,
                        CardStatus.initial,
                        cardStatusCount!.initial,
                        cardStatusCount!.initial / total,
                      ),
                      _getSectionData(
                        context,
                        CardStatus.learning,
                        cardStatusCount!.learning,
                        cardStatusCount!.learning / total,
                      ),
                      _getSectionData(
                        context,
                        CardStatus.review,
                        cardStatusCount!.review,
                        cardStatusCount!.review / total,
                      ),
                    ],
                  ),
                ),
        ),
        if (!noData) ...[
          const SizedBox(height: 8),
          StatisticsIndicator(
            color: CardStatus.initial.getColor(context),
            title: CardStatus.initial.getLocalizedName(context),
            value: '${cardStatusCount!.initial}',
          ),
          StatisticsIndicator(
            color: CardStatus.learning.getColor(context),
            title: CardStatus.learning.getLocalizedName(context),
            value: '${cardStatusCount!.learning}',
          ),
          StatisticsIndicator(
            color: CardStatus.review.getColor(context),
            title: CardStatus.review.getLocalizedName(context),
            value: '${cardStatusCount!.review}',
          ),
        ],
      ],
    );
  }

  PieChartSectionData _getSectionData(
    BuildContext context,
    CardStatus status,
    int count,
    double percentOfTotal,
  ) {
    final theme = Theme.of(context);
    return PieChartSectionData(
      radius: 110,
      title: '${(percentOfTotal * 100).toStringAsFixed(1)}%',
      value: count.toDouble(),
      color: status.getColor(context),
      titleStyle: theme.textTheme.titleSmall!.copyWith(
        color:
            theme.brightness == Brightness.dark ? Colors.white : Colors.black,
      ),
    );
  }
}
