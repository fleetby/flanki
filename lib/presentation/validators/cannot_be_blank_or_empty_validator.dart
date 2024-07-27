import 'package:dartx/dartx.dart';
import 'package:flanki/presentation/localizations/app_localizations.dart';
import 'package:flutter/material.dart';

String? cannotBeBlankOrEmptyValidator(BuildContext context, String? value) {
  final tr = AppLocalizations.of(context);

  if (value.isNullOrBlank) {
    return tr.cannotBeBlankOrEmptyError;
  }

  return null;
}
