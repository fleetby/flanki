import 'package:flutter/material.dart';

extension ThemeDataX on ThemeData {
  Color get againRateContainer => colorScheme.tertiaryContainer;
  Color get onAgainRateContainer => colorScheme.onTertiaryContainer;
  Color get hardRateContainer => colorScheme.errorContainer;
  Color get onHardRateContainer => colorScheme.onErrorContainer; 
  Color get goodRateContainer => colorScheme.primaryContainer;
  Color get onGoodRateContainer => colorScheme.onPrimaryContainer;
}
