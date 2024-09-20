import 'dart:ui';

import 'package:its_tech_app/main.dart';
import 'package:its_tech_app/utils/colors.dart';
import 'package:its_tech_app/utils/constants.dart';

extension StringExtension on String {
  Color get getStatusBackgroundColor {
    switch (this) {
      case deviceStatusWaiting:
        return waitingColor;
      case deviceStatusCompleted:
        return completedColor;
      case deviceStatusReturned:
        return returnedColor;
      case deviceStatusRunning:
        return runningColor;
      case deviceStatusTesting:
        return testingColor;
      default:
        return primaryColor;
    }
  }

  String get toStatusDevice {
    switch (this) {
      case deviceStatusWaiting:
        return language.waiting;
      case deviceStatusCompleted:
        return language.completed;
      case deviceStatusReturned:
        return language.returned;
      case deviceStatusRunning:
        return language.running;
      case deviceStatusTesting:
        return language.testing;
      case all:
        return language.all;
      default:
        return "";
    }
  }
}
