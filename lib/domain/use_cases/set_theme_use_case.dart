import 'package:flanki/domain/constants/app_theme.dart';
import 'package:flanki/domain/repositories/settings_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class SetThemeUseCase {
  const SetThemeUseCase(this._settingsRepository);

  final SettingsRepository _settingsRepository;

  Future<void> call(SetThemeUseCaseParams params) =>
      _settingsRepository.setTheme(params.theme);
}

class SetThemeUseCaseParams {
  const SetThemeUseCaseParams({required this.theme});

  final AppTheme? theme;
}
