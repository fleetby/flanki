import 'package:flanki/domain/constants/app_theme.dart';
import 'package:flanki/presentation/blocs/settings/settings_bloc.dart';
import 'package:flanki/presentation/extensions/app_theme_x.dart';
import 'package:flanki/presentation/extensions/locale_x.dart';
import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flanki/presentation/utils/locale_utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

class SettingsBody extends StatelessWidget {
  const SettingsBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tr = AppLocalizations.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(tr.settingsDestinationLabel),
        centerTitle: true,
      ),
      body: ListView(
        children: [
          ListTile(
            onTap: () async {
              final result = await showModalBottomSheet<LanguageChooserResult>(
                context: context,
                showDragHandle: true,
                builder: (context) {
                  final defaultLocale = getDefaultSupportedLocale();
                  final currentLocale = context
                      .read<SettingsBloc>()
                      .state
                      .mapOrNull(loaded: (state) => state.preferredLocale);
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: AppLocalizations.supportedLocales.length + 1,
                    itemBuilder: (context, index) {
                      if (index == 0) {
                        return ListTile(
                          leading: Offstage(
                            offstage: currentLocale != null,
                            child: const Icon(PhosphorIconsRegular.check),
                          ),
                          title: Text(
                            tr.defaultLanguageLabel(
                              defaultLocale.getNativeName() ?? tr.unknownLabel,
                            ),
                          ),
                          onTap: () {
                            Navigator.of(context)
                                .pop(const LanguageChooserChangedResult(null));
                          },
                        );
                      }
                      final locale =
                          AppLocalizations.supportedLocales[index - 1];
                      return ListTile(
                        leading: Offstage(
                          offstage: locale != currentLocale,
                          child: const Icon(PhosphorIconsRegular.check),
                        ),
                        title: Text(locale.getNativeName() ?? tr.unknownLabel),
                        onTap: () {
                          Navigator.of(context)
                              .pop(LanguageChooserChangedResult(locale));
                        },
                      );
                    },
                  );
                },
              ).then((result) => result ?? const LanguageChooserNoResult());

              if (context.mounted && result is LanguageChooserChangedResult) {
                context
                    .read<SettingsBloc>()
                    .add(SettingsSetLocale(locale: result.locale));
              }
            },
            leading: const Icon(PhosphorIconsRegular.translate),
            title: Text(tr.settingsLanguageLabel),
            subtitle: BlocSelector<SettingsBloc, SettingsState, Locale?>(
              selector: (state) => state.mapOrNull(
                loaded: (state) => state.preferredLocale,
              ),
              builder: (context, locale) => Text(
                (locale ?? getDefaultSupportedLocale()).getNativeName() ??
                    tr.unknownLabel,
              ),
            ),
            trailing: const Icon(PhosphorIconsRegular.caretDown),
          ),
          ListTile(
            onTap: () async {
              final theme = await showModalBottomSheet<AppTheme>(
                showDragHandle: true,
                context: context,
                builder: (context) {
                  final currentTheme = context
                      .read<SettingsBloc>()
                      .state
                      .mapOrNull(loaded: (state) => state.preferredTheme);
                  return ListView.builder(
                    shrinkWrap: true,
                    itemCount: AppTheme.values.length,
                    itemBuilder: (context, index) {
                      final appTheme = AppTheme.values[index];
                      return ListTile(
                        leading: Offstage(
                          offstage: appTheme != currentTheme,
                          child: const Icon(PhosphorIconsRegular.check),
                        ),
                        title: Text(
                          appTheme.getLocalizedName(context),
                        ),
                        onTap: () {
                          Navigator.of(context).pop(AppTheme.values[index]);
                        },
                      );
                    },
                  );
                },
              );

              if (context.mounted && theme != null) {
                context
                    .read<SettingsBloc>()
                    .add(SettingsSetTheme(theme: theme));
              }
            },
            leading: const Icon(PhosphorIconsRegular.palette),
            title: Text(tr.settingsThemeLabel),
            subtitle: BlocSelector<SettingsBloc, SettingsState, AppTheme?>(
              selector: (state) => state.mapOrNull(
                loaded: (state) => state.preferredTheme,
              ),
              builder: (context, appTheme) =>
                  Text(appTheme?.getLocalizedName(context) ?? tr.unknownLabel),
            ),
            trailing: const Icon(PhosphorIconsRegular.caretDown),
          ),
        ],
      ),
    );
  }
}

sealed class LanguageChooserResult {
  const LanguageChooserResult();
}

class LanguageChooserNoResult extends LanguageChooserResult {
  const LanguageChooserNoResult();
}

class LanguageChooserChangedResult extends LanguageChooserResult {
  const LanguageChooserChangedResult(this.locale);
  final Locale? locale;
}
