import 'package:flanki/domain/constants/app_theme.dart';
import 'package:flanki/domain/repositories/settings_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetThemeUseCase {
  const GetThemeUseCase(this._settingsRepository);

  final SettingsRepository _settingsRepository;

  Future<AppTheme?> call() => _settingsRepository.getTheme();
}
