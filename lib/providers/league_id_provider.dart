import 'package:flutter/cupertino.dart';

class LeagueIdProvider with ChangeNotifier {
  String? leagueId;

  get getLeagueId => leagueId;

  setLeagueId(String? lId) {
    leagueId = lId;
    notifyListeners();
  }
}
