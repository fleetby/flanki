import 'package:flanki/domain/repositories/settings_repository.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetLocaleUseCase {
  const GetLocaleUseCase(this._settingsRepository);

  final SettingsRepository _settingsRepository;

  Future<Locale?> call() => _settingsRepository.getLocale();
}
