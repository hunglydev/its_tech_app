import 'package:flutter/cupertino.dart';

abstract class BaseLanguage {
  static BaseLanguage of(BuildContext context) =>
      Localizations.of(context, BaseLanguage);
  //hung
  String get total;

  String get hello;

  String get all;

  String get waiting;

  String get running;

  String get testing;

  String get completed;

  String get returned;
  //dat

  //uy
}
