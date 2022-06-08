import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:tenniston/providers/internet_provider.dart';

mixin isInternetConnection {

  final Connectivity _connectivity = Connectivity();
  late StreamSubscription<ConnectivityResult> _connectivitySubscription;
  late BuildContext _context;

  void initInternet(BuildContext mContext) async {
    this._context = mContext;
    initConnectivity();
    _connectivitySubscription = _connectivity.onConnectivityChanged.listen(_updateConnectionStatus);
  }

  void disposeInternet() {
    _connectivitySubscription.cancel();
  }


  Future<void> initConnectivity() async {
    late ConnectivityResult result;
    // Platform messages may fail, so we use a try/catch PlatformException.
    try {
      result = await _connectivity.checkConnectivity();
    } on PlatformException catch (e) {
      debugPrint('Couldn\'t check connectivity status :: $e');
      return;
    }
    return _updateConnectionStatus(result);
  }

  Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    if (result != Provider.of<InternetProvider>(_context, listen: false).getConnected) {
      Provider.of<InternetProvider>(_context, listen: false).setConnectivity(result);
    }
  }
}
