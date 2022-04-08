// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenAuthData _$TokenAuthDataFromJson(Map<String, dynamic> json) {
  return _TokenAuthData.fromJson(json);
}

/// @nodoc
class _$TokenAuthDataTearOff {
  const _$TokenAuthDataTearOff();

  _TokenAuthData call({required TokenAuth? tokenAuth}) {
    return _TokenAuthData(
      tokenAuth: tokenAuth,
    );
  }

  TokenAuthData fromJson(Map<String, Object?> json) {
    return TokenAuthData.fromJson(json);
  }
}

/// @nodoc
const $TokenAuthData = _$TokenAuthDataTearOff();

/// @nodoc
mixin _$TokenAuthData {
  TokenAuth? get tokenAuth => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenAuthDataCopyWith<TokenAuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenAuthDataCopyWith<$Res> {
  factory $TokenAuthDataCopyWith(
          TokenAuthData value, $Res Function(TokenAuthData) then) =
      _$TokenAuthDataCopyWithImpl<$Res>;
  $Res call({TokenAuth? tokenAuth});

  $TokenAuthCopyWith<$Res>? get tokenAuth;
}

/// @nodoc
class _$TokenAuthDataCopyWithImpl<$Res>
    implements $TokenAuthDataCopyWith<$Res> {
  _$TokenAuthDataCopyWithImpl(this._value, this._then);

  final TokenAuthData _value;
  // ignore: unused_field
  final $Res Function(TokenAuthData) _then;

  @override
  $Res call({
    Object? tokenAuth = freezed,
  }) {
    return _then(_value.copyWith(
      tokenAuth: tokenAuth == freezed
          ? _value.tokenAuth
          : tokenAuth // ignore: cast_nullable_to_non_nullable
              as TokenAuth?,
    ));
  }

  @override
  $TokenAuthCopyWith<$Res>? get tokenAuth {
    if (_value.tokenAuth == null) {
      return null;
    }

    return $TokenAuthCopyWith<$Res>(_value.tokenAuth!, (value) {
      return _then(_value.copyWith(tokenAuth: value));
    });
  }
}

/// @nodoc
abstract class _$TokenAuthDataCopyWith<$Res>
    implements $TokenAuthDataCopyWith<$Res> {
  factory _$TokenAuthDataCopyWith(
          _TokenAuthData value, $Res Function(_TokenAuthData) then) =
      __$TokenAuthDataCopyWithImpl<$Res>;
  @override
  $Res call({TokenAuth? tokenAuth});

  @override
  $TokenAuthCopyWith<$Res>? get tokenAuth;
}

/// @nodoc
class __$TokenAuthDataCopyWithImpl<$Res>
    extends _$TokenAuthDataCopyWithImpl<$Res>
    implements _$TokenAuthDataCopyWith<$Res> {
  __$TokenAuthDataCopyWithImpl(
      _TokenAuthData _value, $Res Function(_TokenAuthData) _then)
      : super(_value, (v) => _then(v as _TokenAuthData));

  @override
  _TokenAuthData get _value => super._value as _TokenAuthData;

  @override
  $Res call({
    Object? tokenAuth = freezed,
  }) {
    return _then(_TokenAuthData(
      tokenAuth: tokenAuth == freezed
          ? _value.tokenAuth
          : tokenAuth // ignore: cast_nullable_to_non_nullable
              as TokenAuth?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenAuthData implements _TokenAuthData {
  const _$_TokenAuthData({required this.tokenAuth});

  factory _$_TokenAuthData.fromJson(Map<String, dynamic> json) =>
      _$$_TokenAuthDataFromJson(json);

  @override
  final TokenAuth? tokenAuth;

  @override
  String toString() {
    return 'TokenAuthData(tokenAuth: $tokenAuth)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenAuthData &&
            const DeepCollectionEquality().equals(other.tokenAuth, tokenAuth));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(tokenAuth));

  @JsonKey(ignore: true)
  @override
  _$TokenAuthDataCopyWith<_TokenAuthData> get copyWith =>
      __$TokenAuthDataCopyWithImpl<_TokenAuthData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenAuthDataToJson(this);
  }
}

abstract class _TokenAuthData implements TokenAuthData {
  const factory _TokenAuthData({required TokenAuth? tokenAuth}) =
      _$_TokenAuthData;

  factory _TokenAuthData.fromJson(Map<String, dynamic> json) =
      _$_TokenAuthData.fromJson;

  @override
  TokenAuth? get tokenAuth;
  @override
  @JsonKey(ignore: true)
  _$TokenAuthDataCopyWith<_TokenAuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

TokenAuth _$TokenAuthFromJson(Map<String, dynamic> json) {
  return _TokenAuth.fromJson(json);
}

/// @nodoc
class _$TokenAuthTearOff {
  const _$TokenAuthTearOff();

  _TokenAuth call(
      {required String? refreshToken,
      required bool? success,
      required String? token,
      required bool? unarchiving,
      required LoggedUser? user,
      required TokenError? errors}) {
    return _TokenAuth(
      refreshToken: refreshToken,
      success: success,
      token: token,
      unarchiving: unarchiving,
      user: user,
      errors: errors,
    );
  }

  TokenAuth fromJson(Map<String, Object?> json) {
    return TokenAuth.fromJson(json);
  }
}

/// @nodoc
const $TokenAuth = _$TokenAuthTearOff();

/// @nodoc
mixin _$TokenAuth {
  String? get refreshToken => throw _privateConstructorUsedError;
  bool? get success => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  bool? get unarchiving => throw _privateConstructorUsedError;
  LoggedUser? get user => throw _privateConstructorUsedError;
  TokenError? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenAuthCopyWith<TokenAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenAuthCopyWith<$Res> {
  factory $TokenAuthCopyWith(TokenAuth value, $Res Function(TokenAuth) then) =
      _$TokenAuthCopyWithImpl<$Res>;
  $Res call(
      {String? refreshToken,
      bool? success,
      String? token,
      bool? unarchiving,
      LoggedUser? user,
      TokenError? errors});

  $LoggedUserCopyWith<$Res>? get user;
  $TokenErrorCopyWith<$Res>? get errors;
}

/// @nodoc
class _$TokenAuthCopyWithImpl<$Res> implements $TokenAuthCopyWith<$Res> {
  _$TokenAuthCopyWithImpl(this._value, this._then);

  final TokenAuth _value;
  // ignore: unused_field
  final $Res Function(TokenAuth) _then;

  @override
  $Res call({
    Object? refreshToken = freezed,
    Object? success = freezed,
    Object? token = freezed,
    Object? unarchiving = freezed,
    Object? user = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      unarchiving: unarchiving == freezed
          ? _value.unarchiving
          : unarchiving // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoggedUser?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as TokenError?,
    ));
  }

  @override
  $LoggedUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $LoggedUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value));
    });
  }

  @override
  $TokenErrorCopyWith<$Res>? get errors {
    if (_value.errors == null) {
      return null;
    }

    return $TokenErrorCopyWith<$Res>(_value.errors!, (value) {
      return _then(_value.copyWith(errors: value));
    });
  }
}

