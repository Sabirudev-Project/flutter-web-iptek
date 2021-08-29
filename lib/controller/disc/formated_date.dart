import 'package:date_format/date_format.dart';

class QuickFormatDate {
  String getDateValue(DateTime time) {
    return formatDate(time, [dd, '-', mm, '-', yyyy]);
  }

  String getDateFullMonth(DateTime time) {
    return formatDate(time, [dd, ' ', MM, ' ', yyyy]);
  }
}
