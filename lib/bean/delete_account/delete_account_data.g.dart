// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'delete_account_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_deleteAccountData _$$_deleteAccountDataFromJson(Map<String, dynamic> json) =>
    _$_deleteAccountData(
      deleteAccount:
          DeleteAccount.fromJson(json['deleteAccount'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_deleteAccountDataToJson(
        _$_deleteAccountData instance) =>
    <String, dynamic>{
      'deleteAccount': instance.deleteAccount,
    };

_$_DeleteAccount _$$_DeleteAccountFromJson(Map<String, dynamic> json) =>
    _$_DeleteAccount(
      success: json['success'] as bool?,
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DeleteAccountToJson(_$_DeleteAccount instance) =>
    <String, dynamic>{
      'success': instance.success,
      'errors': instance.errors,
    };

_$_Errors _$$_ErrorsFromJson(Map<String, dynamic> json) => _$_Errors(
      password: (json['password'] as List<dynamic>?)
          ?.map((e) => ErrorsFields.fromJson(e as Map<String, dynamic>))
          .toList(),
      nonFieldErrors: (json['nonFieldErrors'] as List<dynamic>?)
          ?.map((e) => ErrorsFields.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ErrorsToJson(_$_Errors instance) => <String, dynamic>{
      'password': instance.password,
      'nonFieldErrors': instance.nonFieldErrors,
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
