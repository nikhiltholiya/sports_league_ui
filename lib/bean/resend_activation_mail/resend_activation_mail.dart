import 'package:freezed_annotation/freezed_annotation.dart';


part 'resend_activation_mail.g.dart';
part 'resend_activation_mail.freezed.dart';
@Freezed()
class ResendActivationMailData with _$ResendActivationMailData {
  const factory ResendActivationMailData({required ResendActivationEmail? resendActivationEmail}) = _ResendActivationMailData;

  factory ResendActivationMailData.fromJson(Map<String, dynamic> regMap) => _$ResendActivationMailDataFromJson(regMap);
}

@Freezed()
class ResendActivationEmail with _$ResendActivationEmail {
  const factory ResendActivationEmail({
    required bool? success,
    required Errors? errors,
  }) = _ResendActivationEmail;

  factory ResendActivationEmail.fromJson(Map<String, dynamic> regMap) => _$ResendActivationEmailFromJson(regMap);
}

@Freezed()
class Errors with _$Errors {
  const factory Errors({
    required List<ErrorMsg>? email,
    required List<ErrorMsg>? password1,
    required List<ErrorMsg>? password2,
  }) = _Errors;

  factory Errors.fromJson(Map<String, dynamic> errMap) =>
      _$ErrorsFromJson(errMap);
}


@Freezed()
class ErrorMsg with _$ErrorMsg {
  const factory ErrorMsg({
    required String? message,
    required String? code,
  }) = _ErrorMsg;

  factory ErrorMsg.fromJson(Map<String, dynamic> errMsgMap) =>
      _$ErrorMsgFromJson(errMsgMap);
}
