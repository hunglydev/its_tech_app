//Trang thai cua app (language hien tai, theme, data user dang su dung
import 'package:flutter/material.dart';
import 'package:its_tech_app/locale/app_localizations.dart';
import 'package:its_tech_app/utils/config.dart';
import 'package:nb_utils/nb_utils.dart';

import '../main.dart';

class AppStore extends ChangeNotifier {
  bool isDarkMode = false;

  String selectedLanguageCode =
      getStringAsync(SELECTED_LANGUAGE_CODE, defaultValue: defaultLanguage);

  void setDarkMode(bool val) {
    isDarkMode = val;
    notifyListeners();
  }

  Future<void> setLanguage(String languageCode) async {
    selectedLanguageCode = languageCode;
    selectedLanguageDataModel = getSelectedLanguageModel();
    setValue(SELECTED_LANGUAGE_CODE, selectedLanguageCode);
    language = await AppLocalizations().load(Locale(selectedLanguageCode));
    notifyListeners();
  }
}
