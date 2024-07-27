import 'dart:ui';

import 'package:flanki/presentation/app_router.dart';
import 'package:flanki/presentation/blocs/settings/settings_bloc.dart';
import 'package:flanki/presentation/extensions/app_theme_x.dart';
import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flanki/presentation/utils/locale_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';
import 'package:timeago/timeago.dart' as timeago;

class App extends StatelessWidget {
  const App({
    required AppRouter appRouter,
    super.key,
  }) : _appRouter = appRouter;

  final AppRouter _appRouter;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SettingsBloc, SettingsState>(
      listenWhen: (previous, current) =>
          previous.mapOrNull(loaded: (previous) => previous.preferredLocale) !=
          current.mapOrNull(loaded: (current) => current.preferredLocale),
      listener: (context, state) {
        if (state case SettingsLoaded(:final preferredLocale)) {
          timeago.setDefaultLocale(
            (preferredLocale ?? getDefaultSupportedLocale()).toLanguageTag(),
          );
        }
      },
      builder: (context, state) => MaterialApp.router(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        routerConfig: _appRouter.config(),
        debugShowCheckedModeBanner: false,
        scrollBehavior: _DesktopDebugScrollBehavior(),
        theme: _theme(),
        darkTheme: _theme(dark: true),
        locale: state.mapOrNull(loaded: (state) => state.preferredLocale),
        themeMode:
            state.mapOrNull(loaded: (state) => state.preferredTheme.themeMode),
      ),
    );
  }
}

class _DesktopDebugScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {...PointerDeviceKind.values};
}

ThemeData _theme({bool dark = false}) {
  return (dark ? ThemeData.dark() : ThemeData.light()).copyWith(
    actionIconTheme: ActionIconThemeData(
      backButtonIconBuilder: (context) =>
          const Icon(PhosphorIconsRegular.arrowLeft),
    ),
  );
}
