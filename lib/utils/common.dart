// ham dung chung cua app
import 'package:nb_utils/nb_utils.dart';

List<LanguageDataModel> languageList() {
  return [
    LanguageDataModel(
        id: 1,
        name: 'English',
        languageCode: 'en',
        fullLanguageCode: 'en-US',
        flag: 'assets/flag/ic_us.png'),
    LanguageDataModel(
        id: 2,
        name: 'Vietnamese',
        languageCode: 'vi',
        fullLanguageCode: 'vi-VN',
        flag: 'assets/flag/ic_vietnam.png'),
  ];
}
