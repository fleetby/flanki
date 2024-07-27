import 'dart:async';
import 'dart:ui';

import 'package:dartx/dartx.dart';
import 'package:flanki/domain/constants/app_theme.dart';
import 'package:flanki/domain/repositories/settings_repository.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

@Singleton(as: SettingsRepository)
class SettingsRepositoryImpl implements SettingsRepository {
  SettingsRepositoryImpl(this._sharedPreferences);

  static const _themeKey = 'theme';
  static const _localeKey = 'locale';

  final SharedPreferences _sharedPreferences;

  final _themeChangedStreamController = StreamController<void>.broadcast();
  final _localeChangedStreamController = StreamController<void>.broadcast();

  @override
  Future<Locale?> getLocale() async {
    final languageCode = _sharedPreferences.getString(_localeKey);
    if (languageCode == null) {
      return null;
    }

    return Locale(languageCode);
  }

  @override
  Future<AppTheme?> getTheme() async => AppTheme.values.firstOrNullWhere(
        (e) => e.name == _sharedPreferences.getString(_themeKey),
      );

  @override
  Future<void> setLocale(Locale? locale) async {
    if (locale != null) {
      await _sharedPreferences.setString(_localeKey, locale.languageCode);
    } else {
      await _sharedPreferences.remove(_localeKey);
    }
    _localeChangedStreamController.add(null);
  }

  @override
  Future<void> setTheme(AppTheme? theme) async {
    if (theme != null) {
      await _sharedPreferences.setString(_themeKey, theme.name);
    } else {
      await _sharedPreferences.remove(_themeKey);
    }
    _themeChangedStreamController.add(null);
  }

  @override
  Stream<void> getThemeChangedStream() =>
      _themeChangedStreamController.stream;

  @override
  Stream<void> getLocaleChangedStream() =>
      _localeChangedStreamController.stream;
}
