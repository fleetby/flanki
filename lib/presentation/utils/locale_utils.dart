import 'dart:io';

import 'package:dartx/dartx.dart';
import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flutter/material.dart';

Locale getDefaultSupportedLocale() {
  final appDefaultLocale = AppLocalizations.supportedLocales.first;
  try {
    final platformLocale = Locale(Platform.localeName.split('-')[0]);
    return AppLocalizations.supportedLocales.firstOrNullWhere(
          (e) => e.languageCode == platformLocale.languageCode,
        ) ??
        appDefaultLocale;
  } catch (_) {
    return appDefaultLocale;
  }
}
