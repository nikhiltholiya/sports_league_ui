// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserQueryData _$UserQueryDataFromJson(Map<String, dynamic> json) {
  return _UserQueryData.fromJson(json);
}

/// @nodoc
class _$UserQueryDataTearOff {
  const _$UserQueryDataTearOff();

  _UserQueryData call({required UserQuery? userQuery}) {
    return _UserQueryData(
      userQuery: userQuery,
    );
  }

  UserQueryData fromJson(Map<String, Object?> json) {
    return UserQueryData.fromJson(json);
  }
}

/// @nodoc
const $UserQueryData = _$UserQueryDataTearOff();

/// @nodoc
mixin _$UserQueryData {
  UserQuery? get userQuery => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserQueryDataCopyWith<UserQueryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserQueryDataCopyWith<$Res> {
  factory $UserQueryDataCopyWith(
          UserQueryData value, $Res Function(UserQueryData) then) =
      _$UserQueryDataCopyWithImpl<$Res>;
  $Res call({UserQuery? userQuery});

  $UserQueryCopyWith<$Res>? get userQuery;
}

/// @nodoc
class _$UserQueryDataCopyWithImpl<$Res>
    implements $UserQueryDataCopyWith<$Res> {
  _$UserQueryDataCopyWithImpl(this._value, this._then);

  final UserQueryData _value;
  // ignore: unused_field
  final $Res Function(UserQueryData) _then;

  @override
  $Res call({
    Object? userQuery = freezed,
  }) {
    return _then(_value.copyWith(
      userQuery: userQuery == freezed
          ? _value.userQuery
          : userQuery // ignore: cast_nullable_to_non_nullable
              as UserQuery?,
    ));
  }

  @override
  $UserQueryCopyWith<$Res>? get userQuery {
    if (_value.userQuery == null) {
      return null;
    }

    return $UserQueryCopyWith<$Res>(_value.userQuery!, (value) {
      return _then(_value.copyWith(userQuery: value));
    });
  }
}

/// @nodoc
abstract class _$UserQueryDataCopyWith<$Res>
    implements $UserQueryDataCopyWith<$Res> {
  factory _$UserQueryDataCopyWith(
          _UserQueryData value, $Res Function(_UserQueryData) then) =
      __$UserQueryDataCopyWithImpl<$Res>;
  @override
  $Res call({UserQuery? userQuery});

  @override
  $UserQueryCopyWith<$Res>? get userQuery;
}

/// @nodoc
class __$UserQueryDataCopyWithImpl<$Res>
    extends _$UserQueryDataCopyWithImpl<$Res>
    implements _$UserQueryDataCopyWith<$Res> {
  __$UserQueryDataCopyWithImpl(
      _UserQueryData _value, $Res Function(_UserQueryData) _then)
      : super(_value, (v) => _then(v as _UserQueryData));

  @override
  _UserQueryData get _value => super._value as _UserQueryData;

  @override
  $Res call({
    Object? userQuery = freezed,
  }) {
    return _then(_UserQueryData(
      userQuery: userQuery == freezed
          ? _value.userQuery
          : userQuery // ignore: cast_nullable_to_non_nullable
              as UserQuery?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserQueryData implements _UserQueryData {
  const _$_UserQueryData({required this.userQuery});

  factory _$_UserQueryData.fromJson(Map<String, dynamic> json) =>
      _$$_UserQueryDataFromJson(json);

  @override
  final UserQuery? userQuery;

  @override
  String toString() {
    return 'UserQueryData(userQuery: $userQuery)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserQueryData &&
            const DeepCollectionEquality().equals(other.userQuery, userQuery));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userQuery));

  @JsonKey(ignore: true)
  @override
  _$UserQueryDataCopyWith<_UserQueryData> get copyWith =>
      __$UserQueryDataCopyWithImpl<_UserQueryData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserQueryDataToJson(this);
  }
}

abstract class _UserQueryData implements UserQueryData {
  const factory _UserQueryData({required UserQuery? userQuery}) =
      _$_UserQueryData;

  factory _UserQueryData.fromJson(Map<String, dynamic> json) =
      _$_UserQueryData.fromJson;

  @override
  UserQuery? get userQuery;
  @override
  @JsonKey(ignore: true)
  _$UserQueryDataCopyWith<_UserQueryData> get copyWith =>
      throw _privateConstructorUsedError;
}

UserQuery _$UserQueryFromJson(Map<String, dynamic> json) {
  return _UserQuery.fromJson(json);
}

/// @nodoc
class _$UserQueryTearOff {
  const _$UserQueryTearOff();

  _UserQuery call(
      {required String? createdAt,
      required String? message,
      required String? id,
      required String? updatedAt}) {
    return _UserQuery(
      createdAt: createdAt,
      message: message,
      id: id,
      updatedAt: updatedAt,
    );
  }

  UserQuery fromJson(Map<String, Object?> json) {
    return UserQuery.fromJson(json);
  }
}

/// @nodoc
const $UserQuery = _$UserQueryTearOff();

/// @nodoc
mixin _$UserQuery {
  String? get createdAt => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserQueryCopyWith<UserQuery> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserQueryCopyWith<$Res> {
  factory $UserQueryCopyWith(UserQuery value, $Res Function(UserQuery) then) =
      _$UserQueryCopyWithImpl<$Res>;
  $Res call(
      {String? createdAt, String? message, String? id, String? updatedAt});
}

/// @nodoc
class _$UserQueryCopyWithImpl<$Res> implements $UserQueryCopyWith<$Res> {
  _$UserQueryCopyWithImpl(this._value, this._then);

  final UserQuery _value;
  // ignore: unused_field
  final $Res Function(UserQuery) _then;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? message = freezed,
    Object? id = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$UserQueryCopyWith<$Res> implements $UserQueryCopyWith<$Res> {
  factory _$UserQueryCopyWith(
          _UserQuery value, $Res Function(_UserQuery) then) =
      __$UserQueryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? createdAt, String? message, String? id, String? updatedAt});
}

/// @nodoc
class __$UserQueryCopyWithImpl<$Res> extends _$UserQueryCopyWithImpl<$Res>
    implements _$UserQueryCopyWith<$Res> {
  __$UserQueryCopyWithImpl(_UserQuery _value, $Res Function(_UserQuery) _then)
      : super(_value, (v) => _then(v as _UserQuery));

  @override
  _UserQuery get _value => super._value as _UserQuery;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? message = freezed,
    Object? id = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_UserQuery(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserQuery implements _UserQuery {
  const _$_UserQuery(
      {required this.createdAt,
      required this.message,
      required this.id,
      required this.updatedAt});

  factory _$_UserQuery.fromJson(Map<String, dynamic> json) =>
      _$$_UserQueryFromJson(json);

  @override
  final String? createdAt;
  @override
  final String? message;
  @override
  final String? id;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'UserQuery(createdAt: $createdAt, message: $message, id: $id, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserQuery &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$UserQueryCopyWith<_UserQuery> get copyWith =>
      __$UserQueryCopyWithImpl<_UserQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserQueryToJson(this);
  }
}

abstract class _UserQuery implements UserQuery {
  const factory _UserQuery(
      {required String? createdAt,
      required String? message,
      required String? id,
      required String? updatedAt}) = _$_UserQuery;

  factory _UserQuery.fromJson(Map<String, dynamic> json) =
      _$_UserQuery.fromJson;

  @override
  String? get createdAt;
  @override
  String? get message;
  @override
  String? get id;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$UserQueryCopyWith<_UserQuery> get copyWith =>
      throw _privateConstructorUsedError;
}
