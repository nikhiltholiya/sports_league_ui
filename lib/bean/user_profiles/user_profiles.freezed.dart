// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_profiles.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserProfileData _$UserProfileDataFromJson(Map<String, dynamic> json) {
  return _UserProfileData.fromJson(json);
}

/// @nodoc
class _$UserProfileDataTearOff {
  const _$UserProfileDataTearOff();

  _UserProfileData call({required UserProfiles? userProfiles}) {
    return _UserProfileData(
      userProfiles: userProfiles,
    );
  }

  UserProfileData fromJson(Map<String, Object?> json) {
    return UserProfileData.fromJson(json);
  }
}

/// @nodoc
const $UserProfileData = _$UserProfileDataTearOff();

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
      _$UserProfileDataCopyWithImpl<$Res>;
  $Res call({UserProfiles? userProfiles});

  $UserProfilesCopyWith<$Res>? get userProfiles;
}

/// @nodoc
class _$UserProfileDataCopyWithImpl<$Res>
    implements $UserProfileDataCopyWith<$Res> {
  _$UserProfileDataCopyWithImpl(this._value, this._then);

  final UserProfileData _value;
  // ignore: unused_field
  final $Res Function(UserProfileData) _then;

  @override
  $Res call({
    Object? userProfiles = freezed,
  }) {
    return _then(_value.copyWith(
      userProfiles: userProfiles == freezed
          ? _value.userProfiles
          : userProfiles // ignore: cast_nullable_to_non_nullable
              as UserProfiles?,
    ));
  }

  @override
  $UserProfilesCopyWith<$Res>? get userProfiles {
    if (_value.userProfiles == null) {
      return null;
    }

    return $UserProfilesCopyWith<$Res>(_value.userProfiles!, (value) {
      return _then(_value.copyWith(userProfiles: value));
    });
  }
}

/// @nodoc
abstract class _$UserProfileDataCopyWith<$Res>
    implements $UserProfileDataCopyWith<$Res> {
  factory _$UserProfileDataCopyWith(
          _UserProfileData value, $Res Function(_UserProfileData) then) =
      __$UserProfileDataCopyWithImpl<$Res>;
  @override
  $Res call({UserProfiles? userProfiles});

  @override
  $UserProfilesCopyWith<$Res>? get userProfiles;
}

/// @nodoc
class __$UserProfileDataCopyWithImpl<$Res>
    extends _$UserProfileDataCopyWithImpl<$Res>
    implements _$UserProfileDataCopyWith<$Res> {
  __$UserProfileDataCopyWithImpl(
      _UserProfileData _value, $Res Function(_UserProfileData) _then)
      : super(_value, (v) => _then(v as _UserProfileData));

  @override
  _UserProfileData get _value => super._value as _UserProfileData;

  @override
  $Res call({
    Object? userProfiles = freezed,
  }) {
    return _then(_UserProfileData(
      userProfiles: userProfiles == freezed
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
            other is _UserProfileData &&
            const DeepCollectionEquality()
                .equals(other.userProfiles, userProfiles));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(userProfiles));

  @JsonKey(ignore: true)
  @override
  _$UserProfileDataCopyWith<_UserProfileData> get copyWith =>
      __$UserProfileDataCopyWithImpl<_UserProfileData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileDataToJson(this);
  }
}

abstract class _UserProfileData implements UserProfileData {
  const factory _UserProfileData({required UserProfiles? userProfiles}) =
      _$_UserProfileData;

  factory _UserProfileData.fromJson(Map<String, dynamic> json) =
      _$_UserProfileData.fromJson;

  @override
  UserProfiles? get userProfiles;
  @override
  @JsonKey(ignore: true)
  _$UserProfileDataCopyWith<_UserProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

UserProfiles _$UserProfilesFromJson(Map<String, dynamic> json) {
  return _UserProfile.fromJson(json);
}

/// @nodoc
class _$UserProfilesTearOff {
  const _$UserProfilesTearOff();

