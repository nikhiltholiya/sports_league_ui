import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_leagues.g.dart';

part 'all_leagues.freezed.dart';

//created on 20220324
@Freezed()
class AllLeaguesData with _$AllLeaguesData {
  const factory AllLeaguesData({required AllLeagues? allLeagues}) =
      _AllLeaguesData;

  factory AllLeaguesData.fromJson(Map<String, dynamic> allLeagueDataMap) =>
      _$AllLeaguesDataFromJson(allLeagueDataMap);
}

@Freezed()
class AllLeagues with _$AllLeagues {
  const factory AllLeagues({required List<LeagueEdges>? edges}) = _AllLeagues;

  factory AllLeagues.fromJson(Map<String, dynamic> allLeagueMap) =>
      _$AllLeaguesFromJson(allLeagueMap);
}

@Freezed()
class LeagueEdges with _$LeagueEdges {
  const factory LeagueEdges({required LeagueNode? node}) = _LeagueEdges;

  factory LeagueEdges.fromJson(Map<String, dynamic> edgesMap) =>
      _$LeagueEdgesFromJson(edgesMap);
}

@Freezed()
class LeagueNode with _$LeagueNode {
  const factory LeagueNode({required String? leagueId, required String? name}) =
      _LeagueNode;

  factory LeagueNode.fromJson(Map<String, dynamic> nodeMap) =>
      _$LeagueNodeFromJson(nodeMap);
}
