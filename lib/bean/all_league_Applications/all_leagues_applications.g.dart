// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_leagues_applications.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AllLeaguesApps _$$_AllLeaguesAppsFromJson(Map<String, dynamic> json) =>
    _$_AllLeaguesApps(
      allLeagueApplications: json['allLeagueApplications'] == null
          ? null
          : AllLeagueApplications.fromJson(
              json['allLeagueApplications'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AllLeaguesAppsToJson(_$_AllLeaguesApps instance) =>
    <String, dynamic>{
      'allLeagueApplications': instance.allLeagueApplications,
    };

_$_AllLeagueApplications _$$_AllLeagueApplicationsFromJson(
        Map<String, dynamic> json) =>
    _$_AllLeagueApplications(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => Edges.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AllLeagueApplicationsToJson(
        _$_AllLeagueApplications instance) =>
    <String, dynamic>{
      'edges': instance.edges,
    };

_$_Edges _$$_EdgesFromJson(Map<String, dynamic> json) => _$_Edges(
      node: json['node'] == null
          ? null
          : Node.fromJson(json['node'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_EdgesToJson(_$_Edges instance) => <String, dynamic>{
      'node': instance.node,
    };

_$_Node _$$_NodeFromJson(Map<String, dynamic> json) => _$_Node(
      id: json['id'] as String?,
      league: json['league'] == null
          ? null
          : League.fromJson(json['league'] as Map<String, dynamic>),
      status: json['status'] as String?,
      applicant: json['applicant'] == null
          ? null
          : Applicant.fromJson(json['applicant'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_NodeToJson(_$_Node instance) => <String, dynamic>{
      'id': instance.id,
      'league': instance.league,
      'status': instance.status,
      'applicant': instance.applicant,
    };

_$_League _$$_LeagueFromJson(Map<String, dynamic> json) => _$_League(
      city: json['city'] as String?,
      country: json['country'] as String?,
      createdAt: json['createdAt'] as String?,
      description: json['description'] as String?,
      endDate: json['endDate'] as String?,
      id: json['id'] as String?,
      leagueId: json['leagueId'] as String?,
      level: (json['level'] as num?)?.toDouble(),
      name: json['name'] as String?,
      startDate: json['startDate'] as String?,
      state: json['state'] as String?,
      status: json['status'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_LeagueToJson(_$_League instance) => <String, dynamic>{
      'city': instance.city,
      'country': instance.country,
      'createdAt': instance.createdAt,
      'description': instance.description,
      'endDate': instance.endDate,
      'id': instance.id,
      'leagueId': instance.leagueId,
      'level': instance.level,
      'name': instance.name,
      'startDate': instance.startDate,
      'state': instance.state,
      'status': instance.status,
      'updatedAt': instance.updatedAt,
    };

_$_Applicant _$$_ApplicantFromJson(Map<String, dynamic> json) => _$_Applicant(
      userId: json['userId'] as String?,
    );

Map<String, dynamic> _$$_ApplicantToJson(_$_Applicant instance) =>
    <String, dynamic>{
      'userId': instance.userId,
    };