  _UserProfile call(
      {required String? userId,
      required String? firstName,
      required String? lastName,
      required int? matchesCount,
      required int? wonCount,
      required int? drawCount,
      required int? lostCount,
      required String? city,
      required String? state,
      required String? dob,
      required int? age,
      required String? rating,
      required String? picture}) {
    return _UserProfile(
      userId: userId,
      firstName: firstName,
      lastName: lastName,
      matchesCount: matchesCount,
      wonCount: wonCount,
      drawCount: drawCount,
      lostCount: lostCount,
      city: city,
      state: state,
      dob: dob,
      age: age,
      rating: rating,
      picture: picture,
    );
  }

  UserProfiles fromJson(Map<String, Object?> json) {
    return UserProfiles.fromJson(json);
  }
}

/// @nodoc
const $UserProfiles = _$UserProfilesTearOff();

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
      _$UserProfilesCopyWithImpl<$Res>;
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
class _$UserProfilesCopyWithImpl<$Res> implements $UserProfilesCopyWith<$Res> {
  _$UserProfilesCopyWithImpl(this._value, this._then);

  final UserProfiles _value;
  // ignore: unused_field
  final $Res Function(UserProfiles) _then;

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
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      matchesCount: matchesCount == freezed
          ? _value.matchesCount
          : matchesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      wonCount: wonCount == freezed
          ? _value.wonCount
          : wonCount // ignore: cast_nullable_to_non_nullable
              as int?,
      drawCount: drawCount == freezed
          ? _value.drawCount
          : drawCount // ignore: cast_nullable_to_non_nullable
              as int?,
      lostCount: lostCount == freezed
          ? _value.lostCount
          : lostCount // ignore: cast_nullable_to_non_nullable
              as int?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserProfileCopyWith<$Res>
    implements $UserProfilesCopyWith<$Res> {
  factory _$UserProfileCopyWith(
          _UserProfile value, $Res Function(_UserProfile) then) =
      __$UserProfileCopyWithImpl<$Res>;
  @override
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
class __$UserProfileCopyWithImpl<$Res> extends _$UserProfilesCopyWithImpl<$Res>
    implements _$UserProfileCopyWith<$Res> {
  __$UserProfileCopyWithImpl(
      _UserProfile _value, $Res Function(_UserProfile) _then)
      : super(_value, (v) => _then(v as _UserProfile));

  @override
  _UserProfile get _value => super._value as _UserProfile;

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
    return _then(_UserProfile(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      matchesCount: matchesCount == freezed
          ? _value.matchesCount
          : matchesCount // ignore: cast_nullable_to_non_nullable
              as int?,
      wonCount: wonCount == freezed
          ? _value.wonCount
          : wonCount // ignore: cast_nullable_to_non_nullable
              as int?,
      drawCount: drawCount == freezed
          ? _value.drawCount
          : drawCount // ignore: cast_nullable_to_non_nullable
              as int?,
      lostCount: lostCount == freezed
          ? _value.lostCount
          : lostCount // ignore: cast_nullable_to_non_nullable
              as int?,
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
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
            other is _UserProfile &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality()
                .equals(other.matchesCount, matchesCount) &&
            const DeepCollectionEquality().equals(other.wonCount, wonCount) &&
            const DeepCollectionEquality().equals(other.drawCount, drawCount) &&
            const DeepCollectionEquality().equals(other.lostCount, lostCount) &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.dob, dob) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.picture, picture));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(matchesCount),
      const DeepCollectionEquality().hash(wonCount),
      const DeepCollectionEquality().hash(drawCount),
      const DeepCollectionEquality().hash(lostCount),
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(dob),
      const DeepCollectionEquality().hash(age),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(picture));

  @JsonKey(ignore: true)
  @override
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      __$UserProfileCopyWithImpl<_UserProfile>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserProfileToJson(this);
  }
}

abstract class _UserProfile implements UserProfiles {
  const factory _UserProfile(
      {required String? userId,
      required String? firstName,
      required String? lastName,
      required int? matchesCount,
      required int? wonCount,
      required int? drawCount,
      required int? lostCount,
      required String? city,
      required String? state,
      required String? dob,
      required int? age,
      required String? rating,
      required String? picture}) = _$_UserProfile;

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
  _$UserProfileCopyWith<_UserProfile> get copyWith =>
      throw _privateConstructorUsedError;
}
