import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';

//Used for convert Date as sat
String? convertDate(String? startDate, String? endDate) {
  String? sDate = '';
  String? eDate = '';
  try {
    if (startDate != null)
      sDate = '${formatDate(DateTime.parse(startDate), [
            D,
            ' ',
            dd,
            '${datePrefix(formatDate(DateTime.parse(startDate),[dd]))}',
            ' ',
            M,
            ' ',
            yyyy
          ])}';

    if (endDate != null)
      eDate = '${formatDate(DateTime.parse(endDate), [
            D,
            ' ',
            dd,
            '${datePrefix(formatDate(DateTime.parse(endDate),[dd]))}',
            ' ',
            M,
            ' ',
            yyyy
          ])}';
  } catch (e) {
    debugPrint(e.toString());
  }
  return '$sDate - $eDate';
}

String? datePrefix(String d) {

  if(d != null) {
    int date = int.parse(d);
    if (date > 3 && date < 21) return 'th';
    switch (date % 10) {
      case 1:
        return "st";
      case 2:
        return "nd";
      case 3:
        return "rd";
      default:
        return "th";
    }
  }
  return '';
}
