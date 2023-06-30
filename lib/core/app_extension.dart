import 'package:flutter/material.dart';

extension AppLocalizationsExtension on BuildContext {
  // AppLocalizations get l10n => AppLocalizations.of(this)!;

  void hideKeyboard() {
    FocusScopeNode currentFocus = FocusScope.of(this);
    if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
      currentFocus.focusedChild?.unfocus();
    }
  }
}