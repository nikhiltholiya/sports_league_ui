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
      matchId: json['matchId'] as String?,
      matchSet: json['matchSet'] == null
          ? null
          : AllMatches.fromJson(json['matchSet'] as Map<String, dynamic>),
      playerOneScore: json['playerOneScore'] as int?,
      playerTwoScore: json['playerTwoScore'] as int?,
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
      'matchId': instance.matchId,
      'matchSet': instance.matchSet,
      'playerOneScore': instance.playerOneScore,
      'playerTwoScore': instance.playerTwoScore,
      'playerOne': instance.playerOne,
      'playerTwo': instance.playerTwo,
    };
