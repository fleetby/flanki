import 'package:flanki/domain/constants/card_status.dart';
import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flutter/material.dart';

extension CardStatusX on CardStatus {
  String getLocalizedName(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return switch (this) {
      CardStatus.initial => tr.cardStatusInitial,
      CardStatus.learning => tr.cardStatusLearning,
      CardStatus.review => tr.cardStatusReview,
    };
  }

  Color getColor(BuildContext context) {
    final isDarkTheme = Theme.of(context).brightness == Brightness.dark;
    return switch (this) {
      CardStatus.initial =>
        isDarkTheme ? const Color(0xFF214876) : const Color(0xFFd4e3ff),
      CardStatus.learning =>
        isDarkTheme ? const Color(0xFF693c00) : const Color(0xFFffdcbe),
      CardStatus.review =>
        isDarkTheme ? const Color(0xFF235024) : const Color(0xFFbcf0b4),
    };
  }
}
