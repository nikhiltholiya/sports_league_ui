// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'register.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RegisterData _$$_RegisterDataFromJson(Map<String, dynamic> json) =>
    _$_RegisterData(
      register: json['register'] == null
          ? null
          : Register.fromJson(json['register'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegisterDataToJson(_$_RegisterData instance) =>
    <String, dynamic>{
      'register': instance.register,
    };

_$_Register _$$_RegisterFromJson(Map<String, dynamic> json) => _$_Register(
      success: json['success'] as bool?,
      token: json['token'] as String?,
      refreshToken: json['refreshToken'] as String?,
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_RegisterToJson(_$_Register instance) =>
    <String, dynamic>{
      'success': instance.success,
      'token': instance.token,
      'refreshToken': instance.refreshToken,
      'errors': instance.errors,
    };

_$_Errors _$$_ErrorsFromJson(Map<String, dynamic> json) => _$_Errors(
      email: (json['email'] as List<dynamic>?)
          ?.map((e) => ErrorMsg.fromJson(e as Map<String, dynamic>))
          .toList(),
      password1: (json['password1'] as List<dynamic>?)
          ?.map((e) => ErrorMsg.fromJson(e as Map<String, dynamic>))
          .toList(),
      password2: (json['password2'] as List<dynamic>?)
          ?.map((e) => ErrorMsg.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_ErrorsToJson(_$_Errors instance) => <String, dynamic>{
      'email': instance.email,
      'password1': instance.password1,
      'password2': instance.password2,
    };

_$_ErrorMsg _$$_ErrorMsgFromJson(Map<String, dynamic> json) => _$_ErrorMsg(
      message: json['message'] as String?,
      code: json['code'] as String?,
    );

Map<String, dynamic> _$$_ErrorMsgToJson(_$_ErrorMsg instance) =>
    <String, dynamic>{
      'message': instance.message,
      'code': instance.code,
    };
