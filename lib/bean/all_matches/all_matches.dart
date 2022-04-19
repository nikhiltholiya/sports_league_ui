import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tenniston/bean/all_users/all_users.dart';

part 'all_matches.g.dart';
part 'all_matches.freezed.dart';

@Freezed()
class AllMatchesData with _$AllMatchesData {
  const factory AllMatchesData({required AllMatches? allMatches}) = _AllMatchesData;

  factory AllMatchesData.fromJson(Map<String, dynamic> allMatchesMap) => _$AllMatchesDataFromJson(allMatchesMap);
}

@Freezed()
class AllMatches with _$AllMatches {
  const factory AllMatches({
    required List<MatchesEdges>? edges}) = _AllMatches;

  factory AllMatches.fromJson(Map<String, dynamic> allMatchesMap) => _$AllMatchesFromJson(allMatchesMap);
}

@Freezed()
class MatchesEdges with _$MatchesEdges {
  const factory MatchesEdges({
    required MatchesNode? node}) = _MatchesEdges;

  factory MatchesEdges.fromJson(Map<String, dynamic> MatchesEdgesMap) => _$MatchesEdgesFromJson(MatchesEdgesMap);
}

@Freezed()
class MatchesNode with _$MatchesNode {
  const factory MatchesNode({

    required String? id,
    required String? matchId,
    required AllMatches? matchSet,
    required int? playerOneScore,
    required int? playerTwoScore,
    required UserNode? playerOne,
    required UserNode? playerTwo,
  }) = _MatchesNode;

  factory MatchesNode.fromJson(Map<String, dynamic> MatchesNodeMap) => _$MatchesNodeFromJson(MatchesNodeMap);
}