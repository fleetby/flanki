// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:flanki/data/modules/isar_module.dart' as _i917;
import 'package:flanki/data/modules/shared_preferences_module.dart' as _i589;
import 'package:flanki/data/repositories/cards_repository_impl.dart' as _i891;
import 'package:flanki/data/repositories/decks_repository_impl.dart' as _i259;
import 'package:flanki/data/repositories/scheduling_logs_repository_impl.dart'
    as _i922;
import 'package:flanki/data/repositories/settings_repository_impl.dart'
    as _i392;
import 'package:flanki/data/services/sm2_scheduling_service.dart' as _i766;
import 'package:flanki/domain/repositories/cards_repository.dart' as _i620;
import 'package:flanki/domain/repositories/decks_repository.dart' as _i906;
import 'package:flanki/domain/repositories/scheduling_logs_repository.dart'
    as _i212;
import 'package:flanki/domain/repositories/settings_repository.dart' as _i367;
import 'package:flanki/domain/services/scheduling_service.dart' as _i727;
import 'package:flanki/domain/use_cases/apply_deck_settings_use_case.dart'
    as _i953;
import 'package:flanki/domain/use_cases/create_card_use_case.dart' as _i332;
import 'package:flanki/domain/use_cases/create_deck_use_case.dart' as _i178;
import 'package:flanki/domain/use_cases/delete_card_use_case.dart' as _i141;
import 'package:flanki/domain/use_cases/delete_deck_use_case.dart' as _i764;
import 'package:flanki/domain/use_cases/edit_card_use_case.dart' as _i406;
import 'package:flanki/domain/use_cases/edit_deck_use_case.dart' as _i134;
import 'package:flanki/domain/use_cases/get_card_rates_summary_stream_use_case.dart'
    as _i628;
import 'package:flanki/domain/use_cases/get_card_status_count_use_case.dart'
    as _i450;
import 'package:flanki/domain/use_cases/get_card_use_case.dart' as _i335;
import 'package:flanki/domain/use_cases/get_cards_stream_use_case.dart'
    as _i1033;
import 'package:flanki/domain/use_cases/get_deck_stream_use_case.dart' as _i776;
import 'package:flanki/domain/use_cases/get_decks_stream_use_case.dart'
    as _i388;
import 'package:flanki/domain/use_cases/get_locale_changed_stream_use_case.dart'
    as _i195;
import 'package:flanki/domain/use_cases/get_locale_use_case.dart' as _i882;
import 'package:flanki/domain/use_cases/get_next_repetition_date_use_case.dart'
    as _i575;
import 'package:flanki/domain/use_cases/get_study_cards_use_case.dart' as _i171;
import 'package:flanki/domain/use_cases/get_theme_changed_stream_use_case.dart'
    as _i758;
import 'package:flanki/domain/use_cases/get_theme_use_case.dart' as _i698;
import 'package:flanki/domain/use_cases/pin_deck_use_case.dart' as _i622;
import 'package:flanki/domain/use_cases/rate_card_use_case.dart' as _i404;
import 'package:flanki/domain/use_cases/reset_schedulings_use_case.dart'
    as _i373;
import 'package:flanki/domain/use_cases/restore_previous_card_scheduling_use_case.dart'
    as _i233;
import 'package:flanki/domain/use_cases/set_locale_use_case.dart' as _i25;
import 'package:flanki/domain/use_cases/set_theme_use_case.dart' as _i542;
import 'package:flanki/domain/use_cases/unpin_deck_use_case.dart' as _i175;
import 'package:flanki/presentation/app_router.dart' as _i296;
import 'package:flanki/presentation/blocs/cards/cards_bloc.dart' as _i553;
import 'package:flanki/presentation/blocs/create_card/create_card_bloc.dart'
    as _i861;
import 'package:flanki/presentation/blocs/deck/deck_bloc.dart' as _i1055;
import 'package:flanki/presentation/blocs/decks/decks_bloc.dart' as _i649;
import 'package:flanki/presentation/blocs/insights/insights_bloc.dart' as _i146;
import 'package:flanki/presentation/blocs/settings/settings_bloc.dart' as _i507;
import 'package:flanki/presentation/blocs/statistics/statistics_bloc.dart'
    as _i1010;
import 'package:flanki/presentation/blocs/study/study_bloc.dart' as _i102;
import 'package:get_it/get_it.dart' as _i174;
import 'package:injectable/injectable.dart' as _i526;
import 'package:isar/isar.dart' as _i338;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

