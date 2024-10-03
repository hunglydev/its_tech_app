import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; // Add this line
import 'package:its_tech_app/locale/app_localizations.dart';
import 'package:its_tech_app/locale/languages.dart';
import 'package:its_tech_app/screen/customer_detail/screen/customer_detail.dart';
import 'package:its_tech_app/screen/main_screen/screen/main_screen.dart';
import 'package:its_tech_app/screen/noti_screen/screen/noti_screen.dart';

import 'locale/language_vi.dart';

BaseLanguage language = LanguageVi();

void main() async {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      locale: const Locale('vi'),
      theme: AppTheme.lightTheme(),
      darkTheme: AppTheme.darkTheme(),
      localizationsDelegates: [
        AppLocalizations(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('en'),
        Locale('vi'),
      ],
      home: const Scaffold(
        body: CustomerDetail(),
      ),
    ),
  );
}
