import 'package:flutter/cupertino.dart';

class UserIdProvider with ChangeNotifier {
  String? UserId;

  get getUserId => UserId;

  setUserId(String? uId) {
    UserId = uId;
    notifyListeners();
  }
}
