import 'package:flanki/domain/constants/app_theme.dart';
import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flutter/material.dart';

extension AppThemeX on AppTheme {
  String getLocalizedName(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return switch (this) {
      AppTheme.system => tr.systemTheme,
      AppTheme.light => tr.lightTheme,
      AppTheme.dark => tr.darkTheme,
    };
  }

  ThemeMode get themeMode => switch (this) {
        AppTheme.system => ThemeMode.system,
        AppTheme.light => ThemeMode.light,
        AppTheme.dark => ThemeMode.dark,
      };
}
