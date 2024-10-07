import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; // Add this line
import 'package:its_tech_app/locale/app_localizations.dart';
import 'package:its_tech_app/locale/languages.dart';
import 'package:its_tech_app/model/devices.dart';
import 'package:its_tech_app/screen/machine_total/machine_total_screen.dart';
import 'package:its_tech_app/theme.dart';

import 'locale/language_vi.dart';

BaseLanguage language = LanguageVi();

List<Device> devicesCache = [];

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
        Locale('en'), // Define supported locales
        Locale('vi'), // Assuming you also want to support Vietnamese
      ],
      home: Scaffold(
        body: MachineTotalScreen(),
      ),
    ),
  );
}
