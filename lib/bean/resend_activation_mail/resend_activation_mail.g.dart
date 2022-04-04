// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resend_activation_mail.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ResendActivationMailData _$$_ResendActivationMailDataFromJson(
        Map<String, dynamic> json) =>
    _$_ResendActivationMailData(
      resendActivationEmail: json['resendActivationEmail'] == null
          ? null
          : ResendActivationEmail.fromJson(
              json['resendActivationEmail'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResendActivationMailDataToJson(
        _$_ResendActivationMailData instance) =>
    <String, dynamic>{
      'resendActivationEmail': instance.resendActivationEmail,
    };

_$_ResendActivationEmail _$$_ResendActivationEmailFromJson(
        Map<String, dynamic> json) =>
    _$_ResendActivationEmail(
      success: json['success'] as bool?,
      errors: json['errors'] == null
          ? null
          : Errors.fromJson(json['errors'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_ResendActivationEmailToJson(
        _$_ResendActivationEmail instance) =>
    <String, dynamic>{
      'success': instance.success,
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
