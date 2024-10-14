import 'package:intl/intl.dart';
import 'package:its_tech_app/utils/constants.dart';

String formatDate(String dateFormat,
    {bool showTime = false, bool showDate = false}) {
  DateTime date = DateFormat(DATE_FORMAT_1).parse(dateFormat);
  if (showTime) {
    DateFormat timeFormat = DateFormat(TIME_FORMAT_1);
    return timeFormat.format(date);
  } else if (showDate) {
    DateFormat dateFormat = DateFormat(DATE_FORMAT_2);
    return dateFormat.format(date);
  } else {
    DateFormat dateFormat = DateFormat(DATE_FORMAT_1);
    return dateFormat.format(date);
  }
}
