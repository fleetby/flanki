import 'package:flanki/domain/repositories/settings_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetThemeChangedStreamUseCase {
  const GetThemeChangedStreamUseCase(this._settingsRepository);

  final SettingsRepository _settingsRepository;

  Stream<void> call() => _settingsRepository.getThemeChangedStream();
}
