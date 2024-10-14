import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart'; // Add this line
import 'package:its_tech_app/locale/app_localizations.dart';
import 'package:its_tech_app/locale/languages.dart';

import 'package:its_tech_app/screen/Login_Logup/login_screen.dart';

import 'package:its_tech_app/theme.dart';
import 'locale/language_vi.dart';

BaseLanguage language = LanguageVi();

List<Device> devicesCache = [];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDQHK4G7D47BghnHFCezf-cB0IP-tZQAlg",
        appId: "1:648109672241:android:07a2cace0748c5168d5210",
        messagingSenderId: "",
        projectId: "its-sup"),
  );
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
      home: const Scaffold(
        body: LoginScreen(),
      ),
    ),
  );
}
