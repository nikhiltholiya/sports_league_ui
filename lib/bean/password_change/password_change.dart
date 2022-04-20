import 'package:freezed_annotation/freezed_annotation.dart';

part 'password_change.g.dart';
part 'password_change.freezed.dart';

@Freezed()
class PasswordChangeData with _$PasswordChangeData {
  const factory PasswordChangeData({required PasswordChange? passwordChange}) = _PasswordChangeData;

  factory PasswordChangeData.fromJson(Map<String, dynamic> PasswordChangeDataMap) =>
      _$PasswordChangeDataFromJson(PasswordChangeDataMap);
}

@Freezed()
class PasswordChange with _$PasswordChange {
  const factory PasswordChange({
    required bool? success,
    required String? refreshToken,
    required Errors? errors,
    required String? token,
  }) = _PasswordChange;

  factory PasswordChange.fromJson(Map<String, dynamic> PasswordChangeMap) =>
      _$PasswordChangeFromJson(PasswordChangeMap);
}

@Freezed()
class Errors with _$Errors {
  const factory Errors({
    required List<PasswordCriteria>? oldPassword,
    required List<PasswordCriteria>? newPassword,
  }) = _Errors;

  factory Errors.fromJson(Map<String, dynamic> ErrorsMap) => _$ErrorsFromJson(ErrorsMap);
}

@Freezed()
class PasswordCriteria with _$PasswordCriteria {
  const factory PasswordCriteria({
    required String? message,
    required String? code,
  }) = _PasswordCriteria;

  factory PasswordCriteria.fromJson(Map<String, dynamic> PasswordCriteriaMap) =>
      _$PasswordCriteriaFromJson(PasswordCriteriaMap);
}
