import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_leagues.g.dart';

part 'all_leagues.freezed.dart';

@Freezed()
class AllLeaguesData with _$AllLeaguesData {
  const factory AllLeaguesData({required AllLeagues? allLeagues}) = _AllLeaguesData;

  factory AllLeaguesData.fromJson(Map<String, dynamic> map) => _$AllLeaguesDataFromJson(map);
}

@Freezed()
class AllLeagues with _$AllLeagues {
  const factory AllLeagues({required List<LeagueEdges>? edges}) = _AllLeagues;

  factory AllLeagues.fromJson(Map<String, dynamic> leagueMap) => _$AllLeaguesFromJson(leagueMap);
}

@Freezed()
class LeagueEdges with _$LeagueEdges {
  const factory LeagueEdges({required LeagueNode? node}) = _LeagueEdges;

  factory LeagueEdges.fromJson(Map<String, dynamic> leagueMap) => _$LeagueEdgesFromJson(leagueMap);
}

@Freezed()
class LeagueNode with _$LeagueNode {
  const factory LeagueNode(
      {required String? id,
      required String? city,
      required String? country,
      required String? description,
      required String? endDate,
      required String? createdAt,
      required String? leagueId,
      required double? level,
      required String? name,
      required String? startDate,
      required String? state,
      required String? status,
      required String? updatedAt}) = _LeagueNode;

  factory LeagueNode.fromJson(Map<String, dynamic> leagueMap) => _$LeagueNodeFromJson(leagueMap);
}
