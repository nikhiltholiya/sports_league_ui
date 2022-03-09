import 'package:freezed_annotation/freezed_annotation.dart';

part 'league_stat.g.dart';

part 'league_stat.freezed.dart';

@Freezed()
class LeagueStatData with LeagueStatData {

  const factory LeagueStatData({
    required Data? data
  }) = _LeagueStatData;

  factory LeagueStatData.fromJson(Map<String, dynamic>Map) =>
      _$LeagueStatDataFromJson(Map);
}

@Freezed()
class Data with _$Data{

  const factory Data({
    required LeagueStat? leagueStat
}) = _Data;

  factory Data.fromJson(Map<String, dynamic> dataJson) => _$DataFromJson(dataJson);
}

@Freezed()
class LeagueStat with _$LeagueStat{
  const factory LeagueStat({
    required String? leagueId,
    required String? name,
    required String? city,
    required String? state,
    required String? country,
    required String? startDate,
    required String? endDate,
    required String? level,
    required String? description,
    required String? status,
    required String? format,
    required List<UserStat>? userStat
}) = _LeagueStat;

  factory LeagueStat.fromJson(Map<String, dynamic> leagueStatsMap) => _$LeagueStatFromJson(leagueStatsMap);
}

@Freezed()
class UserStat with _$UserStat {
  const factory UserStat({
    required int? loss,
    required int? total,
    required String? userId,
    required int? won
  }) = _UserStat;

  factory UserStat.fromJson(Map<String, dynamic> userStatJson) => _$UserStatFromJson(userStatJson);

}