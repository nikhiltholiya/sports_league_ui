import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_account_data.g.dart';
part 'delete_account_data.freezed.dart';

//20230727 For delete Account
@Freezed()
class deleteAccountData with _$deleteAccountData{
const factory deleteAccountData({
  required DeleteAccount deleteAccount
}) = _deleteAccountData;
factory deleteAccountData.fromJson(Map<String, dynamic> del) => _$deleteAccountDataFromJson(del);
}

@Freezed()
class DeleteAccount with _$DeleteAccount {
const factory DeleteAccount({
required bool? success,
required Errors? errors,
}) = _DeleteAccount;

factory DeleteAccount.fromJson(Map<String, dynamic> delPrfMap) => _$DeleteAccountFromJson(delPrfMap);
}


@Freezed()
class Errors with _$Errors {
  const factory Errors({
    required List<ErrorsFields>? password,
    required List<ErrorsFields>? nonFieldErrors,
  }) = _Errors;

  factory Errors.fromJson(Map<String, dynamic> errMap) => _$ErrorsFromJson(errMap);
}

@Freezed()
class ErrorsFields with _$ErrorsFields {
  const factory ErrorsFields({required String? message, required String? code}) = _ErrorsFields;

  factory ErrorsFields.fromJson(Map<String, dynamic> errFieldMap) => _$ErrorsFieldsFromJson(errFieldMap);
}
