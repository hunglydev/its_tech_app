import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:its_tech_app/locale/app_localizations.dart';
import 'package:its_tech_app/locale/languages.dart';
import 'package:its_tech_app/screen/customer_detail/screen/customer_detail.dart';
import 'package:its_tech_app/screen/main_screen/screen/main_screen.dart';
import 'package:its_tech_app/theme.dart';
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

        body: LoginScreen(),
      ),
    ),
  );
}