/// @nodoc
abstract class _$TokenAuthCopyWith<$Res> implements $TokenAuthCopyWith<$Res> {
  factory _$TokenAuthCopyWith(
          _TokenAuth value, $Res Function(_TokenAuth) then) =
      __$TokenAuthCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? refreshToken,
      bool? success,
      String? token,
      bool? unarchiving,
      LoggedUser? user,
      TokenError? errors});

  @override
  $LoggedUserCopyWith<$Res>? get user;
  @override
  $TokenErrorCopyWith<$Res>? get errors;
}

/// @nodoc
class __$TokenAuthCopyWithImpl<$Res> extends _$TokenAuthCopyWithImpl<$Res>
    implements _$TokenAuthCopyWith<$Res> {
  __$TokenAuthCopyWithImpl(_TokenAuth _value, $Res Function(_TokenAuth) _then)
      : super(_value, (v) => _then(v as _TokenAuth));

  @override
  _TokenAuth get _value => super._value as _TokenAuth;

  @override
  $Res call({
    Object? refreshToken = freezed,
    Object? success = freezed,
    Object? token = freezed,
    Object? unarchiving = freezed,
    Object? user = freezed,
    Object? errors = freezed,
  }) {
    return _then(_TokenAuth(
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      unarchiving: unarchiving == freezed
          ? _value.unarchiving
          : unarchiving // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: user == freezed
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoggedUser?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as TokenError?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenAuth implements _TokenAuth {
  const _$_TokenAuth(
      {required this.refreshToken,
      required this.success,
      required this.token,
      required this.unarchiving,
      required this.user,
      required this.errors});

  factory _$_TokenAuth.fromJson(Map<String, dynamic> json) =>
      _$$_TokenAuthFromJson(json);

  @override
  final String? refreshToken;
  @override
  final bool? success;
  @override
  final String? token;
  @override
  final bool? unarchiving;
  @override
  final LoggedUser? user;
  @override
  final TokenError? errors;

  @override
  String toString() {
    return 'TokenAuth(refreshToken: $refreshToken, success: $success, token: $token, unarchiving: $unarchiving, user: $user, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenAuth &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken) &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality()
                .equals(other.unarchiving, unarchiving) &&
            const DeepCollectionEquality().equals(other.user, user) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(refreshToken),
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(unarchiving),
      const DeepCollectionEquality().hash(user),
      const DeepCollectionEquality().hash(errors));

  @JsonKey(ignore: true)
  @override
  _$TokenAuthCopyWith<_TokenAuth> get copyWith =>
      __$TokenAuthCopyWithImpl<_TokenAuth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenAuthToJson(this);
  }
}

abstract class _TokenAuth implements TokenAuth {
  const factory _TokenAuth(
      {required String? refreshToken,
      required bool? success,
      required String? token,
      required bool? unarchiving,
      required LoggedUser? user,
      required TokenError? errors}) = _$_TokenAuth;

  factory _TokenAuth.fromJson(Map<String, dynamic> json) =
      _$_TokenAuth.fromJson;

  @override
  String? get refreshToken;
  @override
  bool? get success;
  @override
  String? get token;
  @override
  bool? get unarchiving;
  @override
  LoggedUser? get user;
  @override
  TokenError? get errors;
  @override
  @JsonKey(ignore: true)
  _$TokenAuthCopyWith<_TokenAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

LoggedUser _$LoggedUserFromJson(Map<String, dynamic> json) {
  return _LoggedUser.fromJson(json);
}

/// @nodoc
class _$LoggedUserTearOff {
  const _$LoggedUserTearOff();

  _LoggedUser call(
      {required String? aboutMe,
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
      required bool? verified}) {
    return _LoggedUser(
      aboutMe: aboutMe,
      active: active,
      archived: archived,
      city: city,
      country: country,
      dateJoined: dateJoined,
      deleted: deleted,
      email: email,
      dob: dob,
      firstName: firstName,
      gender: gender,
      height: height,
      isActive: isActive,
      id: id,
      isStaff: isStaff,
      lastLogin: lastLogin,
      lastName: lastName,
      phone: phone,
      picture: picture,
      rating: rating,
      pk: pk,
      state: state,
      secondaryEmail: secondaryEmail,
      userId: userId,
      verified: verified,
    );
  }

  LoggedUser fromJson(Map<String, Object?> json) {
    return LoggedUser.fromJson(json);
  }
}

/// @nodoc
const $LoggedUser = _$LoggedUserTearOff();

/// @nodoc
mixin _$LoggedUser {
  String? get aboutMe => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  bool? get archived => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get dateJoined => throw _privateConstructorUsedError;
  bool? get deleted => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  String? get height => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  bool? get isStaff => throw _privateConstructorUsedError;
  String? get lastLogin => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  int? get pk => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get secondaryEmail => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  bool? get verified => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoggedUserCopyWith<LoggedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggedUserCopyWith<$Res> {
  factory $LoggedUserCopyWith(
          LoggedUser value, $Res Function(LoggedUser) then) =
      _$LoggedUserCopyWithImpl<$Res>;
  $Res call(
      {String? aboutMe,
      bool? active,
      bool? archived,
      String? city,
      String? country,
      String? dateJoined,
      bool? deleted,
      String? email,
      String? dob,
      String? firstName,
      String? gender,
      String? height,
      bool? isActive,
      String? id,
      bool? isStaff,
      String? lastLogin,
      String? lastName,
      String? phone,
      String? picture,
      String? rating,
      int? pk,
      String? state,
      String? secondaryEmail,
      String? userId,
      bool? verified});
}

/// @nodoc
class _$LoggedUserCopyWithImpl<$Res> implements $LoggedUserCopyWith<$Res> {
  _$LoggedUserCopyWithImpl(this._value, this._then);

  final LoggedUser _value;
  // ignore: unused_field
  final $Res Function(LoggedUser) _then;

  @override
  $Res call({
    Object? aboutMe = freezed,
    Object? active = freezed,
    Object? archived = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? dateJoined = freezed,
    Object? deleted = freezed,
    Object? email = freezed,
    Object? dob = freezed,
    Object? firstName = freezed,
    Object? gender = freezed,
    Object? height = freezed,
    Object? isActive = freezed,
    Object? id = freezed,
    Object? isStaff = freezed,
    Object? lastLogin = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? picture = freezed,
    Object? rating = freezed,
    Object? pk = freezed,
    Object? state = freezed,
    Object? secondaryEmail = freezed,
    Object? userId = freezed,
    Object? verified = freezed,
  }) {
    return _then(_value.copyWith(
      aboutMe: aboutMe == freezed
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as String?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      archived: archived == freezed
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      dateJoined: dateJoined == freezed
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isStaff: isStaff == freezed
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastLogin: lastLogin == freezed
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryEmail: secondaryEmail == freezed
          ? _value.secondaryEmail
          : secondaryEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: verified == freezed
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$LoggedUserCopyWith<$Res> implements $LoggedUserCopyWith<$Res> {
  factory _$LoggedUserCopyWith(
          _LoggedUser value, $Res Function(_LoggedUser) then) =
      __$LoggedUserCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? aboutMe,
      bool? active,
      bool? archived,
      String? city,
      String? country,
      String? dateJoined,
      bool? deleted,
      String? email,
      String? dob,
      String? firstName,
      String? gender,
      String? height,
      bool? isActive,
      String? id,
      bool? isStaff,
      String? lastLogin,
      String? lastName,
      String? phone,
      String? picture,
      String? rating,
      int? pk,
      String? state,
      String? secondaryEmail,
      String? userId,
      bool? verified});
}

/// @nodoc
class __$LoggedUserCopyWithImpl<$Res> extends _$LoggedUserCopyWithImpl<$Res>
    implements _$LoggedUserCopyWith<$Res> {
  __$LoggedUserCopyWithImpl(
      _LoggedUser _value, $Res Function(_LoggedUser) _then)
      : super(_value, (v) => _then(v as _LoggedUser));

  @override
  _LoggedUser get _value => super._value as _LoggedUser;

  @override
  $Res call({
    Object? aboutMe = freezed,
    Object? active = freezed,
    Object? archived = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? dateJoined = freezed,
    Object? deleted = freezed,
    Object? email = freezed,
    Object? dob = freezed,
    Object? firstName = freezed,
    Object? gender = freezed,
    Object? height = freezed,
    Object? isActive = freezed,
    Object? id = freezed,
    Object? isStaff = freezed,
    Object? lastLogin = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? picture = freezed,
    Object? rating = freezed,
    Object? pk = freezed,
    Object? state = freezed,
    Object? secondaryEmail = freezed,
    Object? userId = freezed,
    Object? verified = freezed,
  }) {
    return _then(_LoggedUser(
      aboutMe: aboutMe == freezed
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as String?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      archived: archived == freezed
          ? _value.archived
          : archived // ignore: cast_nullable_to_non_nullable
              as bool?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      dateJoined: dateJoined == freezed
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted: deleted == freezed
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isStaff: isStaff == freezed
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastLogin: lastLogin == freezed
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      secondaryEmail: secondaryEmail == freezed
          ? _value.secondaryEmail
          : secondaryEmail // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      verified: verified == freezed
          ? _value.verified
          : verified // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoggedUser implements _LoggedUser {
  const _$_LoggedUser(
      {required this.aboutMe,
      required this.active,
      required this.archived,
      required this.city,
      required this.country,
      required this.dateJoined,
      required this.deleted,
      required this.email,
      required this.dob,
      required this.firstName,
      required this.gender,
      required this.height,
      required this.isActive,
      required this.id,
      required this.isStaff,
      required this.lastLogin,
      required this.lastName,
      required this.phone,
      required this.picture,
      required this.rating,
      required this.pk,
      required this.state,
      required this.secondaryEmail,
      required this.userId,
      required this.verified});

  factory _$_LoggedUser.fromJson(Map<String, dynamic> json) =>
      _$$_LoggedUserFromJson(json);

  @override
  final String? aboutMe;
  @override
  final bool? active;
  @override
  final bool? archived;
  @override
  final String? city;
  @override
  final String? country;
  @override
  final String? dateJoined;
  @override
  final bool? deleted;
  @override
  final String? email;
  @override
  final String? dob;
  @override
  final String? firstName;
  @override
  final String? gender;
  @override
  final String? height;
  @override
  final bool? isActive;
  @override
  final String? id;
  @override
  final bool? isStaff;
  @override
  final String? lastLogin;
  @override
  final String? lastName;
  @override
  final String? phone;
  @override
  final String? picture;
  @override
  final String? rating;
  @override
  final int? pk;
  @override
  final String? state;
  @override
  final String? secondaryEmail;
  @override
  final String? userId;
  @override
  final bool? verified;

  @override
  String toString() {
    return 'LoggedUser(aboutMe: $aboutMe, active: $active, archived: $archived, city: $city, country: $country, dateJoined: $dateJoined, deleted: $deleted, email: $email, dob: $dob, firstName: $firstName, gender: $gender, height: $height, isActive: $isActive, id: $id, isStaff: $isStaff, lastLogin: $lastLogin, lastName: $lastName, phone: $phone, picture: $picture, rating: $rating, pk: $pk, state: $state, secondaryEmail: $secondaryEmail, userId: $userId, verified: $verified)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LoggedUser &&
            const DeepCollectionEquality().equals(other.aboutMe, aboutMe) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.archived, archived) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality()
                .equals(other.dateJoined, dateJoined) &&
            const DeepCollectionEquality().equals(other.deleted, deleted) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.dob, dob) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.isStaff, isStaff) &&
            const DeepCollectionEquality().equals(other.lastLogin, lastLogin) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.pk, pk) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality()
                .equals(other.secondaryEmail, secondaryEmail) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.verified, verified));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(aboutMe),
        const DeepCollectionEquality().hash(active),
        const DeepCollectionEquality().hash(archived),
        const DeepCollectionEquality().hash(city),
        const DeepCollectionEquality().hash(country),
        const DeepCollectionEquality().hash(dateJoined),
        const DeepCollectionEquality().hash(deleted),
        const DeepCollectionEquality().hash(email),
        const DeepCollectionEquality().hash(dob),
        const DeepCollectionEquality().hash(firstName),
        const DeepCollectionEquality().hash(gender),
        const DeepCollectionEquality().hash(height),
        const DeepCollectionEquality().hash(isActive),
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(isStaff),
        const DeepCollectionEquality().hash(lastLogin),
        const DeepCollectionEquality().hash(lastName),
        const DeepCollectionEquality().hash(phone),
        const DeepCollectionEquality().hash(picture),
        const DeepCollectionEquality().hash(rating),
        const DeepCollectionEquality().hash(pk),
        const DeepCollectionEquality().hash(state),
        const DeepCollectionEquality().hash(secondaryEmail),
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(verified)
      ]);

  @JsonKey(ignore: true)
  @override
  _$LoggedUserCopyWith<_LoggedUser> get copyWith =>
      __$LoggedUserCopyWithImpl<_LoggedUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoggedUserToJson(this);
  }
}

abstract class _LoggedUser implements LoggedUser {
  const factory _LoggedUser(
      {required String? aboutMe,
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
      required bool? verified}) = _$_LoggedUser;

  factory _LoggedUser.fromJson(Map<String, dynamic> json) =
      _$_LoggedUser.fromJson;

  @override
  String? get aboutMe;
  @override
  bool? get active;
  @override
  bool? get archived;
  @override
  String? get city;
  @override
  String? get country;
  @override
  String? get dateJoined;
  @override
  bool? get deleted;
  @override
  String? get email;
  @override
  String? get dob;
  @override
  String? get firstName;
  @override
  String? get gender;
  @override
  String? get height;
  @override
  bool? get isActive;
  @override
  String? get id;
  @override
  bool? get isStaff;
  @override
  String? get lastLogin;
  @override
  String? get lastName;
  @override
  String? get phone;
  @override
  String? get picture;
  @override
  String? get rating;
  @override
  int? get pk;
  @override
  String? get state;
  @override
  String? get secondaryEmail;
  @override
  String? get userId;
  @override
  bool? get verified;
  @override
  @JsonKey(ignore: true)
  _$LoggedUserCopyWith<_LoggedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

TokenError _$TokenErrorFromJson(Map<String, dynamic> json) {
  return _TokenError.fromJson(json);
}

/// @nodoc
class _$TokenErrorTearOff {
  const _$TokenErrorTearOff();

  _TokenError call({required List<NonFieldErrors>? nonFieldErrors}) {
    return _TokenError(
      nonFieldErrors: nonFieldErrors,
    );
  }

  TokenError fromJson(Map<String, Object?> json) {
    return TokenError.fromJson(json);
  }
}

/// @nodoc
const $TokenError = _$TokenErrorTearOff();

/// @nodoc
mixin _$TokenError {
  List<NonFieldErrors>? get nonFieldErrors =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenErrorCopyWith<TokenError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenErrorCopyWith<$Res> {
  factory $TokenErrorCopyWith(
          TokenError value, $Res Function(TokenError) then) =
      _$TokenErrorCopyWithImpl<$Res>;
  $Res call({List<NonFieldErrors>? nonFieldErrors});
}

/// @nodoc
class _$TokenErrorCopyWithImpl<$Res> implements $TokenErrorCopyWith<$Res> {
  _$TokenErrorCopyWithImpl(this._value, this._then);

  final TokenError _value;
  // ignore: unused_field
  final $Res Function(TokenError) _then;

  @override
  $Res call({
    Object? nonFieldErrors = freezed,
  }) {
    return _then(_value.copyWith(
      nonFieldErrors: nonFieldErrors == freezed
          ? _value.nonFieldErrors
          : nonFieldErrors // ignore: cast_nullable_to_non_nullable
              as List<NonFieldErrors>?,
    ));
  }
}

/// @nodoc
abstract class _$TokenErrorCopyWith<$Res> implements $TokenErrorCopyWith<$Res> {
  factory _$TokenErrorCopyWith(
          _TokenError value, $Res Function(_TokenError) then) =
      __$TokenErrorCopyWithImpl<$Res>;
  @override
  $Res call({List<NonFieldErrors>? nonFieldErrors});
}

/// @nodoc
class __$TokenErrorCopyWithImpl<$Res> extends _$TokenErrorCopyWithImpl<$Res>
    implements _$TokenErrorCopyWith<$Res> {
  __$TokenErrorCopyWithImpl(
      _TokenError _value, $Res Function(_TokenError) _then)
      : super(_value, (v) => _then(v as _TokenError));

  @override
  _TokenError get _value => super._value as _TokenError;

  @override
  $Res call({
    Object? nonFieldErrors = freezed,
  }) {
    return _then(_TokenError(
      nonFieldErrors: nonFieldErrors == freezed
          ? _value.nonFieldErrors
          : nonFieldErrors // ignore: cast_nullable_to_non_nullable
              as List<NonFieldErrors>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenError implements _TokenError {
  const _$_TokenError({required this.nonFieldErrors});

  factory _$_TokenError.fromJson(Map<String, dynamic> json) =>
      _$$_TokenErrorFromJson(json);

  @override
  final List<NonFieldErrors>? nonFieldErrors;

  @override
  String toString() {
    return 'TokenError(nonFieldErrors: $nonFieldErrors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenError &&
            const DeepCollectionEquality()
                .equals(other.nonFieldErrors, nonFieldErrors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(nonFieldErrors));

  @JsonKey(ignore: true)
  @override
  _$TokenErrorCopyWith<_TokenError> get copyWith =>
      __$TokenErrorCopyWithImpl<_TokenError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenErrorToJson(this);
  }
}

abstract class _TokenError implements TokenError {
  const factory _TokenError({required List<NonFieldErrors>? nonFieldErrors}) =
      _$_TokenError;

  factory _TokenError.fromJson(Map<String, dynamic> json) =
      _$_TokenError.fromJson;

  @override
  List<NonFieldErrors>? get nonFieldErrors;
  @override
  @JsonKey(ignore: true)
  _$TokenErrorCopyWith<_TokenError> get copyWith =>
      throw _privateConstructorUsedError;
}

NonFieldErrors _$NonFieldErrorsFromJson(Map<String, dynamic> json) {
  return _NonFieldErrors.fromJson(json);
}

/// @nodoc
class _$NonFieldErrorsTearOff {
  const _$NonFieldErrorsTearOff();

  _NonFieldErrors call({required String? message, required String? code}) {
    return _NonFieldErrors(
      message: message,
      code: code,
    );
  }

  NonFieldErrors fromJson(Map<String, Object?> json) {
    return NonFieldErrors.fromJson(json);
  }
}

/// @nodoc
const $NonFieldErrors = _$NonFieldErrorsTearOff();

/// @nodoc
mixin _$NonFieldErrors {
  String? get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NonFieldErrorsCopyWith<NonFieldErrors> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NonFieldErrorsCopyWith<$Res> {
  factory $NonFieldErrorsCopyWith(
          NonFieldErrors value, $Res Function(NonFieldErrors) then) =
      _$NonFieldErrorsCopyWithImpl<$Res>;
  $Res call({String? message, String? code});
}

/// @nodoc
class _$NonFieldErrorsCopyWithImpl<$Res>
    implements $NonFieldErrorsCopyWith<$Res> {
  _$NonFieldErrorsCopyWithImpl(this._value, this._then);

  final NonFieldErrors _value;
  // ignore: unused_field
  final $Res Function(NonFieldErrors) _then;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NonFieldErrorsCopyWith<$Res>
    implements $NonFieldErrorsCopyWith<$Res> {
  factory _$NonFieldErrorsCopyWith(
          _NonFieldErrors value, $Res Function(_NonFieldErrors) then) =
      __$NonFieldErrorsCopyWithImpl<$Res>;
  @override
  $Res call({String? message, String? code});
}

/// @nodoc
class __$NonFieldErrorsCopyWithImpl<$Res>
    extends _$NonFieldErrorsCopyWithImpl<$Res>
    implements _$NonFieldErrorsCopyWith<$Res> {
  __$NonFieldErrorsCopyWithImpl(
      _NonFieldErrors _value, $Res Function(_NonFieldErrors) _then)
      : super(_value, (v) => _then(v as _NonFieldErrors));

  @override
  _NonFieldErrors get _value => super._value as _NonFieldErrors;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_NonFieldErrors(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: code == freezed
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_NonFieldErrors implements _NonFieldErrors {
  const _$_NonFieldErrors({required this.message, required this.code});

  factory _$_NonFieldErrors.fromJson(Map<String, dynamic> json) =>
      _$$_NonFieldErrorsFromJson(json);

  @override
  final String? message;
  @override
  final String? code;

  @override
  String toString() {
    return 'NonFieldErrors(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _NonFieldErrors &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.code, code));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(code));

  @JsonKey(ignore: true)
  @override
  _$NonFieldErrorsCopyWith<_NonFieldErrors> get copyWith =>
      __$NonFieldErrorsCopyWithImpl<_NonFieldErrors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NonFieldErrorsToJson(this);
  }
}

abstract class _NonFieldErrors implements NonFieldErrors {
  const factory _NonFieldErrors(
      {required String? message, required String? code}) = _$_NonFieldErrors;

  factory _NonFieldErrors.fromJson(Map<String, dynamic> json) =
      _$_NonFieldErrors.fromJson;

  @override
  String? get message;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$NonFieldErrorsCopyWith<_NonFieldErrors> get copyWith =>
      throw _privateConstructorUsedError;
}
