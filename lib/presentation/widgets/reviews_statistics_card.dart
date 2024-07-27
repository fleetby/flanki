import 'package:fl_chart/fl_chart.dart';
import 'package:flanki/domain/constants/card_rate.dart';
import 'package:flanki/domain/models/card_rates_summary_model.dart';
import 'package:flanki/presentation/extensions/card_rate_x.dart';
import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flanki/presentation/widgets/statistics_card_base.dart';
import 'package:flanki/presentation/widgets/statistics_indicator.dart';
import 'package:flutter/material.dart';

class ReviewsStatisticsCard extends StatelessWidget {
  const ReviewsStatisticsCard({
    required this.cardRatesSummary,
    super.key,
  });

  final CardRatesSummaryModel? cardRatesSummary;

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    final againCount = cardRatesSummary?.againCount ?? 0;
    final hardCount = cardRatesSummary?.hardCount ?? 0;
    final goodCount = cardRatesSummary?.goodCount ?? 0;
    final total = againCount + hardCount + goodCount;
    final noData = cardRatesSummary == null || total == 0;
    return StatisticsCardBase(
      title: Text(tr.insightsReviewsSection),
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
                        CardRate.again,
                        againCount,
                        againCount / total,
                      ),
                      _getSectionData(
                        context,
                        CardRate.hard,
                        hardCount,
                        hardCount / total,
                      ),
                      _getSectionData(
                        context,
                        CardRate.good,
                        goodCount,
                        goodCount / total,
                      ),
                    ],
                  ),
                ),
        ),
        if (!noData) ...[
          const SizedBox(height: 8),
          StatisticsIndicator(
            color: CardRate.again.getColor(context),
            title: CardRate.again.getLocalizedName(context),
            value: againCount.toString(),
          ),
          StatisticsIndicator(
            color: CardRate.hard.getColor(context),
            title: CardRate.hard.getLocalizedName(context),
            value: hardCount.toString(),
          ),
          StatisticsIndicator(
            color: CardRate.good.getColor(context),
            title: CardRate.good.getLocalizedName(context),
            value: goodCount.toString(),
          ),
        ],
      ],
    );
  }

  PieChartSectionData _getSectionData(
    BuildContext context,
    CardRate rate,
    int count,
    double percentOfTotal,
  ) {
    final theme = Theme.of(context);
    return PieChartSectionData(
      radius: 110,
      title: '${(percentOfTotal * 100).toStringAsFixed(1)}%',
      value: count.toDouble(),
      color: rate.getColor(context),
      titleStyle: theme.textTheme.titleSmall!.copyWith(
        color:
            theme.brightness == Brightness.dark ? Colors.white : Colors.black,
      ),
    );
  }
}
