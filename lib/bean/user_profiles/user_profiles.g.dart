// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_profiles.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserProfileData _$$_UserProfileDataFromJson(Map<String, dynamic> json) =>
    _$_UserProfileData(
      userProfiles: json['userProfiles'] == null
          ? null
          : UserProfiles.fromJson(json['userProfiles'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserProfileDataToJson(_$_UserProfileData instance) =>
    <String, dynamic>{
      'userProfiles': instance.userProfiles,
    };

_$_UserProfile _$$_UserProfileFromJson(Map<String, dynamic> json) =>
    _$_UserProfile(
      userId: json['userId'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      matchesCount: json['matchesCount'] as int?,
      wonCount: json['wonCount'] as int?,
      drawCount: json['drawCount'] as int?,
      lostCount: json['lostCount'] as int?,
      city: json['city'] as String?,
      state: json['state'] as String?,
      dob: json['dob'] as String?,
      rating: json['rating'] as String?,
      age: json['age'] as int?,
    );

Map<String, dynamic> _$$_UserProfileToJson(_$_UserProfile instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'matchesCount': instance.matchesCount,
      'wonCount': instance.wonCount,
      'drawCount': instance.drawCount,
      'lostCount': instance.lostCount,
      'city': instance.city,
      'state': instance.state,
      'dob': instance.dob,
      'rating': instance.rating,
      'age': instance.age,
    };
