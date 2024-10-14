import 'package:flutter/material.dart';
import 'package:its_tech_app/utils/colors.dart';
import 'package:nb_utils/nb_utils.dart';

class AppTheme {
  AppTheme._();
  static ThemeData lightTheme({Color? color}) => ThemeData(
      useMaterial3: true,
      primaryColor: color ?? primaryColor,
      scaffoldBackgroundColor: scaffoldLightColor,
      //      fontFamily: 'Monserrat',
      cardColor: cardColor,
      cardTheme: const CardTheme(color: cardColor));
  static ThemeData darkTheme({Color? color}) => ThemeData(
      useMaterial3: true,
      primaryColor: color ?? primaryColor,
      scaffoldBackgroundColor: scaffoldDarkColor,
      //    fontFamily: 'Monserrat',
      cardColor: cardColor,
      cardTheme: const CardTheme(color: cardColor));
}
