import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/foundation.dart';

class InternetProvider extends ChangeNotifier {
  ConnectivityResult? isConnectivity = ConnectivityResult.none;

  ConnectivityResult? get getConnected => isConnectivity;

  void setConnectivity(ConnectivityResult flag) {
    isConnectivity = flag;
    notifyListeners();
  }
}
