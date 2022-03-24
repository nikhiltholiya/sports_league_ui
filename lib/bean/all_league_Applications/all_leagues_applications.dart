import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_leagues_applications.g.dart';
part 'all_leagues_applications.freezed.dart';


// this data used in My_Leagues  as List data
//20220313

@Freezed()
class AllLeaguesApps with _$AllLeaguesApps{
  const factory AllLeaguesApps({
    required AllLeagueApplications? allLeagueApplications,
}) = _AllLeaguesApps;

  factory AllLeaguesApps.fromJson(Map<String, dynamic> allAppsJson) => _$AllLeaguesAppsFromJson(allAppsJson);
}

@Freezed()
class AllLeagueApplications with _$AllLeagueApplications{

  const factory AllLeagueApplications({ required List<Edges>? edges}
  ) = _AllLeagueApplications;

  factory AllLeagueApplications.fromJson(Map<String,dynamic> leagueJson) => _$AllLeagueApplicationsFromJson(leagueJson);
}

@Freezed()
class Edges with _$Edges{

  const factory Edges({required Node? node}
  ) = _Edges;

  factory Edges.fromJson(Map<String,dynamic> edgeJson) => _$EdgesFromJson(edgeJson);
}

@Freezed()
class Node with _$Node{

  const factory Node({
    required String? id,
    required League? league,
    required String? status,
    required Applicant? applicant,
  }) = _Node;

  factory Node.fromJson(Map<String,dynamic> nodeJson) => _$NodeFromJson(nodeJson);
}

@Freezed()
class League with _$League{

  const factory League({
    required String? city,
    required String? country,
    required String? createdAt,
    required String? description,
    required String? endDate,
    required String? id,
    required String? leagueId,
    required double? level,
    required String? name,
    required String? startDate,
    required String? state,
    required String? status,
    required String? updatedAt,
  }) = _League;

  factory League.fromJson(Map<String,dynamic> leagueJson) => _$LeagueFromJson(leagueJson);
}

@Freezed()
class Applicant with _$Applicant{

  const factory Applicant({
    required String? userId
  }) = _Applicant;

  factory Applicant.fromJson(Map<String,dynamic> applicantJson) => _$ApplicantFromJson(applicantJson);
}