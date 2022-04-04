//created on 20220317
import 'package:shared_preferences/shared_preferences.dart';

mixin SharedPrefUtils {
  setUserId(String? userId) async {
    await SharedPreferences.getInstance().then((value) {
      value.setString('userId', userId ?? '');
    });
  }

  Future<String?> getUserId() async {
    return await SharedPreferences.getInstance()
        .then((value) => value.getString('userId'));
  }

  setLoggedUser(String? userData) async {
    await SharedPreferences.getInstance().then((value) {
      value.setString('user', userData ?? '');
    });
  }

  Future<String?> getLoggedUser() async {
    return await SharedPreferences.getInstance()
        .then((value) => value.getString('user'));
  }

 setLoggedUserData(String? userData) async {
    await SharedPreferences.getInstance().then((value) {
      value.setString('userData', userData ?? '');
    });
  }

  Future<String?> getLoggedUserData() async {
    return await SharedPreferences.getInstance()
        .then((value) => value.getString('userData'));
  }

  setToken(String? token) async {
    await SharedPreferences.getInstance()
        .then((value) => value.setString('token', token ?? ''));
  }

  Future<String?> get getToken async {
    return await SharedPreferences.getInstance()
        .then((value) => value.getString('token'));
  }

  setRefreshToken(String? token) async {
    await SharedPreferences.getInstance()
        .then((value) => value.setString('refreshToken', token ?? ''));
  }

  Future<String?> get getRefreshToken async {
    return await SharedPreferences.getInstance()
        .then((value) => value.getString('refreshToken'));
  }


  setEmailId(String? emailId) async {
    await SharedPreferences.getInstance().then((value) {
      value.setString('emailId', emailId ?? '');
    });
  }

  Future<String?> getEmailId() async {
    return await SharedPreferences.getInstance()
        .then((value) => value.getString('emailId'));
  }
}
