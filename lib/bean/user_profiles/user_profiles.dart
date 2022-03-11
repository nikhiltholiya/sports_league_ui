import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_profiles.g.dart';

part 'user_profiles.freezed.dart';


@Freezed()
class UserProfileData with _$UserProfileData {
  const factory UserProfileData({
    required UserProfiles? userProfiles,
  }) = _UserProfileData;

  factory UserProfileData.fromJson(Map<String, dynamic> userProfJson) =>
      _$UserProfileDataFromJson(userProfJson);
}

@Freezed()
class UserProfiles with _$UserProfiles {
  const factory UserProfiles({
    required String? userId,
    required String? firstName,
    required String? lastName,
    required int? matchesCount,
    required int? wonCount,
    required int? drawCount,
    required int? lostCount,
    required String? city,
    required String? state,
    required String? dob,
    required int? age,
  }) = _UserProfile;

  factory UserProfiles.fromJson(Map<String, dynamic> userProfJson) =>
      _$UserProfilesFromJson(userProfJson);
}
