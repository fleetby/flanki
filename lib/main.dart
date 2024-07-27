import 'package:flanki/get.dart';
import 'package:flanki/presentation/app.dart';
import 'package:flanki/presentation/blocs/settings/settings_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:timeago/timeago.dart' as timeago;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await registerDependencies();
  final settingsBloc = get<SettingsBloc>()..add(const SettingsPreload());
  await settingsBloc.stream.firstWhere((e) => e is SettingsLoaded);
  _configureTimeago();
  runApp(
    BlocProvider.value(
      value: settingsBloc,
      child: App(appRouter: get()),
    ),
  );
}

void _configureTimeago() {
  timeago.setLocaleMessages('en', timeago.EnShortMessages());
}
