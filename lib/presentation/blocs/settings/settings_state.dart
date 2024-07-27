part of 'settings_bloc.dart';

@freezed
sealed class SettingsState with _$SettingsState {
  const factory SettingsState.initial() = SettingsInitial;
  const factory SettingsState.loading() = SettingsLoading;
  const factory SettingsState.loaded({
    required AppTheme preferredTheme,
    required Locale? preferredLocale,
  }) = SettingsLoaded;
  const factory SettingsState.error() = SettingsError;
}
