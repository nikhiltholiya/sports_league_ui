// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_auth.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TokenAuthData _$$_TokenAuthDataFromJson(Map<String, dynamic> json) =>
    _$_TokenAuthData(
      tokenAuth: json['tokenAuth'] == null
          ? null
          : TokenAuth.fromJson(json['tokenAuth'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TokenAuthDataToJson(_$_TokenAuthData instance) =>
    <String, dynamic>{
      'tokenAuth': instance.tokenAuth,
    };

_$_TokenAuth _$$_TokenAuthFromJson(Map<String, dynamic> json) => _$_TokenAuth(
      refreshToken: json['refreshToken'] as String?,
      success: json['success'] as bool?,
      token: json['token'] as String?,
      unarchiving: json['unarchiving'] as bool?,
      user: json['user'] == null
          ? null
          : LoggedUser.fromJson(json['user'] as Map<String, dynamic>),
      errors: json['errors'] == null
          ? null
          : TokenError.fromJson(json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_TokenAuthToJson(_$_TokenAuth instance) =>
    <String, dynamic>{
      'refreshToken': instance.refreshToken,
      'success': instance.success,
      'token': instance.token,
      'unarchiving': instance.unarchiving,
      'user': instance.user,
      'errors': instance.errors,
    };

_$_LoggedUser _$$_LoggedUserFromJson(Map<String, dynamic> json) =>
    _$_LoggedUser(
      userId: json['userId'] as String?,
      aboutMe: json['aboutMe'] as String?,
      active: json['active'] as bool?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      dateJoined: json['dateJoined'] as String?,
      deleted: json['deleted'] as bool?,
      email: json['email'] as String?,
      dob: json['dob'] as String?,
      firstName: json['firstName'] as String?,
      gender: json['gender'] as String?,
      isActive: json['isActive'] as bool?,
      id: json['id'] as String?,
      isStaff: json['isStaff'] as bool?,
      lastLogin: json['lastLogin'] as String?,
      lastName: json['lastName'] as String?,
      phone: json['phone'] as String?,
      picture: json['picture'] as String?,
      rating: json['rating'] as String?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$$_LoggedUserToJson(_$_LoggedUser instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'aboutMe': instance.aboutMe,
      'active': instance.active,
      'city': instance.city,
      'country': instance.country,
      'dateJoined': instance.dateJoined,
      'deleted': instance.deleted,
      'email': instance.email,
      'dob': instance.dob,
      'firstName': instance.firstName,
      'gender': instance.gender,
      'isActive': instance.isActive,
      'id': instance.id,
      'isStaff': instance.isStaff,
      'lastLogin': instance.lastLogin,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'picture': instance.picture,
      'rating': instance.rating,
      'state': instance.state,
    };

_$_TokenError _$$_TokenErrorFromJson(Map<String, dynamic> json) =>
    _$_TokenError(
      nonFieldErrors: (json['nonFieldErrors'] as List<dynamic>?)
          ?.map((e) => NonFieldErrors.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_TokenErrorToJson(_$_TokenError instance) =>
    <String, dynamic>{
      'nonFieldErrors': instance.nonFieldErrors,
    };

_$_NonFieldErrors _$$_NonFieldErrorsFromJson(Map<String, dynamic> json) =>
    _$_NonFieldErrors(
      message: json['message'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$_NonFieldErrorsToJson(_$_NonFieldErrors instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
    };
