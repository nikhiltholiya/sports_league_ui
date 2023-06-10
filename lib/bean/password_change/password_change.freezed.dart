// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_change.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PasswordChangeData _$PasswordChangeDataFromJson(Map<String, dynamic> json) {
  return _PasswordChangeData.fromJson(json);
}

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
      _$PasswordChangeDataCopyWithImpl<$Res, PasswordChangeData>;
  @useResult
  $Res call({PasswordChange? passwordChange});

  $PasswordChangeCopyWith<$Res>? get passwordChange;
}

/// @nodoc
class _$PasswordChangeDataCopyWithImpl<$Res, $Val extends PasswordChangeData>
    implements $PasswordChangeDataCopyWith<$Res> {
  _$PasswordChangeDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordChange = freezed,
  }) {
    return _then(_value.copyWith(
      passwordChange: freezed == passwordChange
          ? _value.passwordChange
          : passwordChange // ignore: cast_nullable_to_non_nullable
              as PasswordChange?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordChangeCopyWith<$Res>? get passwordChange {
    if (_value.passwordChange == null) {
      return null;
    }

    return $PasswordChangeCopyWith<$Res>(_value.passwordChange!, (value) {
      return _then(_value.copyWith(passwordChange: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PasswordChangeDataCopyWith<$Res>
    implements $PasswordChangeDataCopyWith<$Res> {
  factory _$$_PasswordChangeDataCopyWith(_$_PasswordChangeData value,
          $Res Function(_$_PasswordChangeData) then) =
      __$$_PasswordChangeDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PasswordChange? passwordChange});

  @override
  $PasswordChangeCopyWith<$Res>? get passwordChange;
}

/// @nodoc
class __$$_PasswordChangeDataCopyWithImpl<$Res>
    extends _$PasswordChangeDataCopyWithImpl<$Res, _$_PasswordChangeData>
    implements _$$_PasswordChangeDataCopyWith<$Res> {
  __$$_PasswordChangeDataCopyWithImpl(
      _$_PasswordChangeData _value, $Res Function(_$_PasswordChangeData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? passwordChange = freezed,
  }) {
    return _then(_$_PasswordChangeData(
      passwordChange: freezed == passwordChange
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
            other is _$_PasswordChangeData &&
            (identical(other.passwordChange, passwordChange) ||
                other.passwordChange == passwordChange));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, passwordChange);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangeDataCopyWith<_$_PasswordChangeData> get copyWith =>
      __$$_PasswordChangeDataCopyWithImpl<_$_PasswordChangeData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PasswordChangeDataToJson(
      this,
    );
  }
}

abstract class _PasswordChangeData implements PasswordChangeData {
  const factory _PasswordChangeData(
      {required final PasswordChange? passwordChange}) = _$_PasswordChangeData;

  factory _PasswordChangeData.fromJson(Map<String, dynamic> json) =
      _$_PasswordChangeData.fromJson;

  @override
  PasswordChange? get passwordChange;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordChangeDataCopyWith<_$_PasswordChangeData> get copyWith =>
      throw _privateConstructorUsedError;
}

PasswordChange _$PasswordChangeFromJson(Map<String, dynamic> json) {
  return _PasswordChange.fromJson(json);
}

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
      _$PasswordChangeCopyWithImpl<$Res, PasswordChange>;
  @useResult
  $Res call(
      {bool? success, String? refreshToken, Errors? errors, String? token});

  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class _$PasswordChangeCopyWithImpl<$Res, $Val extends PasswordChange>
    implements $PasswordChangeCopyWith<$Res> {
  _$PasswordChangeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? refreshToken = freezed,
    Object? errors = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Errors?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ErrorsCopyWith<$Res>? get errors {
    if (_value.errors == null) {
      return null;
    }

    return $ErrorsCopyWith<$Res>(_value.errors!, (value) {
      return _then(_value.copyWith(errors: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_PasswordChangeCopyWith<$Res>
    implements $PasswordChangeCopyWith<$Res> {
  factory _$$_PasswordChangeCopyWith(
          _$_PasswordChange value, $Res Function(_$_PasswordChange) then) =
      __$$_PasswordChangeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success, String? refreshToken, Errors? errors, String? token});

  @override
  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class __$$_PasswordChangeCopyWithImpl<$Res>
    extends _$PasswordChangeCopyWithImpl<$Res, _$_PasswordChange>
    implements _$$_PasswordChangeCopyWith<$Res> {
  __$$_PasswordChangeCopyWithImpl(
      _$_PasswordChange _value, $Res Function(_$_PasswordChange) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? refreshToken = freezed,
    Object? errors = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_PasswordChange(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Errors?,
      token: freezed == token
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
            other is _$_PasswordChange &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.errors, errors) || other.errors == errors) &&
            (identical(other.token, token) || other.token == token));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, refreshToken, errors, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordChangeCopyWith<_$_PasswordChange> get copyWith =>
      __$$_PasswordChangeCopyWithImpl<_$_PasswordChange>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PasswordChangeToJson(
      this,
    );
  }
}

abstract class _PasswordChange implements PasswordChange {
  const factory _PasswordChange(
      {required final bool? success,
      required final String? refreshToken,
      required final Errors? errors,
      required final String? token}) = _$_PasswordChange;

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
  _$$_PasswordChangeCopyWith<_$_PasswordChange> get copyWith =>
      throw _privateConstructorUsedError;
}

Errors _$ErrorsFromJson(Map<String, dynamic> json) {
  return _Errors.fromJson(json);
}

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
      _$ErrorsCopyWithImpl<$Res, Errors>;
  @useResult
  $Res call(
      {List<PasswordCriteria>? oldPassword,
      List<PasswordCriteria>? newPassword});
}

/// @nodoc
class _$ErrorsCopyWithImpl<$Res, $Val extends Errors>
    implements $ErrorsCopyWith<$Res> {
  _$ErrorsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_value.copyWith(
      oldPassword: freezed == oldPassword
          ? _value.oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as List<PasswordCriteria>?,
      newPassword: freezed == newPassword
          ? _value.newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as List<PasswordCriteria>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ErrorsCopyWith<$Res> implements $ErrorsCopyWith<$Res> {
  factory _$$_ErrorsCopyWith(_$_Errors value, $Res Function(_$_Errors) then) =
      __$$_ErrorsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<PasswordCriteria>? oldPassword,
      List<PasswordCriteria>? newPassword});
}

/// @nodoc
class __$$_ErrorsCopyWithImpl<$Res>
    extends _$ErrorsCopyWithImpl<$Res, _$_Errors>
    implements _$$_ErrorsCopyWith<$Res> {
  __$$_ErrorsCopyWithImpl(_$_Errors _value, $Res Function(_$_Errors) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? oldPassword = freezed,
    Object? newPassword = freezed,
  }) {
    return _then(_$_Errors(
      oldPassword: freezed == oldPassword
          ? _value._oldPassword
          : oldPassword // ignore: cast_nullable_to_non_nullable
              as List<PasswordCriteria>?,
      newPassword: freezed == newPassword
          ? _value._newPassword
          : newPassword // ignore: cast_nullable_to_non_nullable
              as List<PasswordCriteria>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Errors implements _Errors {
  const _$_Errors(
      {required final List<PasswordCriteria>? oldPassword,
      required final List<PasswordCriteria>? newPassword})
      : _oldPassword = oldPassword,
        _newPassword = newPassword;

  factory _$_Errors.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorsFromJson(json);

  final List<PasswordCriteria>? _oldPassword;
  @override
  List<PasswordCriteria>? get oldPassword {
    final value = _oldPassword;
    if (value == null) return null;
    if (_oldPassword is EqualUnmodifiableListView) return _oldPassword;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<PasswordCriteria>? _newPassword;
  @override
  List<PasswordCriteria>? get newPassword {
    final value = _newPassword;
    if (value == null) return null;
    if (_newPassword is EqualUnmodifiableListView) return _newPassword;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Errors(oldPassword: $oldPassword, newPassword: $newPassword)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Errors &&
            const DeepCollectionEquality()
                .equals(other._oldPassword, _oldPassword) &&
            const DeepCollectionEquality()
                .equals(other._newPassword, _newPassword));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_oldPassword),
      const DeepCollectionEquality().hash(_newPassword));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorsCopyWith<_$_Errors> get copyWith =>
      __$$_ErrorsCopyWithImpl<_$_Errors>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorsToJson(
      this,
    );
  }
}

abstract class _Errors implements Errors {
  const factory _Errors(
      {required final List<PasswordCriteria>? oldPassword,
      required final List<PasswordCriteria>? newPassword}) = _$_Errors;

  factory _Errors.fromJson(Map<String, dynamic> json) = _$_Errors.fromJson;

  @override
  List<PasswordCriteria>? get oldPassword;
  @override
  List<PasswordCriteria>? get newPassword;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorsCopyWith<_$_Errors> get copyWith =>
      throw _privateConstructorUsedError;
}

PasswordCriteria _$PasswordCriteriaFromJson(Map<String, dynamic> json) {
  return _PasswordCriteria.fromJson(json);
}

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
      _$PasswordCriteriaCopyWithImpl<$Res, PasswordCriteria>;
  @useResult
  $Res call({String? message, String? code});
}

/// @nodoc
class _$PasswordCriteriaCopyWithImpl<$Res, $Val extends PasswordCriteria>
    implements $PasswordCriteriaCopyWith<$Res> {
  _$PasswordCriteriaCopyWithImpl(this._value, this._then);

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
abstract class _$$_PasswordCriteriaCopyWith<$Res>
    implements $PasswordCriteriaCopyWith<$Res> {
  factory _$$_PasswordCriteriaCopyWith(
          _$_PasswordCriteria value, $Res Function(_$_PasswordCriteria) then) =
      __$$_PasswordCriteriaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? code});
}

/// @nodoc
class __$$_PasswordCriteriaCopyWithImpl<$Res>
    extends _$PasswordCriteriaCopyWithImpl<$Res, _$_PasswordCriteria>
    implements _$$_PasswordCriteriaCopyWith<$Res> {
  __$$_PasswordCriteriaCopyWithImpl(
      _$_PasswordCriteria _value, $Res Function(_$_PasswordCriteria) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_PasswordCriteria(
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
            other is _$_PasswordCriteria &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PasswordCriteriaCopyWith<_$_PasswordCriteria> get copyWith =>
      __$$_PasswordCriteriaCopyWithImpl<_$_PasswordCriteria>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PasswordCriteriaToJson(
      this,
    );
  }
}

abstract class _PasswordCriteria implements PasswordCriteria {
  const factory _PasswordCriteria(
      {required final String? message,
      required final String? code}) = _$_PasswordCriteria;

  factory _PasswordCriteria.fromJson(Map<String, dynamic> json) =
      _$_PasswordCriteria.fromJson;

  @override
  String? get message;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordCriteriaCopyWith<_$_PasswordCriteria> get copyWith =>
      throw _privateConstructorUsedError;
}
