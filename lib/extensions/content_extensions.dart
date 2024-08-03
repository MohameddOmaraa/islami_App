import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter/material.dart';

extension BuildContextExtensions on BuildContext{
  AppLocalizations get localizations=>AppLocalizations.of(this)!;
}