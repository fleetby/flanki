import 'package:flanki/domain/constants/card_rate.dart';
import 'package:flanki/presentation/extensions/theme_data_x.dart';
import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flutter/material.dart';

extension CardRateX on CardRate {
  Color getColor(BuildContext context) {
    final theme = Theme.of(context);
    return switch (this) {
      CardRate.again => theme.againRateContainer,
      CardRate.hard => theme.hardRateContainer,
      CardRate.good => theme.goodRateContainer,
    };
  }

  String getLocalizedName(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return switch (this) {
      CardRate.again => tr.rateAgain,
      CardRate.hard => tr.rateHard,
      CardRate.good => tr.rateGood,
    };
  }
}
