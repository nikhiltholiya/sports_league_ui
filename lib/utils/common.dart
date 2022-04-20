import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';


DateTime? datePickerDate(String? date) {
  String? parsed = '${formatDate(DateTime.parse(date!), [
    yyyy, ','
    m, ','
    dd,
  ])}';

  var pars = parsed.split(',');

  return DateTime(int.parse(pars[0]), int.parse(pars[1]), int.parse(pars[2]));
}

DateTime? datePickerTime(String? time) {
  String? parsed = '${formatDate(DateTime.parse(time!), [
    hh, ','
    nn, ','
    am,
  ])}';

  var pars = parsed.split(',');

  return DateTime(0, 0, 0, int.parse(pars[0]), int.parse(pars[1]));
}


String? convertTime(String? fromTime, String? toTime) {
  String? sTime = '';
  String? eTime = '';
  try {
    if (fromTime != null)
      sTime = '${formatDate(DateTime.parse(fromTime), [
        hh,
        ' : ',
        nn, ' ',
        am,
      ])}';

    if (toTime != null)
      eTime = '${formatDate(DateTime.parse(toTime), [
        hh,
        ' : ',
        nn, ' ',
        am,
      ])}';
  } catch (e) {
    debugPrint(e.toString());
  }
  if (toTime != null)
    return '$sTime - $eTime';
  else
    return '$sTime';
}
//mm/dd/yyyy
String? convertDateMMDDYYYY(String? startDate) {
  String? sDate = '';
  try {
    if (startDate != null)
      sDate = '${formatDate(DateTime.parse(startDate), [
        mm, '/',
        dd, '/',
        yyyy,
      ])}';
  }catch(e){
    debugPrint('Exception in convertDateMMDDYYYY -- $e');
  }
    return '$sDate';
}

//Used for convert Date as 2022-03-23 YYYY-MM-DD
String? convertDateYYYYMMDD(String? startDate, String? endDate) {
  String? sDate = '';
  String? eDate = '';
  try {
    if (startDate != null)
      sDate = '${formatDate(DateTime.parse(startDate), [
        yyyy,
        '-',
        mm,
        '-',
        dd,
      ])}';

    if (endDate != null)
      eDate = '${formatDate(DateTime.parse(endDate), [
        yyyy,
        '-',
        mm,
        '-',
        dd,
      ])}';
  } catch (e) {
    debugPrint(e.toString());
  }
  if (endDate != null)
    return '$sDate - $eDate';
  else
    return '$sDate';
}



//Used for convert Date as sat 12th Mar 2022
String? convertDate(String? startDate, String? endDate) {
  String? sDate = '';
  String? eDate = '';
  try {
    if (startDate != null)
      sDate = '${formatDate(DateTime.parse(startDate), [
        D,
        ' ',
        dd,
        '${datePrefix(formatDate(DateTime.parse(startDate), [dd]))}',
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
        '${datePrefix(formatDate(DateTime.parse(endDate), [dd]))}',
        ' ',
        M,
        ' ',
        yyyy
      ])}';
  } catch (e) {
    debugPrint(e.toString());
  }
  if (endDate != null)
    return '$sDate - $eDate';
  else
    return '$sDate';
}

String? datePrefix(String d) {
  if (d != null) {
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

//SilverHeader
class SilverDelegates extends SliverPersistentHeaderDelegate {
  final Widget? child;

  SilverDelegates({this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset,
      bool overlapsContent) {
    return child!;
  }

  @override
  double get maxExtent => 60;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}