// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'password_change.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PasswordChangeData _$$_PasswordChangeDataFromJson(
        Map<String, dynamic> json) =>
    _$_PasswordChangeData(
      passwordChange: json['passwordChange'] == null
          ? null
          : PasswordChange.fromJson(
              json['passwordChange'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_PasswordChangeDataToJson(
        _$_PasswordChangeData instance) =>
    <String, dynamic>{
      'passwordChange': instance.passwordChange,
    };

_$_PasswordChange _$$_PasswordChangeFromJson(Map<String, dynamic> json) =>
    _$_PasswordChange(
      success: json['success'] as bool?,
      refreshToken: json['refreshToken'] as String?,
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(json['errors'] as Map<String, dynamic>),
      token: json['token'] as String?,
    );

Map<String, dynamic> _$$_PasswordChangeToJson(_$_PasswordChange instance) =>
    <String, dynamic>{
      'success': instance.success,
      'refreshToken': instance.refreshToken,
      'errors': instance.errors,
      'token': instance.token,
    };

_$_Errors _$$_ErrorsFromJson(Map<String, dynamic> json) => _$_Errors(
      oldPassword: (json['oldPassword'] as List<dynamic>?)
          ?.map((e) => PasswordCriteria.fromJson(e as Map<String, dynamic>))
          .toList(),
      newPassword: (json['newPassword'] as List<dynamic>?)
          ?.map((e) => PasswordCriteria.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ErrorsToJson(_$_Errors instance) => <String, dynamic>{
      'oldPassword': instance.oldPassword,
      'newPassword': instance.newPassword,
    };

_$_PasswordCriteria _$$_PasswordCriteriaFromJson(Map<String, dynamic> json) =>
    _$_PasswordCriteria(
      message: json['message'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$_PasswordCriteriaToJson(_$_PasswordCriteria instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
    };
