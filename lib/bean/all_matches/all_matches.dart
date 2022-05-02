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
    required String? court,
    required String? startDate,
    required MatchSet? matchSet,
    required UserNode? playerOne,
    required UserNode? playerTwo,
  }) = _MatchesNode;

  factory MatchesNode.fromJson(Map<String, dynamic> MatchesNodeMap) => _$MatchesNodeFromJson(MatchesNodeMap);
}


@Freezed()
class MatchSet with _$MatchSet {
  const factory MatchSet({
    required List<MatchSetEdges>? edges}) = _MatchSet;

  factory MatchSet.fromJson(Map<String, dynamic> MatchesNodeMap) => _$MatchSetFromJson(MatchesNodeMap);
}

@Freezed()
class MatchSetEdges with _$MatchSetEdges {
  const factory MatchSetEdges({
    required MatchSetNode? node}) = _MatchSetEdges;

  factory MatchSetEdges.fromJson(Map<String, dynamic> MatchSetEdgesMap) => _$MatchSetEdgesFromJson(MatchSetEdgesMap);
}

@Freezed()
class MatchSetNode with _$MatchSetNode {
  const factory MatchSetNode({
    required String? id,
    required int? playerOneScore,
    required int? playerTwoScore,
    required String? matchSetId,
    required MatchDetails? match,
  }) = _MatchSetNode;

  factory MatchSetNode.fromJson(Map<String, dynamic> MatchSetNodeMap) => _$MatchSetNodeFromJson(MatchSetNodeMap);
}
@Freezed()
class MatchDetails with _$MatchDetails {
  const factory MatchDetails({
    required String? court,
    required String? matchId,
    required String? startDate,
    required String? createdAt,
    required String? endDate,
    required String? id,
  }) = _MatchDetails;

  factory MatchDetails.fromJson(Map<String, dynamic> MatchDetailsMap) => _$MatchDetailsFromJson(MatchDetailsMap);
}