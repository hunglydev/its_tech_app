import 'package:flutter/cupertino.dart';

abstract class BaseLanguage {
  static BaseLanguage of(BuildContext context) =>
      Localizations.of(context, BaseLanguage);

  //hung
  String get signIn;

  String get edit;

  String get remove;

  String get total;

  String get hello;

  String get all;

  String get waiting;

  String get running;

  String get testing;

  String get completed;

  String get returned;

  String get firstTester;

  String get technician;

  String get secondTester;

  String get addDevice;

  String get nameOfCustomer;

  String get timeReceiveDevice;

  String get timeReturnDevice;

  String get requirementCustomer;

  String get imageOfDevice;

  String get nameOfDevice;

  String get note;

  //dat
  String get notification;

  String get customerDetail;

  String get allTechSupport;

  String get seeAll;

  String get allMachineBeginMade;
}
