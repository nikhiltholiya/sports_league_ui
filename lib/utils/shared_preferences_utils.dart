//created on 20220317
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreferencesUtils {
  static SharedPreferences? _sharedPreferences;

  static init() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static void dataClear() async {
    await _sharedPreferences?.clear();
  }

  static void setToken(String? token) {
    _sharedPreferences?.setString('token', token ?? '');
  }

  static String? get getToken => _sharedPreferences?.getString('token');

  static void setRefreshToken(String? refToken) {
    _sharedPreferences?.setString('refreshToken', refToken ?? '');
  }

  static String? get getRefreshToken => _sharedPreferences?.getString('refreshToken');

  static void setUserData(String? userData) {
    _sharedPreferences?.setString('userData', userData ?? '');
  }

  static String? get getUserData => _sharedPreferences?.getString('userData');

  static void setEmail(String? email) {
    _sharedPreferences?.setString('email', email ?? '');
  }

  static String? get getEmail => _sharedPreferences?.getString('email');

  static void setUserId(String? userId) {
    _sharedPreferences?.setString('userId', userId ?? '');
  }

  static String? get getUserId => _sharedPreferences?.getString('userId');
}

// mixin SharedPrefUtils {
//   setUserId(String? userId) async {
//     await SharedPreferences.getInstance().then((value) {
//       value.setString('userId', userId ?? '');
//     });
//   }
//
//   Future<String?> getUserId() async {
//     return await SharedPreferences.getInstance().then((value) => value.getString('userId'));
//   }
//
//   setLoggedUser(String? userData) async {
//     await SharedPreferences.getInstance().then((value) {
//       value.setString('user', userData ?? '');
//     });
//   }
//
//   Future<String?> getLoggedUser() async {
//     return await SharedPreferences.getInstance().then((value) => value.getString('user'));
//   }
//
//   setLoggedUserData(String? userData) async {
//     await SharedPreferences.getInstance().then((value) {
//       value.setString('userData', userData ?? '');
//     });
//   }
//
//   Future<String?> getLoggedUserData() async {
//     return await SharedPreferences.getInstance().then((value) => value.getString('userData'));
//   }
//
//   setToken(String? token) async {
//     await SharedPreferences.getInstance().then((value) => value.setString('token', token ?? ''));
//   }
//
//   Future<String?> get getToken async {
//     return await SharedPreferences.getInstance().then((value) => value.getString('token'));
//   }
//
//   setRefreshToken(String? token) async {
//     await SharedPreferences.getInstance().then((value) => value.setString('refreshToken', token ?? ''));
//   }
//
//   Future<String?> get getRefreshToken async {
//     return await SharedPreferences.getInstance().then((value) => value.getString('refreshToken'));
//   }
//
//   setEmailId(String? emailId) async {
//     await SharedPreferences.getInstance().then((value) {
//       value.setString('emailId', emailId ?? '');
//     });
//   }
//
//   Future<String?> getEmailId() async {
//     return await SharedPreferences.getInstance().then((value) => value.getString('emailId'));
//   }
// }