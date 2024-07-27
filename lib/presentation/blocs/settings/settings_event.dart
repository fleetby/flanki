part of 'settings_bloc.dart';

@freezed
sealed class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.preload() = SettingsPreload;
  const factory SettingsEvent.themeChanged() = SettingsThemeChanged;
  const factory SettingsEvent.localeChanged() = SettingsLocaleChanged;
  const factory SettingsEvent.setTheme({required AppTheme? theme}) =
      SettingsSetTheme;
  const factory SettingsEvent.setLocale({required Locale? locale}) =
      SettingsSetLocale;
}
