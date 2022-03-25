// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_leagues.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AllLeaguesData _$$_AllLeaguesDataFromJson(Map<String, dynamic> json) =>
    _$_AllLeaguesData(
      allLeagues: json['allLeagues'] == null
          ? null
          : AllLeagues.fromJson(json['allLeagues'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AllLeaguesDataToJson(_$_AllLeaguesData instance) =>
    <String, dynamic>{
      'allLeagues': instance.allLeagues,
    };

_$_AllLeagues _$$_AllLeaguesFromJson(Map<String, dynamic> json) =>
    _$_AllLeagues(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => LeagueEdges.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AllLeaguesToJson(_$_AllLeagues instance) =>
    <String, dynamic>{
      'edges': instance.edges,
    };

_$_LeagueEdges _$$_LeagueEdgesFromJson(Map<String, dynamic> json) =>
    _$_LeagueEdges(
      node: json['node'] == null
          ? null
          : LeagueNode.fromJson(json['node'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_LeagueEdgesToJson(_$_LeagueEdges instance) =>
    <String, dynamic>{
      'node': instance.node,
    };

_$_LeagueNode _$$_LeagueNodeFromJson(Map<String, dynamic> json) =>
    _$_LeagueNode(
      leagueId: json['leagueId'] as String?,
      name: json['name'] as String?,
    );

Map<String, dynamic> _$$_LeagueNodeToJson(_$_LeagueNode instance) =>
    <String, dynamic>{
      'leagueId': instance.leagueId,
      'name': instance.name,
    };
