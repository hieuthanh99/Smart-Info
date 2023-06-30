import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import 'package:shimmer/main.dart';
import 'package:smart_info/l10n/entities/locale_entity.dart';

class LanguageService {
  Locale _locale = ui.window.locale; // default to user's system language

  Locale get locale => _locale;

  List<LocaleEntity> listLanguageSupport() {
    return <LocaleEntity>[
      const LocaleEntity(
        name: 'Việt Nam',
        langCode: LocaleSupport.vi,
        flag: '',
      ),
      const LocaleEntity(
        name: 'English',
        langCode: LocaleSupport.en,
        flag: '󠁧󠁢󠁥󠁮󠁧󠁿',
      ),
    ];
  }

  void setLanguage(String languageCode) {
    _locale = Locale(languageCode);
    runApp(const MyApp());
  }
}
