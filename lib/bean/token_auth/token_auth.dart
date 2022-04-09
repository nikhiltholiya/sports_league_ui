

import 'package:freezed_annotation/freezed_annotation.dart';
part 'token_auth.g.dart';
part 'token_auth.freezed.dart';

@Freezed()
class TokenAuthData with _$TokenAuthData{

  const factory TokenAuthData({
    required TokenAuth? tokenAuth
}) = _TokenAuthData;

  factory TokenAuthData.fromJson(Map<String,dynamic> tokenDataMap) => _$TokenAuthDataFromJson(tokenDataMap);
}


@Freezed()
class TokenAuth with _$TokenAuth{

  const factory TokenAuth({

    required String? refreshToken,
    required bool? success,
    required String? token,
    required bool? unarchiving,
    required LoggedUser? user,
    required TokenError? errors

}) = _TokenAuth;

  factory TokenAuth.fromJson(Map<String,dynamic> tokenMap) => _$TokenAuthFromJson(tokenMap);
}

@Freezed()
class LoggedUser with _$LoggedUser{

  const factory LoggedUser({

    required String? aboutMe,
    required bool? active,
    required bool? archived,
    required String? city,
    required String? country,
    required String? dateJoined,
    required bool? deleted,
    required String? email,
    required String? dob,
    required String? firstName,
    required String? gender,
    required String? height,
    required bool? isActive,
    required String? id,
    required bool? isStaff,
    required String? lastLogin,
    required String? lastName,
    required String? phone,
    required String? picture,
    required String? rating,
    required int? pk,
    required String? state,
    required String? secondaryEmail,
    required String? userId,
    required bool? verified,

}) = _LoggedUser;

  factory LoggedUser.fromJson(Map<String,dynamic> loggedUserMap) => _$LoggedUserFromJson(loggedUserMap);
}


@Freezed()
class TokenError with _$TokenError{

  const factory TokenError({
    required List<NonFieldErrors>? nonFieldErrors
}) = _TokenError;

  factory TokenError.fromJson(Map<String,dynamic> TokenErrorMap) => _$TokenErrorFromJson(TokenErrorMap);
}


@Freezed()
class NonFieldErrors with _$NonFieldErrors{

  const factory NonFieldErrors({
    required String? message,
    required String? code,
}) = _NonFieldErrors;

  factory NonFieldErrors.fromJson(Map<String,dynamic> NonFieldErrorsMap) => _$NonFieldErrorsFromJson(NonFieldErrorsMap);
}
