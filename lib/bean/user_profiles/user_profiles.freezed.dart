// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_profiles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileData _$UserProfileDataFromJson(Map<String, dynamic> json) {
  return _UserProfileData.fromJson(json);
}

/// @nodoc
mixin _$UserProfileData {
  UserProfiles? get userProfiles => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfileDataCopyWith<UserProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfileDataCopyWith<$Res> {
  factory $UserProfileDataCopyWith(
          UserProfileData value, $Res Function(UserProfileData) then) =
      _$UserProfileDataCopyWithImpl<$Res, UserProfileData>;
  @useResult
  $Res call({UserProfiles? userProfiles});

  $UserProfilesCopyWith<$Res>? get userProfiles;
}

/// @nodoc
class _$UserProfileDataCopyWithImpl<$Res, $Val extends UserProfileData>
    implements $UserProfileDataCopyWith<$Res> {
  _$UserProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfiles = freezed,
  }) {
    return _then(_value.copyWith(
      userProfiles: freezed == userProfiles
          ? _value.userProfiles
          : userProfiles // ignore: cast_nullable_to_non_nullable
              as UserProfiles?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserProfilesCopyWith<$Res>? get userProfiles {
    if (_value.userProfiles == null) {
      return null;
    }

    return $UserProfilesCopyWith<$Res>(_value.userProfiles!, (value) {
      return _then(_value.copyWith(userProfiles: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserProfileDataCopyWith<$Res>
    implements $UserProfileDataCopyWith<$Res> {
  factory _$$_UserProfileDataCopyWith(
          _$_UserProfileData value, $Res Function(_$_UserProfileData) then) =
      __$$_UserProfileDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserProfiles? userProfiles});

  @override
  $UserProfilesCopyWith<$Res>? get userProfiles;
}

/// @nodoc
class __$$_UserProfileDataCopyWithImpl<$Res>
    extends _$UserProfileDataCopyWithImpl<$Res, _$_UserProfileData>
    implements _$$_UserProfileDataCopyWith<$Res> {
  __$$_UserProfileDataCopyWithImpl(
      _$_UserProfileData _value, $Res Function(_$_UserProfileData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userProfiles = freezed,
  }) {
    return _then(_$_UserProfileData(
      userProfiles: freezed == userProfiles
          ? _value.userProfiles
          : userProfiles // ignore: cast_nullable_to_non_nullable
              as UserProfiles?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfileData implements _UserProfileData {
  const _$_UserProfileData({required this.userProfiles});

  factory _$_UserProfileData.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileDataFromJson(json);

  @override
  final UserProfiles? userProfiles;

  @override
  String toString() {
    return 'UserProfileData(userProfiles: $userProfiles)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfileData &&
            (identical(other.userProfiles, userProfiles) ||
                other.userProfiles == userProfiles));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userProfiles);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserProfileDataCopyWith<_$_UserProfileData> get copyWith =>
      __$$_UserProfileDataCopyWithImpl<_$_UserProfileData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileDataToJson(
      this,
    );
  }
}

abstract class _UserProfileData implements UserProfileData {
  const factory _UserProfileData({required final UserProfiles? userProfiles}) =
      _$_UserProfileData;

  factory _UserProfileData.fromJson(Map<String, dynamic> json) =
      _$_UserProfileData.fromJson;

  @override
  UserProfiles? get userProfiles;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileDataCopyWith<_$_UserProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfiles _$UserProfilesFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
mixin _$UserProfiles {
  String? get userId => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  int? get matchesCount => throw _privateConstructorUsedError;
  int? get wonCount => throw _privateConstructorUsedError;
  int? get drawCount => throw _privateConstructorUsedError;
  int? get lostCount => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserProfilesCopyWith<UserProfiles> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserProfilesCopyWith<$Res> {
  factory $UserProfilesCopyWith(
          UserProfiles value, $Res Function(UserProfiles) then) =
      _$UserProfilesCopyWithImpl<$Res, UserProfiles>;
  @useResult
  $Res call(
      {String? userId,
      String? firstName,
      String? lastName,
      int? matchesCount,
      int? wonCount,
      int? drawCount,
      int? lostCount,
      String? city,
      String? state,
      String? dob,
      int? age,
      String? rating,
      String? picture});
}

/// @nodoc
class _$UserProfilesCopyWithImpl<$Res, $Val extends UserProfiles>
    implements $UserProfilesCopyWith<$Res> {
  _$UserProfilesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? matchesCount = freezed,
    Object? wonCount = freezed,
    Object? drawCount = freezed,
    Object? lostCount = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? dob = freezed,
    Object? age = freezed,
    Object? rating = freezed,
    Object? picture = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      matchesCount: freezed == matchesCount
          ? _value.matchesCount
          : matchesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      wonCount: freezed == wonCount
          ? _value.wonCount
          : wonCount // ignore: cast_nullable_to_non_nullable
              as int?,
      drawCount: freezed == drawCount
          ? _value.drawCount
          : drawCount // ignore: cast_nullable_to_non_nullable
              as int?,
      lostCount: freezed == lostCount
          ? _value.lostCount
          : lostCount // ignore: cast_nullable_to_non_nullable
              as int?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserProfileCopyWith<$Res>
    implements $UserProfilesCopyWith<$Res> {
  factory _$$_UserProfileCopyWith(
          _$_UserProfile value, $Res Function(_$_UserProfile) then) =
      __$$_UserProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? firstName,
      String? lastName,
      int? matchesCount,
      int? wonCount,
      int? drawCount,
      int? lostCount,
      String? city,
      String? state,
      String? dob,
      int? age,
      String? rating,
      String? picture});
}

/// @nodoc
class __$$_UserProfileCopyWithImpl<$Res>
    extends _$UserProfilesCopyWithImpl<$Res, _$_UserProfile>
    implements _$$_UserProfileCopyWith<$Res> {
  __$$_UserProfileCopyWithImpl(
      _$_UserProfile _value, $Res Function(_$_UserProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? matchesCount = freezed,
    Object? wonCount = freezed,
    Object? drawCount = freezed,
    Object? lostCount = freezed,
    Object? city = freezed,
    Object? state = freezed,
    Object? dob = freezed,
    Object? age = freezed,
    Object? rating = freezed,
    Object? picture = freezed,
  }) {
    return _then(_$_UserProfile(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      matchesCount: freezed == matchesCount
          ? _value.matchesCount
          : matchesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      wonCount: freezed == wonCount
          ? _value.wonCount
          : wonCount // ignore: cast_nullable_to_non_nullable
              as int?,
      drawCount: freezed == drawCount
          ? _value.drawCount
          : drawCount // ignore: cast_nullable_to_non_nullable
              as int?,
      lostCount: freezed == lostCount
          ? _value.lostCount
          : lostCount // ignore: cast_nullable_to_non_nullable
              as int?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      age: freezed == age
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserProfile implements _UserProfile {
  const _$_UserProfile(
      {required this.userId,
      required this.firstName,
      required this.lastName,
      required this.matchesCount,
      required this.wonCount,
      required this.drawCount,
      required this.lostCount,
      required this.city,
      required this.state,
      required this.dob,
      required this.age,
      required this.rating,
      required this.picture});

  factory _$_UserProfile.fromJson(Map<String, dynamic> json) =>
      _$$_UserProfileFromJson(json);

  @override
  final String? userId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final int? matchesCount;
  @override
  final int? wonCount;
  @override
  final int? drawCount;
  @override
  final int? lostCount;
  @override
  final String? city;
  @override
  final String? state;
  @override
  final String? dob;
  @override
  final int? age;
  @override
  final String? rating;
  @override
  final String? picture;

  @override
  String toString() {
    return 'UserProfiles(userId: $userId, firstName: $firstName, lastName: $lastName, matchesCount: $matchesCount, wonCount: $wonCount, drawCount: $drawCount, lostCount: $lostCount, city: $city, state: $state, dob: $dob, age: $age, rating: $rating, picture: $picture)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserProfile &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.matchesCount, matchesCount) ||
                other.matchesCount == matchesCount) &&
            (identical(other.wonCount, wonCount) ||
                other.wonCount == wonCount) &&
            (identical(other.drawCount, drawCount) ||
                other.drawCount == drawCount) &&
            (identical(other.lostCount, lostCount) ||
                other.lostCount == lostCount) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.age, age) || other.age == age) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.picture, picture) || other.picture == picture));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      firstName,
      lastName,
      matchesCount,
      wonCount,
      drawCount,
      lostCount,
      city,
      state,
      dob,
      age,
      rating,
      picture);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserProfileCopyWith<_$_UserProfile> get copyWith =>
      __$$_UserProfileCopyWithImpl<_$_UserProfile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileToJson(
      this,
    );
  }
}

abstract class _UserProfile implements UserProfiles {
  const factory _UserProfile(
      {required final String? userId,
      required final String? firstName,
      required final String? lastName,
      required final int? matchesCount,
      required final int? wonCount,
      required final int? drawCount,
      required final int? lostCount,
      required final String? city,
      required final String? state,
      required final String? dob,
      required final int? age,
      required final String? rating,
      required final String? picture}) = _$_UserProfile;

  factory _UserProfile.fromJson(Map<String, dynamic> json) =
      _$_UserProfile.fromJson;

  @override
  String? get userId;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  int? get matchesCount;
  @override
  int? get wonCount;
  @override
  int? get drawCount;
  @override
  int? get lostCount;
  @override
  String? get city;
  @override
  String? get state;
  @override
  String? get dob;
  @override
  int? get age;
  @override
  String? get rating;
  @override
  String? get picture;
  @override
  @JsonKey(ignore: true)
  _$$_UserProfileCopyWith<_$_UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
