import 'package:flanki/domain/repositories/settings_repository.dart';
import 'package:injectable/injectable.dart';

@singleton
class GetLocaleChangedStreamUseCase {
  const GetLocaleChangedStreamUseCase(this._settingsRepository);

  final SettingsRepository _settingsRepository;

  Stream<void> call() => _settingsRepository.getLocaleChangedStream();
}
