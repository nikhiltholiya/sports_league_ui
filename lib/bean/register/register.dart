import 'package:freezed_annotation/freezed_annotation.dart';

part 'register.g.dart';

part 'register.freezed.dart';

@Freezed()
class RegisterData with _$RegisterData {
  const factory RegisterData({required Register? register}) = _RegisterData;

  factory RegisterData.fromJson(Map<String, dynamic> regMap) =>
      _$RegisterDataFromJson(regMap);
}

@Freezed()
class Register with _$Register {
  const factory Register({
    required bool? success,
    required String? token,
    required String? refreshToken,
    required Errors? errors,
  }) = _Register;

  factory Register.fromJson(Map<String, dynamic> regMap) =>
      _$RegisterFromJson(regMap);
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
