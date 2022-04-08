import 'package:freezed_annotation/freezed_annotation.dart';

part 'create_profile_data.g.dart';

part 'create_profile_data.freezed.dart';

@Freezed()
class CreateProfileData with _$CreateProfileData {
  const factory CreateProfileData({required UpdateAccount? updateAccount}) = _CreateProfileData;

  factory CreateProfileData.fromJson(Map<String, dynamic> profMap) => _$CreateProfileDataFromJson(profMap);
}

@Freezed()
class UpdateAccount with _$UpdateAccount {
  const factory UpdateAccount({
    required bool? success,
    required Errors? errors,
  }) = _UpdateAccount;

  factory UpdateAccount.fromJson(Map<String, dynamic> updPrfMap) => _$UpdateAccountFromJson(updPrfMap);
}

@Freezed()
class Errors with _$Errors {
  const factory Errors({
    required List<ErrorsFields>? nonFieldErrors,
    required List<ErrorsFields>? dob,
    required List<ErrorsFields>? userId,
  }) = _Errors;

  factory Errors.fromJson(Map<String, dynamic> errMap) => _$ErrorsFromJson(errMap);
}

@Freezed()
class ErrorsFields with _$ErrorsFields {
  const factory ErrorsFields({required String? message, required String? code}) = _ErrorsFields;

  factory ErrorsFields.fromJson(Map<String, dynamic> errFieldMap) => _$ErrorsFieldsFromJson(errFieldMap);
}
