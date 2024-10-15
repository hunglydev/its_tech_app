import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';

import '../../main.dart';
import '../../utils/colors.dart';

class BuildTopLanguage extends StatefulWidget {
  const BuildTopLanguage({super.key});

  @override
  State createState() {
    return BuildTopLanguageState();
  }
}

class BuildTopLanguageState extends State<BuildTopLanguage> {
  @override
  Widget build(BuildContext context) {
    showLanguagePicker() {
      showModalBottomSheet(
          useSafeArea: true,
          backgroundColor: whiteColor,
          context: context,
          builder: (BuildContext bc) {
            return LanguageListWidget(
              widgetType: WidgetType.LIST,
              onLanguageChange: (v) {
                appStore.setLanguage(v.languageCode!).then((_) {
                  setState(() {});
                  finish(context);
                });
              },
            ).paddingBottom(200);
          });
    }

    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          height: 32,
          decoration: BoxDecoration(
              color: hintColor, borderRadius: BorderRadius.circular(32)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (loadCurrentLanguage().flag != null)
                SizedBox(
                  width: 20,
                  height: 20,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(30),
                    child: Transform.scale(
                      scale: 1.5,
                      child: Image.asset(
                        loadCurrentLanguage().flag!,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              8.width,
              Text(loadCurrentLanguage().languageCode!.toUpperCase(),
                  style: boldTextStyle(color: blackTextColor, size: 14)),
              8.width,
              const Icon(Icons.keyboard_arrow_down),
            ],
          ),
        ).onTap(() {
          showLanguagePicker();
        }),
        20.width,
      ],
    );
  }
}

LanguageDataModel loadCurrentLanguage() {
  LanguageDataModel selectedLanguage = localeLanguageList.firstWhere(
    (item) => item.languageCode == appStore.selectedLanguageCode,
  );
  return selectedLanguage;
}
