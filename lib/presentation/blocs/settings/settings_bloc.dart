import 'dart:async';

import 'package:flanki/domain/constants/app_theme.dart';
import 'package:flanki/domain/use_cases/get_locale_changed_stream_use_case.dart';
import 'package:flanki/domain/use_cases/get_locale_use_case.dart';
import 'package:flanki/domain/use_cases/get_theme_changed_stream_use_case.dart';
import 'package:flanki/domain/use_cases/get_theme_use_case.dart';
import 'package:flanki/domain/use_cases/set_locale_use_case.dart';
import 'package:flanki/domain/use_cases/set_theme_use_case.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'settings_bloc.freezed.dart';

part 'settings_event.dart';
part 'settings_state.dart';

@injectable
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc(
    this._getThemeUseCase,
    this._getLocaleUseCase,
    this._getThemeChangedStreamUseCase,
    this._getLocaleChangedStreamUseCase,
    this._setThemeUseCase,
    this._setLocaleUseCase,
  ) : super(const SettingsInitial()) {
    on<SettingsPreload>(_preload);
    on<SettingsThemeChanged>(_themeChanged);
    on<SettingsLocaleChanged>(_localeChanged);
    on<SettingsSetTheme>(_setTheme);
    on<SettingsSetLocale>(_setLocale);
  }

  static const _defaultTheme = AppTheme.system;

  final GetThemeUseCase _getThemeUseCase;
  final GetLocaleUseCase _getLocaleUseCase;
  final GetThemeChangedStreamUseCase _getThemeChangedStreamUseCase;
  final GetLocaleChangedStreamUseCase _getLocaleChangedStreamUseCase;
  final SetThemeUseCase _setThemeUseCase;
  final SetLocaleUseCase _setLocaleUseCase;

  StreamSubscription<void>? _themeChangedSubscription;
  StreamSubscription<void>? _localeChangedSubscription;

  Future<void> _preload(
    SettingsPreload event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      final theme = await _getThemeUseCase();
      final locale = await _getLocaleUseCase();

      await _themeChangedSubscription?.cancel();
      await _localeChangedSubscription?.cancel();

      _themeChangedSubscription = _getThemeChangedStreamUseCase()
          .listen((event) => add(const SettingsThemeChanged()));
      _localeChangedSubscription = _getLocaleChangedStreamUseCase()
          .listen((event) => add(const SettingsLocaleChanged()));

      emit(
        SettingsLoaded(
          preferredTheme: theme ?? _defaultTheme,
          preferredLocale: locale,
        ),
      );
    } catch (e, st) {
      // Continue with default values
      debugPrintStack(stackTrace: st);
      emit(
        const SettingsLoaded(
          preferredTheme: _defaultTheme,
          preferredLocale: null,
        ),
      );
    }
  }

  Future<void> _themeChanged(
    SettingsThemeChanged event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      final theme = await _getThemeUseCase();
      emit(
        SettingsLoaded(
          preferredTheme: theme ?? _defaultTheme,
          preferredLocale: state.mapOrNull(
            loaded: (loaded) => loaded.preferredLocale,
          ),
        ),
      );
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
    }
  }

  Future<void> _localeChanged(
    SettingsLocaleChanged event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      final locale = await _getLocaleUseCase();
      emit(
        SettingsLoaded(
          preferredTheme:
              state.mapOrNull(loaded: (loaded) => loaded.preferredTheme) ??
                  _defaultTheme,
          preferredLocale: locale,
        ),
      );
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
    }
  }

  Future<void> _setTheme(
    SettingsSetTheme event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      await _setThemeUseCase(SetThemeUseCaseParams(theme: event.theme));
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
    }
  }

  Future<void> _setLocale(
    SettingsSetLocale event,
    Emitter<SettingsState> emit,
  ) async {
    try {
      await _setLocaleUseCase(SetLocaleUseCaseParams(locale: event.locale));
    } catch (e, st) {
      debugPrintStack(stackTrace: st);
    }
  }

  @override
  Future<void> close() {
    _themeChangedSubscription?.cancel();
    _localeChangedSubscription?.cancel();
    return super.close();
  }
}
