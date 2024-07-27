import 'package:flanki/domain/repositories/settings_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class SetLocaleUseCase {
  const SetLocaleUseCase(this._settingsRepository);

  final SettingsRepository _settingsRepository;

  Future<void> call(SetLocaleUseCaseParams params) =>
      _settingsRepository.setLocale(params.locale);
}

class SetLocaleUseCaseParams {
  const SetLocaleUseCaseParams({this.locale});

  final Locale? locale;
}
