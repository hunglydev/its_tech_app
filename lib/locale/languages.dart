import 'package:flutter/cupertino.dart';

abstract class BaseLanguage {
  static BaseLanguage of(BuildContext context) =>
      Localizations.of(context, BaseLanguage);
  String get total;
  String get hello;

  String get all;

  String get waiting;

  String get running;

  String get testing;

  String get completed;

  String get returned;

  //dat
  String get notification;

  String get customerDetail;

  String get alltechsupport;

  String get seeall;

  String get allmachinebeingmade;
}
