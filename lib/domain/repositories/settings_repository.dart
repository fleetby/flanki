import 'package:flanki/domain/constants/app_theme.dart';
import 'package:flutter/material.dart';

abstract interface class SettingsRepository {
  Future<AppTheme?> getTheme();
  Future<void> setTheme(AppTheme? theme);

  Future<Locale?> getLocale();
  Future<void> setLocale(Locale? locale);

  Stream<void> getThemeChangedStream();
  Stream<void> getLocaleChangedStream();
}
