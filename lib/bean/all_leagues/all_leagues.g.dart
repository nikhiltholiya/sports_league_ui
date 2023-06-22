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
      id: json['id'] as String?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      description: json['description'] as String?,
      endDate: json['endDate'] as String?,
      createdAt: json['createdAt'] as String?,
      leagueId: json['leagueId'] as String?,
      level: (json['level'] as num?)?.toDouble(),
      name: json['name'] as String?,
      startDate: json['startDate'] as String?,
      state: json['state'] as String?,
      status: json['status'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_LeagueNodeToJson(_$_LeagueNode instance) =>
    <String, dynamic>{
      'id': instance.id,
      'city': instance.city,
      'country': instance.country,
      'description': instance.description,
      'endDate': instance.endDate,
      'createdAt': instance.createdAt,
      'leagueId': instance.leagueId,
      'level': instance.level,
      'name': instance.name,
      'startDate': instance.startDate,
      'state': instance.state,
      'status': instance.status,
      'updatedAt': instance.updatedAt,
    };
