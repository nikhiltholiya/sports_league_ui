// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserQueryData _$UserQueryDataFromJson(Map<String, dynamic> json) {
  return _UserQueryData.fromJson(json);
}

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
      _$UserQueryDataCopyWithImpl<$Res, UserQueryData>;
  @useResult
  $Res call({UserQuery? userQuery});

  $UserQueryCopyWith<$Res>? get userQuery;
}

/// @nodoc
class _$UserQueryDataCopyWithImpl<$Res, $Val extends UserQueryData>
    implements $UserQueryDataCopyWith<$Res> {
  _$UserQueryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userQuery = freezed,
  }) {
    return _then(_value.copyWith(
      userQuery: freezed == userQuery
          ? _value.userQuery
          : userQuery // ignore: cast_nullable_to_non_nullable
              as UserQuery?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserQueryCopyWith<$Res>? get userQuery {
    if (_value.userQuery == null) {
      return null;
    }

    return $UserQueryCopyWith<$Res>(_value.userQuery!, (value) {
      return _then(_value.copyWith(userQuery: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserQueryDataCopyWith<$Res>
    implements $UserQueryDataCopyWith<$Res> {
  factory _$$_UserQueryDataCopyWith(
          _$_UserQueryData value, $Res Function(_$_UserQueryData) then) =
      __$$_UserQueryDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserQuery? userQuery});

  @override
  $UserQueryCopyWith<$Res>? get userQuery;
}

/// @nodoc
class __$$_UserQueryDataCopyWithImpl<$Res>
    extends _$UserQueryDataCopyWithImpl<$Res, _$_UserQueryData>
    implements _$$_UserQueryDataCopyWith<$Res> {
  __$$_UserQueryDataCopyWithImpl(
      _$_UserQueryData _value, $Res Function(_$_UserQueryData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userQuery = freezed,
  }) {
    return _then(_$_UserQueryData(
      userQuery: freezed == userQuery
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
            other is _$_UserQueryData &&
            (identical(other.userQuery, userQuery) ||
                other.userQuery == userQuery));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userQuery);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserQueryDataCopyWith<_$_UserQueryData> get copyWith =>
      __$$_UserQueryDataCopyWithImpl<_$_UserQueryData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserQueryDataToJson(
      this,
    );
  }
}

abstract class _UserQueryData implements UserQueryData {
  const factory _UserQueryData({required final UserQuery? userQuery}) =
      _$_UserQueryData;

  factory _UserQueryData.fromJson(Map<String, dynamic> json) =
      _$_UserQueryData.fromJson;

  @override
  UserQuery? get userQuery;
  @override
  @JsonKey(ignore: true)
  _$$_UserQueryDataCopyWith<_$_UserQueryData> get copyWith =>
      throw _privateConstructorUsedError;
}

UserQuery _$UserQueryFromJson(Map<String, dynamic> json) {
  return _UserQuery.fromJson(json);
}

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
      _$UserQueryCopyWithImpl<$Res, UserQuery>;
  @useResult
  $Res call(
      {String? createdAt, String? message, String? id, String? updatedAt});
}

/// @nodoc
class _$UserQueryCopyWithImpl<$Res, $Val extends UserQuery>
    implements $UserQueryCopyWith<$Res> {
  _$UserQueryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? message = freezed,
    Object? id = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserQueryCopyWith<$Res> implements $UserQueryCopyWith<$Res> {
  factory _$$_UserQueryCopyWith(
          _$_UserQuery value, $Res Function(_$_UserQuery) then) =
      __$$_UserQueryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? createdAt, String? message, String? id, String? updatedAt});
}

/// @nodoc
class __$$_UserQueryCopyWithImpl<$Res>
    extends _$UserQueryCopyWithImpl<$Res, _$_UserQuery>
    implements _$$_UserQueryCopyWith<$Res> {
  __$$_UserQueryCopyWithImpl(
      _$_UserQuery _value, $Res Function(_$_UserQuery) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? message = freezed,
    Object? id = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_UserQuery(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
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
            other is _$_UserQuery &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, createdAt, message, id, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserQueryCopyWith<_$_UserQuery> get copyWith =>
      __$$_UserQueryCopyWithImpl<_$_UserQuery>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserQueryToJson(
      this,
    );
  }
}

abstract class _UserQuery implements UserQuery {
  const factory _UserQuery(
      {required final String? createdAt,
      required final String? message,
      required final String? id,
      required final String? updatedAt}) = _$_UserQuery;

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
  _$$_UserQueryCopyWith<_$_UserQuery> get copyWith =>
      throw _privateConstructorUsedError;
}
