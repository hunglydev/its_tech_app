import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:its_tech_app/locale/app_localizations.dart';
import 'package:its_tech_app/locale/languages.dart';
import 'package:its_tech_app/screen/auth_screen/login_screen.dart';
import 'package:its_tech_app/store/app_store.dart';
import 'package:its_tech_app/theme.dart';
import 'package:its_tech_app/utils/common.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:provider/provider.dart';
import 'locale/language_vi.dart';
import 'model/devices.dart';

BaseLanguage language = LanguageVi();
AppStore appStore = AppStore();

List<Device> devicesCache = [];

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initialize();
  localeLanguageList = languageList();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
        apiKey: "AIzaSyDQHK4G7D47BghnHFCezf-cB0IP-tZQAlg",
        appId: "1:648109672241:android:07a2cace0748c5168d5210",
        messagingSenderId: "",
        projectId: "its-sup"),
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AppStore(),
        ),
      ],
      child: Consumer<AppStore>(
        builder: (context, appStoreProvider, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: Locale(appStoreProvider.selectedLanguageCode),
            theme: AppTheme.lightTheme(),
            localizationsDelegates: [
              AppLocalizations(),
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            localeResolutionCallback: (locale, supportedLocales) => locale,
            supportedLocales: LanguageDataModel.languageLocales(),
            home: const Scaffold(
              body: LoginScreen(),
            ),
          );
        },
      ),
    ),
  );
}
