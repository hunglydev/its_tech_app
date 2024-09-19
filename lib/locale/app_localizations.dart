import 'package:flutter/cupertino.dart';
import 'package:its_tech_app/locale/language_en.dart';
import 'package:its_tech_app/locale/languages.dart';

import 'language_vi.dart';

class AppLocalizations extends LocalizationsDelegate<BaseLanguage> {
  @override
  bool isSupported(Locale locale) {
    return ['en', 'vi'].contains(locale.languageCode);
  }

  @override
  Future<BaseLanguage> load(Locale locale) async {
    switch (locale.languageCode) {
      case 'en':
        return LanguageEn();
      case 'vi':
        return LanguageVi();
      default:
        return LanguageVi();
    }
  }

  @override
  bool shouldReload(covariant LocalizationsDelegate<BaseLanguage> old) {
    return false;
  }
}
