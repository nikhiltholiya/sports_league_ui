// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'password_change.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PasswordChangeData _$PasswordChangeDataFromJson(Map<String, dynamic> json) {
  return _PasswordChangeData.fromJson(json);
}

/// @nodoc
class _$PasswordChangeDataTearOff {
  const _$PasswordChangeDataTearOff();

  _PasswordChangeData call({required PasswordChange? passwordChange}) {
    return _PasswordChangeData(
      passwordChange: passwordChange,
    );
  }

  PasswordChangeData fromJson(Map<String, Object?> json) {
    return PasswordChangeData.fromJson(json);
  }
}

/// @nodoc
const $PasswordChangeData = _$PasswordChangeDataTearOff();

/// @nodoc
mixin _$PasswordChangeData {
  PasswordChange? get passwordChange => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangeDataCopyWith<PasswordChangeData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangeDataCopyWith<$Res> {
  factory $PasswordChangeDataCopyWith(
          PasswordChangeData value, $Res Function(PasswordChangeData) then) =
      _$PasswordChangeDataCopyWithImpl<$Res>;
  $Res call({PasswordChange? passwordChange});

  $PasswordChangeCopyWith<$Res>? get passwordChange;
}

/// @nodoc
class _$PasswordChangeDataCopyWithImpl<$Res>
    implements $PasswordChangeDataCopyWith<$Res> {
  _$PasswordChangeDataCopyWithImpl(this._value, this._then);

  final PasswordChangeData _value;
  // ignore: unused_field
  final $Res Function(PasswordChangeData) _then;

  @override
  $Res call({
    Object? passwordChange = freezed,
  }) {
    return _then(_value.copyWith(
      passwordChange: passwordChange == freezed
          ? _value.passwordChange
          : passwordChange // ignore: cast_nullable_to_non_nullable
              as PasswordChange?,
    ));
  }

  @override
  $PasswordChangeCopyWith<$Res>? get passwordChange {
    if (_value.passwordChange == null) {
      return null;
    }

    return $PasswordChangeCopyWith<$Res>(_value.passwordChange!, (value) {
      return _then(_value.copyWith(passwordChange: value));
    });
  }
}

/// @nodoc
abstract class _$PasswordChangeDataCopyWith<$Res>
    implements $PasswordChangeDataCopyWith<$Res> {
  factory _$PasswordChangeDataCopyWith(
          _PasswordChangeData value, $Res Function(_PasswordChangeData) then) =
      __$PasswordChangeDataCopyWithImpl<$Res>;
  @override
  $Res call({PasswordChange? passwordChange});

  @override
  $PasswordChangeCopyWith<$Res>? get passwordChange;
}

/// @nodoc
class __$PasswordChangeDataCopyWithImpl<$Res>
    extends _$PasswordChangeDataCopyWithImpl<$Res>
    implements _$PasswordChangeDataCopyWith<$Res> {
  __$PasswordChangeDataCopyWithImpl(
      _PasswordChangeData _value, $Res Function(_PasswordChangeData) _then)
      : super(_value, (v) => _then(v as _PasswordChangeData));

  @override
  _PasswordChangeData get _value => super._value as _PasswordChangeData;

  @override
  $Res call({
    Object? passwordChange = freezed,
  }) {
    return _then(_PasswordChangeData(
      passwordChange: passwordChange == freezed
          ? _value.passwordChange
          : passwordChange // ignore: cast_nullable_to_non_nullable
              as PasswordChange?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PasswordChangeData implements _PasswordChangeData {
  const _$_PasswordChangeData({required this.passwordChange});

  factory _$_PasswordChangeData.fromJson(Map<String, dynamic> json) =>
      _$$_PasswordChangeDataFromJson(json);

  @override
  final PasswordChange? passwordChange;

  @override
  String toString() {
    return 'PasswordChangeData(passwordChange: $passwordChange)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordChangeData &&
            const DeepCollectionEquality()
                .equals(other.passwordChange, passwordChange));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(passwordChange));

  @JsonKey(ignore: true)
  @override
  _$PasswordChangeDataCopyWith<_PasswordChangeData> get copyWith =>
      __$PasswordChangeDataCopyWithImpl<_PasswordChangeData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PasswordChangeDataToJson(this);
  }
}

abstract class _PasswordChangeData implements PasswordChangeData {
  const factory _PasswordChangeData({required PasswordChange? passwordChange}) =
      _$_PasswordChangeData;

  factory _PasswordChangeData.fromJson(Map<String, dynamic> json) =
      _$_PasswordChangeData.fromJson;

  @override
  PasswordChange? get passwordChange;
  @override
  @JsonKey(ignore: true)
  _$PasswordChangeDataCopyWith<_PasswordChangeData> get copyWith =>
      throw _privateConstructorUsedError;
}

PasswordChange _$PasswordChangeFromJson(Map<String, dynamic> json) {
  return _PasswordChange.fromJson(json);
}

/// @nodoc
class _$PasswordChangeTearOff {
  const _$PasswordChangeTearOff();

  _PasswordChange call(
      {required bool? success,
      required String? refreshToken,
      required Errors? errors,
      required String? token}) {
    return _PasswordChange(
      success: success,
      refreshToken: refreshToken,
      errors: errors,
      token: token,
    );
  }

  PasswordChange fromJson(Map<String, Object?> json) {
    return PasswordChange.fromJson(json);
  }
}

/// @nodoc
const $PasswordChange = _$PasswordChangeTearOff();

/// @nodoc
mixin _$PasswordChange {
  bool? get success => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  Errors? get errors => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordChangeCopyWith<PasswordChange> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordChangeCopyWith<$Res> {
  factory $PasswordChangeCopyWith(
          PasswordChange value, $Res Function(PasswordChange) then) =
      _$PasswordChangeCopyWithImpl<$Res>;
  $Res call(
      {bool? success, String? refreshToken, Errors? errors, String? token});

  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class _$PasswordChangeCopyWithImpl<$Res>
    implements $PasswordChangeCopyWith<$Res> {
  _$PasswordChangeCopyWithImpl(this._value, this._then);

  final PasswordChange _value;
  // ignore: unused_field
  final $Res Function(PasswordChange) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? refreshToken = freezed,
    Object? errors = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Errors?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $ErrorsCopyWith<$Res>? get errors {
    if (_value.errors == null) {
      return null;
    }

    return $ErrorsCopyWith<$Res>(_value.errors!, (value) {
      return _then(_value.copyWith(errors: value));
    });
  }
}

/// @nodoc
abstract class _$PasswordChangeCopyWith<$Res>
    implements $PasswordChangeCopyWith<$Res> {
  factory _$PasswordChangeCopyWith(
          _PasswordChange value, $Res Function(_PasswordChange) then) =
      __$PasswordChangeCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? success, String? refreshToken, Errors? errors, String? token});

  @override
  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class __$PasswordChangeCopyWithImpl<$Res>
    extends _$PasswordChangeCopyWithImpl<$Res>
    implements _$PasswordChangeCopyWith<$Res> {
  __$PasswordChangeCopyWithImpl(
      _PasswordChange _value, $Res Function(_PasswordChange) _then)
      : super(_value, (v) => _then(v as _PasswordChange));

  @override
  _PasswordChange get _value => super._value as _PasswordChange;

  @override
  $Res call({
    Object? success = freezed,
    Object? refreshToken = freezed,
    Object? errors = freezed,
    Object? token = freezed,
  }) {
    return _then(_PasswordChange(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Errors?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_PasswordChange implements _PasswordChange {
  const _$_PasswordChange(
      {required this.success,
      required this.refreshToken,
      required this.errors,
      required this.token});

  factory _$_PasswordChange.fromJson(Map<String, dynamic> json) =>
      _$$_PasswordChangeFromJson(json);

  @override
  final bool? success;
  @override
  final String? refreshToken;
  @override
  final Errors? errors;
  @override
  final String? token;

  @override
  String toString() {
    return 'PasswordChange(success: $success, refreshToken: $refreshToken, errors: $errors, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordChange &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken) &&
            const DeepCollectionEquality().equals(other.errors, errors) &&
            const DeepCollectionEquality().equals(other.token, token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(refreshToken),
      const DeepCollectionEquality().hash(errors),
      const DeepCollectionEquality().hash(token));

  @JsonKey(ignore: true)
  @override
  _$PasswordChangeCopyWith<_PasswordChange> get copyWith =>
      __$PasswordChangeCopyWithImpl<_PasswordChange>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PasswordChangeToJson(this);
  }
}

abstract class _PasswordChange implements PasswordChange {
  const factory _PasswordChange(
      {required bool? success,
      required String? refreshToken,
      required Errors? errors,
      required String? token}) = _$_PasswordChange;

  factory _PasswordChange.fromJson(Map<String, dynamic> json) =
      _$_PasswordChange.fromJson;

  @override
  bool? get success;
  @override
  String? get refreshToken;
  @override
  Errors? get errors;
  @override
  String? get token;
  @override
  @JsonKey(ignore: true)
  _$PasswordChangeCopyWith<_PasswordChange> get copyWith =>
      throw _privateConstructorUsedError;
}

Errors _$ErrorsFromJson(Map<String, dynamic> json) {
  return _Errors.fromJson(json);
}

/// @nodoc
class _$ErrorsTearOff {
  const _$ErrorsTearOff();

  _Errors call(
      {required List<PasswordCriteria>? oldPassword,
      required List<PasswordCriteria>? newPassword}) {
    return _Errors(
      oldPassword: oldPassword,
      newPassword: newPassword,
    );
  }

  Errors fromJson(Map<String, Object?> json) {
    return Errors.fromJson(json);
  }
}

/// @nodoc
const $Errors = _$ErrorsTearOff();

/// @nodoc
mixin _$Errors {
  List<PasswordCriteria>? get oldPassword => throw _privateConstructorUsedError;
  List<PasswordCriteria>? get newPassword => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorsCopyWith<Errors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorsCopyWith<$Res> {
  factory $ErrorsCopyWith(Errors value, $Res Function(Errors) then) =
      _$ErrorsCopyWithImpl<$Res>;
  $Res call(
      {List<PasswordCriteria>? oldPassword,
      List<PasswordCriteria>? newPassword});
}

/// @nodoc
class _$ErrorsCopyWithImpl<$Res> implements $ErrorsCopyWith<$Res> {
  _$ErrorsCopyWithImpl(this._value, this._then);

  final Errors _value;
  // ignore: unused_field
  final $Res Function(Errors) _then;

  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_value.copyWith(
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as List<PasswordCriteria>?,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as List<PasswordCriteria>?,
    ));
  }
}

/// @nodoc
abstract class _$ErrorsCopyWith<$Res> implements $ErrorsCopyWith<$Res> {
  factory _$ErrorsCopyWith(_Errors value, $Res Function(_Errors) then) =
      __$ErrorsCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<PasswordCriteria>? oldPassword,
      List<PasswordCriteria>? newPassword});
}

/// @nodoc
class __$ErrorsCopyWithImpl<$Res> extends _$ErrorsCopyWithImpl<$Res>
    implements _$ErrorsCopyWith<$Res> {
  __$ErrorsCopyWithImpl(_Errors _value, $Res Function(_Errors) _then)
      : super(_value, (v) => _then(v as _Errors));

  @override
  _Errors get _value => super._value as _Errors;

  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_Errors(
      oldPassword: oldPassword == freezed
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as List<PasswordCriteria>?,
      newPassword: newPassword == freezed
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as List<PasswordCriteria>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Errors implements _Errors {
  const _$_Errors({required this.oldPassword, required this.newPassword});

  factory _$_Errors.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorsFromJson(json);

  @override
  final List<PasswordCriteria>? oldPassword;
  @override
  final List<PasswordCriteria>? newPassword;

  @override
  String toString() {
    return 'Errors(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Errors &&
            const DeepCollectionEquality()
                .equals(other.oldPassword, oldPassword) &&
            const DeepCollectionEquality()
                .equals(other.newPassword, newPassword));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(oldPassword),
      const DeepCollectionEquality().hash(newPassword));

  @JsonKey(ignore: true)
  @override
  _$ErrorsCopyWith<_Errors> get copyWith =>
      __$ErrorsCopyWithImpl<_Errors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorsToJson(this);
  }
}

abstract class _Errors implements Errors {
  const factory _Errors(
      {required List<PasswordCriteria>? oldPassword,
      required List<PasswordCriteria>? newPassword}) = _$_Errors;

  factory _Errors.fromJson(Map<String, dynamic> json) = _$_Errors.fromJson;

  @override
  List<PasswordCriteria>? get oldPassword;
  @override
  List<PasswordCriteria>? get newPassword;
  @override
  @JsonKey(ignore: true)
  _$ErrorsCopyWith<_Errors> get copyWith => throw _privateConstructorUsedError;
}

PasswordCriteria _$PasswordCriteriaFromJson(Map<String, dynamic> json) {
  return _PasswordCriteria.fromJson(json);
}

/// @nodoc
class _$PasswordCriteriaTearOff {
  const _$PasswordCriteriaTearOff();

  _PasswordCriteria call({required String? message, required String? code}) {
    return _PasswordCriteria(
      message: message,
      code: code,
    );
  }

  PasswordCriteria fromJson(Map<String, Object?> json) {
    return PasswordCriteria.fromJson(json);
  }
}

/// @nodoc
const $PasswordCriteria = _$PasswordCriteriaTearOff();

/// @nodoc
mixin _$PasswordCriteria {
  String? get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordCriteriaCopyWith<PasswordCriteria> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordCriteriaCopyWith<$Res> {
  factory $PasswordCriteriaCopyWith(
          PasswordCriteria value, $Res Function(PasswordCriteria) then) =
      _$PasswordCriteriaCopyWithImpl<$Res>;
  $Res call({String? message, String? code});
}

/// @nodoc
class _$PasswordCriteriaCopyWithImpl<$Res>
    implements $PasswordCriteriaCopyWith<$Res> {
  _$PasswordCriteriaCopyWithImpl(this._value, this._then);

  final PasswordCriteria _value;
  // ignore: unused_field
  final $Res Function(PasswordCriteria) _then;

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
abstract class _$PasswordCriteriaCopyWith<$Res>
    implements $PasswordCriteriaCopyWith<$Res> {
  factory _$PasswordCriteriaCopyWith(
          _PasswordCriteria value, $Res Function(_PasswordCriteria) then) =
      __$PasswordCriteriaCopyWithImpl<$Res>;
  @override
  $Res call({String? message, String? code});
}

/// @nodoc
class __$PasswordCriteriaCopyWithImpl<$Res>
    extends _$PasswordCriteriaCopyWithImpl<$Res>
    implements _$PasswordCriteriaCopyWith<$Res> {
  __$PasswordCriteriaCopyWithImpl(
      _PasswordCriteria _value, $Res Function(_PasswordCriteria) _then)
      : super(_value, (v) => _then(v as _PasswordCriteria));

  @override
  _PasswordCriteria get _value => super._value as _PasswordCriteria;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_PasswordCriteria(
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
class _$_PasswordCriteria implements _PasswordCriteria {
  const _$_PasswordCriteria({required this.message, required this.code});

  factory _$_PasswordCriteria.fromJson(Map<String, dynamic> json) =>
      _$$_PasswordCriteriaFromJson(json);

  @override
  final String? message;
  @override
  final String? code;

  @override
  String toString() {
    return 'PasswordCriteria(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _PasswordCriteria &&
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
  _$PasswordCriteriaCopyWith<_PasswordCriteria> get copyWith =>
      __$PasswordCriteriaCopyWithImpl<_PasswordCriteria>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PasswordCriteriaToJson(this);
  }
}

abstract class _PasswordCriteria implements PasswordCriteria {
  const factory _PasswordCriteria(
      {required String? message, required String? code}) = _$_PasswordCriteria;

  factory _PasswordCriteria.fromJson(Map<String, dynamic> json) =
      _$_PasswordCriteria.fromJson;

  @override
  String? get message;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$PasswordCriteriaCopyWith<_PasswordCriteria> get copyWith =>
      throw _privateConstructorUsedError;
}
