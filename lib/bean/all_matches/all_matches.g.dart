// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_matches.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AllMatchesData _$$_AllMatchesDataFromJson(Map<String, dynamic> json) =>
    _$_AllMatchesData(
      allMatches: json['allMatches'] == null
          ? null
          : AllMatches.fromJson(json['allMatches'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AllMatchesDataToJson(_$_AllMatchesData instance) =>
    <String, dynamic>{
      'allMatches': instance.allMatches,
    };

_$_AllMatches _$$_AllMatchesFromJson(Map<String, dynamic> json) =>
    _$_AllMatches(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => MatchesEdges.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AllMatchesToJson(_$_AllMatches instance) =>
    <String, dynamic>{
      'edges': instance.edges,
    };

_$_MatchesEdges _$$_MatchesEdgesFromJson(Map<String, dynamic> json) =>
    _$_MatchesEdges(
      node: json['node'] == null
          ? null
          : MatchesNode.fromJson(json['node'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MatchesEdgesToJson(_$_MatchesEdges instance) =>
    <String, dynamic>{
      'node': instance.node,
    };

_$_MatchesNode _$$_MatchesNodeFromJson(Map<String, dynamic> json) =>
    _$_MatchesNode(
      id: json['id'] as String?,
      court: json['court'] as String?,
      startDate: json['startDate'] as String?,
      matchSet: json['matchSet'] == null
          ? null
          : MatchSet.fromJson(json['matchSet'] as Map<String, dynamic>),
      playerOne: json['playerOne'] == null
          ? null
          : UserNode.fromJson(json['playerOne'] as Map<String, dynamic>),
      playerTwo: json['playerTwo'] == null
          ? null
          : UserNode.fromJson(json['playerTwo'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MatchesNodeToJson(_$_MatchesNode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'court': instance.court,
      'startDate': instance.startDate,
      'matchSet': instance.matchSet,
      'playerOne': instance.playerOne,
      'playerTwo': instance.playerTwo,
    };

_$_MatchSet _$$_MatchSetFromJson(Map<String, dynamic> json) => _$_MatchSet(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => MatchSetEdges.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_MatchSetToJson(_$_MatchSet instance) =>
    <String, dynamic>{
      'edges': instance.edges,
    };

_$_MatchSetEdges _$$_MatchSetEdgesFromJson(Map<String, dynamic> json) =>
    _$_MatchSetEdges(
      node: json['node'] == null
          ? null
          : MatchSetNode.fromJson(json['node'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MatchSetEdgesToJson(_$_MatchSetEdges instance) =>
    <String, dynamic>{
      'node': instance.node,
    };

_$_MatchSetNode _$$_MatchSetNodeFromJson(Map<String, dynamic> json) =>
    _$_MatchSetNode(
      id: json['id'] as String?,
      playerOneScore: json['playerOneScore'] as int?,
      playerTwoScore: json['playerTwoScore'] as int?,
      matchSetId: json['matchSetId'] as String?,
      match: json['match'] == null
          ? null
          : MatchDetails.fromJson(json['match'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MatchSetNodeToJson(_$_MatchSetNode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'playerOneScore': instance.playerOneScore,
      'playerTwoScore': instance.playerTwoScore,
      'matchSetId': instance.matchSetId,
      'match': instance.match,
    };

_$_MatchDetails _$$_MatchDetailsFromJson(Map<String, dynamic> json) =>
    _$_MatchDetails(
      court: json['court'] as String?,
      matchId: json['matchId'] as String?,
      startDate: json['startDate'] as String?,
      createdAt: json['createdAt'] as String?,
      endDate: json['endDate'] as String?,
      id: json['id'] as String?,
    );

Map<String, dynamic> _$$_MatchDetailsToJson(_$_MatchDetails instance) =>
    <String, dynamic>{
      'court': instance.court,
      'matchId': instance.matchId,
      'startDate': instance.startDate,
      'createdAt': instance.createdAt,
      'endDate': instance.endDate,
      'id': instance.id,
    };
