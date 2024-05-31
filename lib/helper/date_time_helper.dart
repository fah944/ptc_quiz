import 'package:intl/intl.dart';

class DateTimeHelper {
  
  // Helper method to format date
 static String formatDateToUTC(String dateStr)
   {
    DateTime dateTime = DateTime.parse(dateStr).toUtc();
    DateFormat dateFormat = DateFormat("d-MMM, yyyy");
    return dateFormat.format(dateTime);
  }

  
}

  