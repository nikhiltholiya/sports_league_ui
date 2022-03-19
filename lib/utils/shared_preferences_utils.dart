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
}
