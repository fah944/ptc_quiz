import 'package:intl/intl.dart';

 
mixin DateFormatter {

   DateTime now =  DateTime.now();
   
    String toUTC(String dateStr)
   {
    DateTime dateTime = DateTime.parse(dateStr).toUtc();
    DateFormat dateFormat = DateFormat("d-MMM, yyyy");
    return dateFormat.format(now);
  }

 String fromUTC(String dateStr)
   {
    DateTime dateTime = DateTime.parse(dateStr).toLocal();
    DateFormat dateFormat = DateFormat("d-MMM, yyyy");
    return dateFormat.format(dateTime);
  }

}




class DateTimeHelper {
  
 static String formatDateToUTC(String dateStr)
   {
    DateTime dateTime = DateTime.parse(dateStr).toUtc();
    DateFormat dateFormat = DateFormat("d-MMM, yyyy");
    return dateFormat.format(dateTime);
  }
}

  