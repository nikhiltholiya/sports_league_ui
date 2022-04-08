// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_profile_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateProfileData _$$_CreateProfileDataFromJson(Map<String, dynamic> json) =>
    _$_CreateProfileData(
      updateAccount: json['updateAccount'] == null
          ? null
          : UpdateAccount.fromJson(
              json['updateAccount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_CreateProfileDataToJson(
        _$_CreateProfileData instance) =>
    <String, dynamic>{
      'updateAccount': instance.updateAccount,
    };

_$_UpdateAccount _$$_UpdateAccountFromJson(Map<String, dynamic> json) =>
    _$_UpdateAccount(
      success: json['success'] as bool?,
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UpdateAccountToJson(_$_UpdateAccount instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errors': instance.errors,
    };

_$_Errors _$$_ErrorsFromJson(Map<String, dynamic> json) => _$_Errors(
      nonFieldErrors: (json['nonFieldErrors'] as List<dynamic>?)
          ?.map((e) => ErrorsFields.fromJson(e as Map<String, dynamic>))
          .toList(),
      dob: (json['dob'] as List<dynamic>?)
          ?.map((e) => ErrorsFields.fromJson(e as Map<String, dynamic>))
          .toList(),
      userId: (json['userId'] as List<dynamic>?)
          ?.map((e) => ErrorsFields.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ErrorsToJson(_$_Errors instance) => <String, dynamic>{
      'nonFieldErrors': instance.nonFieldErrors,
      'dob': instance.dob,
      'userId': instance.userId,
    };

_$_ErrorsFields _$$_ErrorsFieldsFromJson(Map<String, dynamic> json) =>
    _$_ErrorsFields(
      message: json['message'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$_ErrorsFieldsToJson(_$_ErrorsFields instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
    };
