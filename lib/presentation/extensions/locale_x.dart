import 'dart:ui';

import 'package:dartx/dartx.dart';
import 'package:flutter_localized_locales/flutter_localized_locales.dart';

extension LocaleX on Locale {
  String? getNativeName() {
    final nativeLocalNames = LocaleNamesLocalizationsDelegate.nativeLocaleNames;
    return nativeLocalNames[languageCode]?.capitalize();
  }
}
