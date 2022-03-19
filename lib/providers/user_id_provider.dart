import 'package:flutter/cupertino.dart';

class UserIdProvider with ChangeNotifier {
  String? UserId;
  String? UserId1;
  String? UserId2;
  String? UserId3;

  get getUserId => UserId;

  get getUserId1 => UserId1;

  get getUserId2 => UserId2;

  get getUserId3 => UserId3;

  setUserId(String? uId) {
    UserId = uId;
    notifyListeners();
  }

  setUserId2(String? uId) {
    UserId2 = uId;
    notifyListeners();
  }

  setUserId3(String? uId) {
    UserId3 = uId;
    notifyListeners();
  }

  setUserId1(String? uId) {
    UserId1 = uId;
    notifyListeners();
  }
}