extension GetItInjectableX on _i174.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  Future<_i174.GetIt> init({
    String? environment,
    _i526.EnvironmentFilter? environmentFilter,
  }) async {
    final gh = _i526.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final isarModule = _$IsarModule();
    final sharedPreferencesModule = _$SharedPreferencesModule();
    await gh.factoryAsync<_i338.Isar>(
      () => isarModule.isar,
      preResolve: true,
    );
    await gh.factoryAsync<_i460.SharedPreferences>(
      () => sharedPreferencesModule.sharedPreferences,
      preResolve: true,
    );
    gh.singleton<_i296.AppRouter>(() => _i296.AppRouter());
    gh.singleton<_i620.CardsRepository>(
        () => _i891.CardsRepositoryImpl(gh<_i338.Isar>()));
    gh.singleton<_i367.SettingsRepository>(
        () => _i392.SettingsRepositoryImpl(gh<_i460.SharedPreferences>()));
    gh.singleton<_i212.SchedulingLogsRepository>(
        () => _i922.SchedulingLogsRepositoryImpl(gh<_i338.Isar>()));
    gh.singleton<_i906.DecksRepository>(
        () => _i259.DecksRepositoryImpl(gh<_i338.Isar>()));
    gh.singleton<_i628.GetCardRatesSummaryStreamUseCase>(() =>
        _i628.GetCardRatesSummaryStreamUseCase(
            gh<_i212.SchedulingLogsRepository>()));
    gh.singleton<_i332.CreateCardUseCase>(
        () => _i332.CreateCardUseCase(gh<_i620.CardsRepository>()));
    gh.singleton<_i406.EditCardUseCase>(
        () => _i406.EditCardUseCase(gh<_i620.CardsRepository>()));
    gh.singleton<_i1033.GetCardsStreamUseCase>(
        () => _i1033.GetCardsStreamUseCase(gh<_i620.CardsRepository>()));
    gh.singleton<_i450.GetCardStatusCountStreamUseCase>(() =>
        _i450.GetCardStatusCountStreamUseCase(gh<_i620.CardsRepository>()));
    gh.singleton<_i575.GetNextRepetitionDateUseCase>(
        () => _i575.GetNextRepetitionDateUseCase(gh<_i620.CardsRepository>()));
    gh.singleton<_i335.GetCardUseCase>(
        () => _i335.GetCardUseCase(gh<_i620.CardsRepository>()));
    gh.singleton<_i233.RestorePreviousCardSchedulingUseCase>(
        () => _i233.RestorePreviousCardSchedulingUseCase(
              gh<_i212.SchedulingLogsRepository>(),
              gh<_i620.CardsRepository>(),
            ));
    gh.singleton<_i727.SchedulingService>(() => _i766.Sm2SchedulingService());
    gh.singleton<_i141.DeleteCardUseCase>(() => _i141.DeleteCardUseCase(
          gh<_i620.CardsRepository>(),
          gh<_i212.SchedulingLogsRepository>(),
        ));
    gh.singleton<_i373.ResetSchedulingsUseCase>(
        () => _i373.ResetSchedulingsUseCase(
              gh<_i620.CardsRepository>(),
              gh<_i212.SchedulingLogsRepository>(),
            ));
    gh.singleton<_i171.GetStudyCardsUseCase>(() => _i171.GetStudyCardsUseCase(
          gh<_i906.DecksRepository>(),
          gh<_i620.CardsRepository>(),
        ));
    gh.singleton<_i953.ApplyDeckSettingsUseCase>(
        () => _i953.ApplyDeckSettingsUseCase(gh<_i906.DecksRepository>()));
    gh.singleton<_i178.CreateDeckUseCase>(
        () => _i178.CreateDeckUseCase(gh<_i906.DecksRepository>()));
    gh.singleton<_i134.EditDeckUseCase>(
        () => _i134.EditDeckUseCase(gh<_i906.DecksRepository>()));
    gh.singleton<_i388.GetDecksStreamUseCase>(
        () => _i388.GetDecksStreamUseCase(gh<_i906.DecksRepository>()));
    gh.singleton<_i776.GetDeckStreamUseCase>(
        () => _i776.GetDeckStreamUseCase(gh<_i906.DecksRepository>()));
    gh.singleton<_i622.PinDeckUseCase>(
        () => _i622.PinDeckUseCase(gh<_i906.DecksRepository>()));
    gh.singleton<_i175.UnpinDeckUseCase>(
        () => _i175.UnpinDeckUseCase(gh<_i906.DecksRepository>()));
    gh.singleton<_i764.DeleteDeckUseCase>(() => _i764.DeleteDeckUseCase(
          gh<_i906.DecksRepository>(),
          gh<_i620.CardsRepository>(),
          gh<_i212.SchedulingLogsRepository>(),
        ));
    gh.factory<_i1010.StatisticsBloc>(() => _i1010.StatisticsBloc(
          gh<_i628.GetCardRatesSummaryStreamUseCase>(),
          gh<_i450.GetCardStatusCountStreamUseCase>(),
        ));
    gh.singleton<_i195.GetLocaleChangedStreamUseCase>(() =>
        _i195.GetLocaleChangedStreamUseCase(gh<_i367.SettingsRepository>()));
    gh.singleton<_i882.GetLocaleUseCase>(
        () => _i882.GetLocaleUseCase(gh<_i367.SettingsRepository>()));
    gh.singleton<_i758.GetThemeChangedStreamUseCase>(() =>
        _i758.GetThemeChangedStreamUseCase(gh<_i367.SettingsRepository>()));
    gh.singleton<_i698.GetThemeUseCase>(
        () => _i698.GetThemeUseCase(gh<_i367.SettingsRepository>()));
    gh.singleton<_i25.SetLocaleUseCase>(
        () => _i25.SetLocaleUseCase(gh<_i367.SettingsRepository>()));
    gh.singleton<_i542.SetThemeUseCase>(
        () => _i542.SetThemeUseCase(gh<_i367.SettingsRepository>()));
    gh.factory<_i553.CardsBloc>(() => _i553.CardsBloc(
          gh<_i1033.GetCardsStreamUseCase>(),
          gh<_i332.CreateCardUseCase>(),
          gh<_i406.EditCardUseCase>(),
          gh<_i141.DeleteCardUseCase>(),
        ));
    gh.singleton<_i404.RateCardUseCase>(() => _i404.RateCardUseCase(
          gh<_i620.CardsRepository>(),
          gh<_i727.SchedulingService>(),
          gh<_i212.SchedulingLogsRepository>(),
        ));
    gh.factory<_i861.CreateCardBloc>(() => _i861.CreateCardBloc(
          gh<_i335.GetCardUseCase>(),
          gh<_i332.CreateCardUseCase>(),
          gh<_i406.EditCardUseCase>(),
        ));
    gh.factory<_i507.SettingsBloc>(() => _i507.SettingsBloc(
          gh<_i698.GetThemeUseCase>(),
          gh<_i882.GetLocaleUseCase>(),
          gh<_i758.GetThemeChangedStreamUseCase>(),
          gh<_i195.GetLocaleChangedStreamUseCase>(),
          gh<_i542.SetThemeUseCase>(),
          gh<_i25.SetLocaleUseCase>(),
        ));
    gh.factory<_i102.StudyBloc>(() => _i102.StudyBloc(
          gh<_i171.GetStudyCardsUseCase>(),
          gh<_i404.RateCardUseCase>(),
          gh<_i1033.GetCardsStreamUseCase>(),
          gh<_i406.EditCardUseCase>(),
          gh<_i233.RestorePreviousCardSchedulingUseCase>(),
          gh<_i575.GetNextRepetitionDateUseCase>(),
        ));
    gh.factory<_i146.InsightsBloc>(
        () => _i146.InsightsBloc(gh<_i388.GetDecksStreamUseCase>()));
    gh.factory<_i649.DecksBloc>(() => _i649.DecksBloc(
          gh<_i178.CreateDeckUseCase>(),
          gh<_i388.GetDecksStreamUseCase>(),
          gh<_i622.PinDeckUseCase>(),
          gh<_i175.UnpinDeckUseCase>(),
        ));
    gh.factory<_i1055.DeckBloc>(() => _i1055.DeckBloc(
          gh<_i776.GetDeckStreamUseCase>(),
          gh<_i134.EditDeckUseCase>(),
          gh<_i764.DeleteDeckUseCase>(),
          gh<_i373.ResetSchedulingsUseCase>(),
          gh<_i953.ApplyDeckSettingsUseCase>(),
        ));
    return this;
  }
}

class _$IsarModule extends _i917.IsarModule {}

class _$SharedPreferencesModule extends _i589.SharedPreferencesModule {}
