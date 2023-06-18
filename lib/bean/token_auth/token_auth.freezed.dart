// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_auth.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenAuthData _$TokenAuthDataFromJson(Map<String, dynamic> json) {
  return _TokenAuthData.fromJson(json);
}

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
      _$TokenAuthDataCopyWithImpl<$Res, TokenAuthData>;
  @useResult
  $Res call({TokenAuth? tokenAuth});

  $TokenAuthCopyWith<$Res>? get tokenAuth;
}

/// @nodoc
class _$TokenAuthDataCopyWithImpl<$Res, $Val extends TokenAuthData>
    implements $TokenAuthDataCopyWith<$Res> {
  _$TokenAuthDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenAuth = freezed,
  }) {
    return _then(_value.copyWith(
      tokenAuth: freezed == tokenAuth
          ? _value.tokenAuth
          : tokenAuth // ignore: cast_nullable_to_non_nullable
              as TokenAuth?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenAuthCopyWith<$Res>? get tokenAuth {
    if (_value.tokenAuth == null) {
      return null;
    }

    return $TokenAuthCopyWith<$Res>(_value.tokenAuth!, (value) {
      return _then(_value.copyWith(tokenAuth: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TokenAuthDataCopyWith<$Res>
    implements $TokenAuthDataCopyWith<$Res> {
  factory _$$_TokenAuthDataCopyWith(
          _$_TokenAuthData value, $Res Function(_$_TokenAuthData) then) =
      __$$_TokenAuthDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({TokenAuth? tokenAuth});

  @override
  $TokenAuthCopyWith<$Res>? get tokenAuth;
}

/// @nodoc
class __$$_TokenAuthDataCopyWithImpl<$Res>
    extends _$TokenAuthDataCopyWithImpl<$Res, _$_TokenAuthData>
    implements _$$_TokenAuthDataCopyWith<$Res> {
  __$$_TokenAuthDataCopyWithImpl(
      _$_TokenAuthData _value, $Res Function(_$_TokenAuthData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokenAuth = freezed,
  }) {
    return _then(_$_TokenAuthData(
      tokenAuth: freezed == tokenAuth
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
            other is _$_TokenAuthData &&
            (identical(other.tokenAuth, tokenAuth) ||
                other.tokenAuth == tokenAuth));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, tokenAuth);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenAuthDataCopyWith<_$_TokenAuthData> get copyWith =>
      __$$_TokenAuthDataCopyWithImpl<_$_TokenAuthData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenAuthDataToJson(
      this,
    );
  }
}

abstract class _TokenAuthData implements TokenAuthData {
  const factory _TokenAuthData({required final TokenAuth? tokenAuth}) =
      _$_TokenAuthData;

  factory _TokenAuthData.fromJson(Map<String, dynamic> json) =
      _$_TokenAuthData.fromJson;

  @override
  TokenAuth? get tokenAuth;
  @override
  @JsonKey(ignore: true)
  _$$_TokenAuthDataCopyWith<_$_TokenAuthData> get copyWith =>
      throw _privateConstructorUsedError;
}

TokenAuth _$TokenAuthFromJson(Map<String, dynamic> json) {
  return _TokenAuth.fromJson(json);
}

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
      _$TokenAuthCopyWithImpl<$Res, TokenAuth>;
  @useResult
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
class _$TokenAuthCopyWithImpl<$Res, $Val extends TokenAuth>
    implements $TokenAuthCopyWith<$Res> {
  _$TokenAuthCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      unarchiving: freezed == unarchiving
          ? _value.unarchiving
          : unarchiving // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoggedUser?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as TokenError?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LoggedUserCopyWith<$Res>? get user {
    if (_value.user == null) {
      return null;
    }

    return $LoggedUserCopyWith<$Res>(_value.user!, (value) {
      return _then(_value.copyWith(user: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenErrorCopyWith<$Res>? get errors {
    if (_value.errors == null) {
      return null;
    }

    return $TokenErrorCopyWith<$Res>(_value.errors!, (value) {
      return _then(_value.copyWith(errors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_TokenAuthCopyWith<$Res> implements $TokenAuthCopyWith<$Res> {
  factory _$$_TokenAuthCopyWith(
          _$_TokenAuth value, $Res Function(_$_TokenAuth) then) =
      __$$_TokenAuthCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_TokenAuthCopyWithImpl<$Res>
    extends _$TokenAuthCopyWithImpl<$Res, _$_TokenAuth>
    implements _$$_TokenAuthCopyWith<$Res> {
  __$$_TokenAuthCopyWithImpl(
      _$_TokenAuth _value, $Res Function(_$_TokenAuth) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? refreshToken = freezed,
    Object? success = freezed,
    Object? token = freezed,
    Object? unarchiving = freezed,
    Object? user = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$_TokenAuth(
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      unarchiving: freezed == unarchiving
          ? _value.unarchiving
          : unarchiving // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as LoggedUser?,
      errors: freezed == errors
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
            other is _$_TokenAuth &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.unarchiving, unarchiving) ||
                other.unarchiving == unarchiving) &&
            (identical(other.user, user) || other.user == user) &&
            (identical(other.errors, errors) || other.errors == errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, refreshToken, success, token, unarchiving, user, errors);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenAuthCopyWith<_$_TokenAuth> get copyWith =>
      __$$_TokenAuthCopyWithImpl<_$_TokenAuth>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenAuthToJson(
      this,
    );
  }
}

abstract class _TokenAuth implements TokenAuth {
  const factory _TokenAuth(
      {required final String? refreshToken,
      required final bool? success,
      required final String? token,
      required final bool? unarchiving,
      required final LoggedUser? user,
      required final TokenError? errors}) = _$_TokenAuth;

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
  _$$_TokenAuthCopyWith<_$_TokenAuth> get copyWith =>
      throw _privateConstructorUsedError;
}

LoggedUser _$LoggedUserFromJson(Map<String, dynamic> json) {
  return _LoggedUser.fromJson(json);
}

/// @nodoc
mixin _$LoggedUser {
  String? get userId => throw _privateConstructorUsedError;
  String? get aboutMe => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get dateJoined => throw _privateConstructorUsedError;
  bool? get deleted => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  bool? get isStaff => throw _privateConstructorUsedError;
  String? get lastLogin => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoggedUserCopyWith<LoggedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoggedUserCopyWith<$Res> {
  factory $LoggedUserCopyWith(
          LoggedUser value, $Res Function(LoggedUser) then) =
      _$LoggedUserCopyWithImpl<$Res, LoggedUser>;
  @useResult
  $Res call(
      {String? userId,
      String? aboutMe,
      bool? active,
      String? city,
      String? country,
      String? dateJoined,
      bool? deleted,
      String? email,
      String? dob,
      String? firstName,
      String? gender,
      bool? isActive,
      String? id,
      bool? isStaff,
      String? lastLogin,
      String? lastName,
      String? phone,
      String? picture,
      String? rating,
      String? state});
}

/// @nodoc
class _$LoggedUserCopyWithImpl<$Res, $Val extends LoggedUser>
    implements $LoggedUserCopyWith<$Res> {
  _$LoggedUserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? aboutMe = freezed,
    Object? active = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? dateJoined = freezed,
    Object? deleted = freezed,
    Object? email = freezed,
    Object? dob = freezed,
    Object? firstName = freezed,
    Object? gender = freezed,
    Object? isActive = freezed,
    Object? id = freezed,
    Object? isStaff = freezed,
    Object? lastLogin = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? picture = freezed,
    Object? rating = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutMe: freezed == aboutMe
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      dateJoined: freezed == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isStaff: freezed == isStaff
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoggedUserCopyWith<$Res>
    implements $LoggedUserCopyWith<$Res> {
  factory _$$_LoggedUserCopyWith(
          _$_LoggedUser value, $Res Function(_$_LoggedUser) then) =
      __$$_LoggedUserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? aboutMe,
      bool? active,
      String? city,
      String? country,
      String? dateJoined,
      bool? deleted,
      String? email,
      String? dob,
      String? firstName,
      String? gender,
      bool? isActive,
      String? id,
      bool? isStaff,
      String? lastLogin,
      String? lastName,
      String? phone,
      String? picture,
      String? rating,
      String? state});
}

/// @nodoc
class __$$_LoggedUserCopyWithImpl<$Res>
    extends _$LoggedUserCopyWithImpl<$Res, _$_LoggedUser>
    implements _$$_LoggedUserCopyWith<$Res> {
  __$$_LoggedUserCopyWithImpl(
      _$_LoggedUser _value, $Res Function(_$_LoggedUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? aboutMe = freezed,
    Object? active = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? dateJoined = freezed,
    Object? deleted = freezed,
    Object? email = freezed,
    Object? dob = freezed,
    Object? firstName = freezed,
    Object? gender = freezed,
    Object? isActive = freezed,
    Object? id = freezed,
    Object? isStaff = freezed,
    Object? lastLogin = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? picture = freezed,
    Object? rating = freezed,
    Object? state = freezed,
  }) {
    return _then(_$_LoggedUser(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutMe: freezed == aboutMe
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      dateJoined: freezed == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isStaff: freezed == isStaff
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoggedUser implements _LoggedUser {
  const _$_LoggedUser(
      {required this.userId,
      required this.aboutMe,
      required this.active,
      required this.city,
      required this.country,
      required this.dateJoined,
      required this.deleted,
      required this.email,
      required this.dob,
      required this.firstName,
      required this.gender,
      required this.isActive,
      required this.id,
      required this.isStaff,
      required this.lastLogin,
      required this.lastName,
      required this.phone,
      required this.picture,
      required this.rating,
      required this.state});

  factory _$_LoggedUser.fromJson(Map<String, dynamic> json) =>
      _$$_LoggedUserFromJson(json);

  @override
  final String? userId;
  @override
  final String? aboutMe;
  @override
  final bool? active;
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
  final String? state;

  @override
  String toString() {
    return 'LoggedUser(userId: $userId, aboutMe: $aboutMe, active: $active, city: $city, country: $country, dateJoined: $dateJoined, deleted: $deleted, email: $email, dob: $dob, firstName: $firstName, gender: $gender, isActive: $isActive, id: $id, isStaff: $isStaff, lastLogin: $lastLogin, lastName: $lastName, phone: $phone, picture: $picture, rating: $rating, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoggedUser &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.aboutMe, aboutMe) || other.aboutMe == aboutMe) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.dateJoined, dateJoined) ||
                other.dateJoined == dateJoined) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isStaff, isStaff) || other.isStaff == isStaff) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        userId,
        aboutMe,
        active,
        city,
        country,
        dateJoined,
        deleted,
        email,
        dob,
        firstName,
        gender,
        isActive,
        id,
        isStaff,
        lastLogin,
        lastName,
        phone,
        picture,
        rating,
        state
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoggedUserCopyWith<_$_LoggedUser> get copyWith =>
      __$$_LoggedUserCopyWithImpl<_$_LoggedUser>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoggedUserToJson(
      this,
    );
  }
}

abstract class _LoggedUser implements LoggedUser {
  const factory _LoggedUser(
      {required final String? userId,
      required final String? aboutMe,
      required final bool? active,
      required final String? city,
      required final String? country,
      required final String? dateJoined,
      required final bool? deleted,
      required final String? email,
      required final String? dob,
      required final String? firstName,
      required final String? gender,
      required final bool? isActive,
      required final String? id,
      required final bool? isStaff,
      required final String? lastLogin,
      required final String? lastName,
      required final String? phone,
      required final String? picture,
      required final String? rating,
      required final String? state}) = _$_LoggedUser;

  factory _LoggedUser.fromJson(Map<String, dynamic> json) =
      _$_LoggedUser.fromJson;

  @override
  String? get userId;
  @override
  String? get aboutMe;
  @override
  bool? get active;
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
  String? get state;
  @override
  @JsonKey(ignore: true)
  _$$_LoggedUserCopyWith<_$_LoggedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

TokenError _$TokenErrorFromJson(Map<String, dynamic> json) {
  return _TokenError.fromJson(json);
}

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
      _$TokenErrorCopyWithImpl<$Res, TokenError>;
  @useResult
  $Res call({List<NonFieldErrors>? nonFieldErrors});
}

/// @nodoc
class _$TokenErrorCopyWithImpl<$Res, $Val extends TokenError>
    implements $TokenErrorCopyWith<$Res> {
  _$TokenErrorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nonFieldErrors = freezed,
  }) {
    return _then(_value.copyWith(
      nonFieldErrors: freezed == nonFieldErrors
          ? _value.nonFieldErrors
          : nonFieldErrors // ignore: cast_nullable_to_non_nullable
              as List<NonFieldErrors>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TokenErrorCopyWith<$Res>
    implements $TokenErrorCopyWith<$Res> {
  factory _$$_TokenErrorCopyWith(
          _$_TokenError value, $Res Function(_$_TokenError) then) =
      __$$_TokenErrorCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<NonFieldErrors>? nonFieldErrors});
}

/// @nodoc
class __$$_TokenErrorCopyWithImpl<$Res>
    extends _$TokenErrorCopyWithImpl<$Res, _$_TokenError>
    implements _$$_TokenErrorCopyWith<$Res> {
  __$$_TokenErrorCopyWithImpl(
      _$_TokenError _value, $Res Function(_$_TokenError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? nonFieldErrors = freezed,
  }) {
    return _then(_$_TokenError(
      nonFieldErrors: freezed == nonFieldErrors
          ? _value._nonFieldErrors
          : nonFieldErrors // ignore: cast_nullable_to_non_nullable
              as List<NonFieldErrors>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenError implements _TokenError {
  const _$_TokenError({required final List<NonFieldErrors>? nonFieldErrors})
      : _nonFieldErrors = nonFieldErrors;

  factory _$_TokenError.fromJson(Map<String, dynamic> json) =>
      _$$_TokenErrorFromJson(json);

  final List<NonFieldErrors>? _nonFieldErrors;
  @override
  List<NonFieldErrors>? get nonFieldErrors {
    final value = _nonFieldErrors;
    if (value == null) return null;
    if (_nonFieldErrors is EqualUnmodifiableListView) return _nonFieldErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'TokenError(nonFieldErrors: $nonFieldErrors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenError &&
            const DeepCollectionEquality()
                .equals(other._nonFieldErrors, _nonFieldErrors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_nonFieldErrors));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenErrorCopyWith<_$_TokenError> get copyWith =>
      __$$_TokenErrorCopyWithImpl<_$_TokenError>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenErrorToJson(
      this,
    );
  }
}

abstract class _TokenError implements TokenError {
  const factory _TokenError(
      {required final List<NonFieldErrors>? nonFieldErrors}) = _$_TokenError;

  factory _TokenError.fromJson(Map<String, dynamic> json) =
      _$_TokenError.fromJson;

  @override
  List<NonFieldErrors>? get nonFieldErrors;
  @override
  @JsonKey(ignore: true)
  _$$_TokenErrorCopyWith<_$_TokenError> get copyWith =>
      throw _privateConstructorUsedError;
}

NonFieldErrors _$NonFieldErrorsFromJson(Map<String, dynamic> json) {
  return _NonFieldErrors.fromJson(json);
}

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
      _$NonFieldErrorsCopyWithImpl<$Res, NonFieldErrors>;
  @useResult
  $Res call({String? message, String? code});
}

/// @nodoc
class _$NonFieldErrorsCopyWithImpl<$Res, $Val extends NonFieldErrors>
    implements $NonFieldErrorsCopyWith<$Res> {
  _$NonFieldErrorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_value.copyWith(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NonFieldErrorsCopyWith<$Res>
    implements $NonFieldErrorsCopyWith<$Res> {
  factory _$$_NonFieldErrorsCopyWith(
          _$_NonFieldErrors value, $Res Function(_$_NonFieldErrors) then) =
      __$$_NonFieldErrorsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? code});
}

/// @nodoc
class __$$_NonFieldErrorsCopyWithImpl<$Res>
    extends _$NonFieldErrorsCopyWithImpl<$Res, _$_NonFieldErrors>
    implements _$$_NonFieldErrorsCopyWith<$Res> {
  __$$_NonFieldErrorsCopyWithImpl(
      _$_NonFieldErrors _value, $Res Function(_$_NonFieldErrors) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_NonFieldErrors(
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      code: freezed == code
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
            other is _$_NonFieldErrors &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NonFieldErrorsCopyWith<_$_NonFieldErrors> get copyWith =>
      __$$_NonFieldErrorsCopyWithImpl<_$_NonFieldErrors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NonFieldErrorsToJson(
      this,
    );
  }
}

abstract class _NonFieldErrors implements NonFieldErrors {
  const factory _NonFieldErrors(
      {required final String? message,
      required final String? code}) = _$_NonFieldErrors;

  factory _NonFieldErrors.fromJson(Map<String, dynamic> json) =
      _$_NonFieldErrors.fromJson;

  @override
  String? get message;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$_NonFieldErrorsCopyWith<_$_NonFieldErrors> get copyWith =>
      throw _privateConstructorUsedError;
}
