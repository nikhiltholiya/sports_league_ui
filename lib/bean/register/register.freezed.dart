// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterData _$RegisterDataFromJson(Map<String, dynamic> json) {
  return _RegisterData.fromJson(json);
}

/// @nodoc
class _$RegisterDataTearOff {
  const _$RegisterDataTearOff();

  _RegisterData call({required Register? register}) {
    return _RegisterData(
      register: register,
    );
  }

  RegisterData fromJson(Map<String, Object?> json) {
    return RegisterData.fromJson(json);
  }
}

/// @nodoc
const $RegisterData = _$RegisterDataTearOff();

/// @nodoc
mixin _$RegisterData {
  Register? get register => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterDataCopyWith<RegisterData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterDataCopyWith<$Res> {
  factory $RegisterDataCopyWith(
          RegisterData value, $Res Function(RegisterData) then) =
      _$RegisterDataCopyWithImpl<$Res>;
  $Res call({Register? register});

  $RegisterCopyWith<$Res>? get register;
}

/// @nodoc
class _$RegisterDataCopyWithImpl<$Res> implements $RegisterDataCopyWith<$Res> {
  _$RegisterDataCopyWithImpl(this._value, this._then);

  final RegisterData _value;
  // ignore: unused_field
  final $Res Function(RegisterData) _then;

  @override
  $Res call({
    Object? register = freezed,
  }) {
    return _then(_value.copyWith(
      register: register == freezed
          ? _value.register
          : register // ignore: cast_nullable_to_non_nullable
              as Register?,
    ));
  }

  @override
  $RegisterCopyWith<$Res>? get register {
    if (_value.register == null) {
      return null;
    }

    return $RegisterCopyWith<$Res>(_value.register!, (value) {
      return _then(_value.copyWith(register: value));
    });
  }
}

/// @nodoc
abstract class _$RegisterDataCopyWith<$Res>
    implements $RegisterDataCopyWith<$Res> {
  factory _$RegisterDataCopyWith(
          _RegisterData value, $Res Function(_RegisterData) then) =
      __$RegisterDataCopyWithImpl<$Res>;
  @override
  $Res call({Register? register});

  @override
  $RegisterCopyWith<$Res>? get register;
}

/// @nodoc
class __$RegisterDataCopyWithImpl<$Res> extends _$RegisterDataCopyWithImpl<$Res>
    implements _$RegisterDataCopyWith<$Res> {
  __$RegisterDataCopyWithImpl(
      _RegisterData _value, $Res Function(_RegisterData) _then)
      : super(_value, (v) => _then(v as _RegisterData));

  @override
  _RegisterData get _value => super._value as _RegisterData;

  @override
  $Res call({
    Object? register = freezed,
  }) {
    return _then(_RegisterData(
      register: register == freezed
          ? _value.register
          : register // ignore: cast_nullable_to_non_nullable
              as Register?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_RegisterData implements _RegisterData {
  const _$_RegisterData({required this.register});

  factory _$_RegisterData.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterDataFromJson(json);

  @override
  final Register? register;

  @override
  String toString() {
    return 'RegisterData(register: $register)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _RegisterData &&
            const DeepCollectionEquality().equals(other.register, register));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(register));

  @JsonKey(ignore: true)
  @override
  _$RegisterDataCopyWith<_RegisterData> get copyWith =>
      __$RegisterDataCopyWithImpl<_RegisterData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterDataToJson(this);
  }
}

abstract class _RegisterData implements RegisterData {
  const factory _RegisterData({required Register? register}) = _$_RegisterData;

  factory _RegisterData.fromJson(Map<String, dynamic> json) =
      _$_RegisterData.fromJson;

  @override
  Register? get register;
  @override
  @JsonKey(ignore: true)
  _$RegisterDataCopyWith<_RegisterData> get copyWith =>
      throw _privateConstructorUsedError;
}

Register _$RegisterFromJson(Map<String, dynamic> json) {
  return _Register.fromJson(json);
}

/// @nodoc
class _$RegisterTearOff {
  const _$RegisterTearOff();

  _Register call(
      {required bool? success,
      required String? token,
      required String? refreshToken,
      required Errors? errors}) {
    return _Register(
      success: success,
      token: token,
      refreshToken: refreshToken,
      errors: errors,
    );
  }

  Register fromJson(Map<String, Object?> json) {
    return Register.fromJson(json);
  }
}

/// @nodoc
const $Register = _$RegisterTearOff();

/// @nodoc
mixin _$Register {
  bool? get success => throw _privateConstructorUsedError;
  String? get token => throw _privateConstructorUsedError;
  String? get refreshToken => throw _privateConstructorUsedError;
  Errors? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RegisterCopyWith<Register> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterCopyWith<$Res> {
  factory $RegisterCopyWith(Register value, $Res Function(Register) then) =
      _$RegisterCopyWithImpl<$Res>;
  $Res call(
      {bool? success, String? token, String? refreshToken, Errors? errors});

  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class _$RegisterCopyWithImpl<$Res> implements $RegisterCopyWith<$Res> {
  _$RegisterCopyWithImpl(this._value, this._then);

  final Register _value;
  // ignore: unused_field
  final $Res Function(Register) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? token = freezed,
    Object? refreshToken = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Errors?,
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
abstract class _$RegisterCopyWith<$Res> implements $RegisterCopyWith<$Res> {
  factory _$RegisterCopyWith(_Register value, $Res Function(_Register) then) =
      __$RegisterCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool? success, String? token, String? refreshToken, Errors? errors});

  @override
  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class __$RegisterCopyWithImpl<$Res> extends _$RegisterCopyWithImpl<$Res>
    implements _$RegisterCopyWith<$Res> {
  __$RegisterCopyWithImpl(_Register _value, $Res Function(_Register) _then)
      : super(_value, (v) => _then(v as _Register));

  @override
  _Register get _value => super._value as _Register;

  @override
  $Res call({
    Object? success = freezed,
    Object? token = freezed,
    Object? refreshToken = freezed,
    Object? errors = freezed,
  }) {
    return _then(_Register(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: refreshToken == freezed
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Errors?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Register implements _Register {
  const _$_Register(
      {required this.success,
      required this.token,
      required this.refreshToken,
      required this.errors});

  factory _$_Register.fromJson(Map<String, dynamic> json) =>
      _$$_RegisterFromJson(json);

  @override
  final bool? success;
  @override
  final String? token;
  @override
  final String? refreshToken;
  @override
  final Errors? errors;

  @override
  String toString() {
    return 'Register(success: $success, token: $token, refreshToken: $refreshToken, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Register &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality()
                .equals(other.refreshToken, refreshToken) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(refreshToken),
      const DeepCollectionEquality().hash(errors));

  @JsonKey(ignore: true)
  @override
  _$RegisterCopyWith<_Register> get copyWith =>
      __$RegisterCopyWithImpl<_Register>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterToJson(this);
  }
}

abstract class _Register implements Register {
  const factory _Register(
      {required bool? success,
      required String? token,
      required String? refreshToken,
      required Errors? errors}) = _$_Register;

  factory _Register.fromJson(Map<String, dynamic> json) = _$_Register.fromJson;

  @override
  bool? get success;
  @override
  String? get token;
  @override
  String? get refreshToken;
  @override
  Errors? get errors;
  @override
  @JsonKey(ignore: true)
  _$RegisterCopyWith<_Register> get copyWith =>
      throw _privateConstructorUsedError;
}

Errors _$ErrorsFromJson(Map<String, dynamic> json) {
  return _Errors.fromJson(json);
}

/// @nodoc
class _$ErrorsTearOff {
  const _$ErrorsTearOff();

  _Errors call(
      {required List<ErrorMsg>? email,
      required List<ErrorMsg>? password1,
      required List<ErrorMsg>? password2}) {
    return _Errors(
      email: email,
      password1: password1,
      password2: password2,
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
  List<ErrorMsg>? get email => throw _privateConstructorUsedError;
  List<ErrorMsg>? get password1 => throw _privateConstructorUsedError;
  List<ErrorMsg>? get password2 => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorsCopyWith<Errors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorsCopyWith<$Res> {
  factory $ErrorsCopyWith(Errors value, $Res Function(Errors) then) =
      _$ErrorsCopyWithImpl<$Res>;
  $Res call(
      {List<ErrorMsg>? email,
      List<ErrorMsg>? password1,
      List<ErrorMsg>? password2});
}

/// @nodoc
class _$ErrorsCopyWithImpl<$Res> implements $ErrorsCopyWith<$Res> {
  _$ErrorsCopyWithImpl(this._value, this._then);

  final Errors _value;
  // ignore: unused_field
  final $Res Function(Errors) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password1 = freezed,
    Object? password2 = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as List<ErrorMsg>?,
      password1: password1 == freezed
          ? _value.password1
          : password1 // ignore: cast_nullable_to_non_nullable
              as List<ErrorMsg>?,
      password2: password2 == freezed
          ? _value.password2
          : password2 // ignore: cast_nullable_to_non_nullable
              as List<ErrorMsg>?,
    ));
  }
}

/// @nodoc
abstract class _$ErrorsCopyWith<$Res> implements $ErrorsCopyWith<$Res> {
  factory _$ErrorsCopyWith(_Errors value, $Res Function(_Errors) then) =
      __$ErrorsCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ErrorMsg>? email,
      List<ErrorMsg>? password1,
      List<ErrorMsg>? password2});
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
    Object? email = freezed,
    Object? password1 = freezed,
    Object? password2 = freezed,
  }) {
    return _then(_Errors(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as List<ErrorMsg>?,
      password1: password1 == freezed
          ? _value.password1
          : password1 // ignore: cast_nullable_to_non_nullable
              as List<ErrorMsg>?,
      password2: password2 == freezed
          ? _value.password2
          : password2 // ignore: cast_nullable_to_non_nullable
              as List<ErrorMsg>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Errors implements _Errors {
  const _$_Errors(
      {required this.email, required this.password1, required this.password2});

  factory _$_Errors.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorsFromJson(json);

  @override
  final List<ErrorMsg>? email;
  @override
  final List<ErrorMsg>? password1;
  @override
  final List<ErrorMsg>? password2;

  @override
  String toString() {
    return 'Errors(email: $email, password1: $password1, password2: $password2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Errors &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password1, password1) &&
            const DeepCollectionEquality().equals(other.password2, password2));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password1),
      const DeepCollectionEquality().hash(password2));

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
      {required List<ErrorMsg>? email,
      required List<ErrorMsg>? password1,
      required List<ErrorMsg>? password2}) = _$_Errors;

  factory _Errors.fromJson(Map<String, dynamic> json) = _$_Errors.fromJson;

  @override
  List<ErrorMsg>? get email;
  @override
  List<ErrorMsg>? get password1;
  @override
  List<ErrorMsg>? get password2;
  @override
  @JsonKey(ignore: true)
  _$ErrorsCopyWith<_Errors> get copyWith => throw _privateConstructorUsedError;
}

ErrorMsg _$ErrorMsgFromJson(Map<String, dynamic> json) {
  return _ErrorMsg.fromJson(json);
}

/// @nodoc
class _$ErrorMsgTearOff {
  const _$ErrorMsgTearOff();

  _ErrorMsg call({required String? message, required String? code}) {
    return _ErrorMsg(
      message: message,
      code: code,
    );
  }

  ErrorMsg fromJson(Map<String, Object?> json) {
    return ErrorMsg.fromJson(json);
  }
}

/// @nodoc
const $ErrorMsg = _$ErrorMsgTearOff();

/// @nodoc
mixin _$ErrorMsg {
  String? get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorMsgCopyWith<ErrorMsg> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorMsgCopyWith<$Res> {
  factory $ErrorMsgCopyWith(ErrorMsg value, $Res Function(ErrorMsg) then) =
      _$ErrorMsgCopyWithImpl<$Res>;
  $Res call({String? message, String? code});
}

/// @nodoc
class _$ErrorMsgCopyWithImpl<$Res> implements $ErrorMsgCopyWith<$Res> {
  _$ErrorMsgCopyWithImpl(this._value, this._then);

  final ErrorMsg _value;
  // ignore: unused_field
  final $Res Function(ErrorMsg) _then;

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
abstract class _$ErrorMsgCopyWith<$Res> implements $ErrorMsgCopyWith<$Res> {
  factory _$ErrorMsgCopyWith(_ErrorMsg value, $Res Function(_ErrorMsg) then) =
      __$ErrorMsgCopyWithImpl<$Res>;
  @override
  $Res call({String? message, String? code});
}

/// @nodoc
class __$ErrorMsgCopyWithImpl<$Res> extends _$ErrorMsgCopyWithImpl<$Res>
    implements _$ErrorMsgCopyWith<$Res> {
  __$ErrorMsgCopyWithImpl(_ErrorMsg _value, $Res Function(_ErrorMsg) _then)
      : super(_value, (v) => _then(v as _ErrorMsg));

  @override
  _ErrorMsg get _value => super._value as _ErrorMsg;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_ErrorMsg(
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
class _$_ErrorMsg implements _ErrorMsg {
  const _$_ErrorMsg({required this.message, required this.code});

  factory _$_ErrorMsg.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorMsgFromJson(json);

  @override
  final String? message;
  @override
  final String? code;

  @override
  String toString() {
    return 'ErrorMsg(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorMsg &&
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
  _$ErrorMsgCopyWith<_ErrorMsg> get copyWith =>
      __$ErrorMsgCopyWithImpl<_ErrorMsg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorMsgToJson(this);
  }
}

abstract class _ErrorMsg implements ErrorMsg {
  const factory _ErrorMsg({required String? message, required String? code}) =
      _$_ErrorMsg;

  factory _ErrorMsg.fromJson(Map<String, dynamic> json) = _$_ErrorMsg.fromJson;

  @override
  String? get message;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$ErrorMsgCopyWith<_ErrorMsg> get copyWith =>
      throw _privateConstructorUsedError;
}
