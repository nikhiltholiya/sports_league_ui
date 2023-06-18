// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RegisterData _$RegisterDataFromJson(Map<String, dynamic> json) {
  return _RegisterData.fromJson(json);
}

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
      _$RegisterDataCopyWithImpl<$Res, RegisterData>;
  @useResult
  $Res call({Register? register});

  $RegisterCopyWith<$Res>? get register;
}

/// @nodoc
class _$RegisterDataCopyWithImpl<$Res, $Val extends RegisterData>
    implements $RegisterDataCopyWith<$Res> {
  _$RegisterDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? register = freezed,
  }) {
    return _then(_value.copyWith(
      register: freezed == register
          ? _value.register
          : register // ignore: cast_nullable_to_non_nullable
              as Register?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $RegisterCopyWith<$Res>? get register {
    if (_value.register == null) {
      return null;
    }

    return $RegisterCopyWith<$Res>(_value.register!, (value) {
      return _then(_value.copyWith(register: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_RegisterDataCopyWith<$Res>
    implements $RegisterDataCopyWith<$Res> {
  factory _$$_RegisterDataCopyWith(
          _$_RegisterData value, $Res Function(_$_RegisterData) then) =
      __$$_RegisterDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Register? register});

  @override
  $RegisterCopyWith<$Res>? get register;
}

/// @nodoc
class __$$_RegisterDataCopyWithImpl<$Res>
    extends _$RegisterDataCopyWithImpl<$Res, _$_RegisterData>
    implements _$$_RegisterDataCopyWith<$Res> {
  __$$_RegisterDataCopyWithImpl(
      _$_RegisterData _value, $Res Function(_$_RegisterData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? register = freezed,
  }) {
    return _then(_$_RegisterData(
      register: freezed == register
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
            other is _$_RegisterData &&
            (identical(other.register, register) ||
                other.register == register));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, register);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterDataCopyWith<_$_RegisterData> get copyWith =>
      __$$_RegisterDataCopyWithImpl<_$_RegisterData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterDataToJson(
      this,
    );
  }
}

abstract class _RegisterData implements RegisterData {
  const factory _RegisterData({required final Register? register}) =
      _$_RegisterData;

  factory _RegisterData.fromJson(Map<String, dynamic> json) =
      _$_RegisterData.fromJson;

  @override
  Register? get register;
  @override
  @JsonKey(ignore: true)
  _$$_RegisterDataCopyWith<_$_RegisterData> get copyWith =>
      throw _privateConstructorUsedError;
}

Register _$RegisterFromJson(Map<String, dynamic> json) {
  return _Register.fromJson(json);
}

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
      _$RegisterCopyWithImpl<$Res, Register>;
  @useResult
  $Res call(
      {bool? success, String? token, String? refreshToken, Errors? errors});

  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class _$RegisterCopyWithImpl<$Res, $Val extends Register>
    implements $RegisterCopyWith<$Res> {
  _$RegisterCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? token = freezed,
    Object? refreshToken = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Errors?,
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
abstract class _$$_RegisterCopyWith<$Res> implements $RegisterCopyWith<$Res> {
  factory _$$_RegisterCopyWith(
          _$_Register value, $Res Function(_$_Register) then) =
      __$$_RegisterCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool? success, String? token, String? refreshToken, Errors? errors});

  @override
  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class __$$_RegisterCopyWithImpl<$Res>
    extends _$RegisterCopyWithImpl<$Res, _$_Register>
    implements _$$_RegisterCopyWith<$Res> {
  __$$_RegisterCopyWithImpl(
      _$_Register _value, $Res Function(_$_Register) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? token = freezed,
    Object? refreshToken = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$_Register(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String?,
      refreshToken: freezed == refreshToken
          ? _value.refreshToken
          : refreshToken // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
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
            other is _$_Register &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.token, token) || other.token == token) &&
            (identical(other.refreshToken, refreshToken) ||
                other.refreshToken == refreshToken) &&
            (identical(other.errors, errors) || other.errors == errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, success, token, refreshToken, errors);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      __$$_RegisterCopyWithImpl<_$_Register>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RegisterToJson(
      this,
    );
  }
}

abstract class _Register implements Register {
  const factory _Register(
      {required final bool? success,
      required final String? token,
      required final String? refreshToken,
      required final Errors? errors}) = _$_Register;

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
  _$$_RegisterCopyWith<_$_Register> get copyWith =>
      throw _privateConstructorUsedError;
}

Errors _$ErrorsFromJson(Map<String, dynamic> json) {
  return _Errors.fromJson(json);
}

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
      _$ErrorsCopyWithImpl<$Res, Errors>;
  @useResult
  $Res call(
      {List<ErrorMsg>? email,
      List<ErrorMsg>? password1,
      List<ErrorMsg>? password2});
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
    Object? email = freezed,
    Object? password1 = freezed,
    Object? password2 = freezed,
  }) {
    return _then(_value.copyWith(
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as List<ErrorMsg>?,
      password1: freezed == password1
          ? _value.password1
          : password1 // ignore: cast_nullable_to_non_nullable
              as List<ErrorMsg>?,
      password2: freezed == password2
          ? _value.password2
          : password2 // ignore: cast_nullable_to_non_nullable
              as List<ErrorMsg>?,
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
      {List<ErrorMsg>? email,
      List<ErrorMsg>? password1,
      List<ErrorMsg>? password2});
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
    Object? email = freezed,
    Object? password1 = freezed,
    Object? password2 = freezed,
  }) {
    return _then(_$_Errors(
      email: freezed == email
          ? _value._email
          : email // ignore: cast_nullable_to_non_nullable
              as List<ErrorMsg>?,
      password1: freezed == password1
          ? _value._password1
          : password1 // ignore: cast_nullable_to_non_nullable
              as List<ErrorMsg>?,
      password2: freezed == password2
          ? _value._password2
          : password2 // ignore: cast_nullable_to_non_nullable
              as List<ErrorMsg>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Errors implements _Errors {
  const _$_Errors(
      {required final List<ErrorMsg>? email,
      required final List<ErrorMsg>? password1,
      required final List<ErrorMsg>? password2})
      : _email = email,
        _password1 = password1,
        _password2 = password2;

  factory _$_Errors.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorsFromJson(json);

  final List<ErrorMsg>? _email;
  @override
  List<ErrorMsg>? get email {
    final value = _email;
    if (value == null) return null;
    if (_email is EqualUnmodifiableListView) return _email;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ErrorMsg>? _password1;
  @override
  List<ErrorMsg>? get password1 {
    final value = _password1;
    if (value == null) return null;
    if (_password1 is EqualUnmodifiableListView) return _password1;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ErrorMsg>? _password2;
  @override
  List<ErrorMsg>? get password2 {
    final value = _password2;
    if (value == null) return null;
    if (_password2 is EqualUnmodifiableListView) return _password2;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Errors(email: $email, password1: $password1, password2: $password2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Errors &&
            const DeepCollectionEquality().equals(other._email, _email) &&
            const DeepCollectionEquality()
                .equals(other._password1, _password1) &&
            const DeepCollectionEquality()
                .equals(other._password2, _password2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_email),
      const DeepCollectionEquality().hash(_password1),
      const DeepCollectionEquality().hash(_password2));

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
      {required final List<ErrorMsg>? email,
      required final List<ErrorMsg>? password1,
      required final List<ErrorMsg>? password2}) = _$_Errors;

  factory _Errors.fromJson(Map<String, dynamic> json) = _$_Errors.fromJson;

  @override
  List<ErrorMsg>? get email;
  @override
  List<ErrorMsg>? get password1;
  @override
  List<ErrorMsg>? get password2;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorsCopyWith<_$_Errors> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorMsg _$ErrorMsgFromJson(Map<String, dynamic> json) {
  return _ErrorMsg.fromJson(json);
}

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
      _$ErrorMsgCopyWithImpl<$Res, ErrorMsg>;
  @useResult
  $Res call({String? message, String? code});
}

/// @nodoc
class _$ErrorMsgCopyWithImpl<$Res, $Val extends ErrorMsg>
    implements $ErrorMsgCopyWith<$Res> {
  _$ErrorMsgCopyWithImpl(this._value, this._then);

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
abstract class _$$_ErrorMsgCopyWith<$Res> implements $ErrorMsgCopyWith<$Res> {
  factory _$$_ErrorMsgCopyWith(
          _$_ErrorMsg value, $Res Function(_$_ErrorMsg) then) =
      __$$_ErrorMsgCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? code});
}

/// @nodoc
class __$$_ErrorMsgCopyWithImpl<$Res>
    extends _$ErrorMsgCopyWithImpl<$Res, _$_ErrorMsg>
    implements _$$_ErrorMsgCopyWith<$Res> {
  __$$_ErrorMsgCopyWithImpl(
      _$_ErrorMsg _value, $Res Function(_$_ErrorMsg) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_ErrorMsg(
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
            other is _$_ErrorMsg &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorMsgCopyWith<_$_ErrorMsg> get copyWith =>
      __$$_ErrorMsgCopyWithImpl<_$_ErrorMsg>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorMsgToJson(
      this,
    );
  }
}

abstract class _ErrorMsg implements ErrorMsg {
  const factory _ErrorMsg(
      {required final String? message,
      required final String? code}) = _$_ErrorMsg;

  factory _ErrorMsg.fromJson(Map<String, dynamic> json) = _$_ErrorMsg.fromJson;

  @override
  String? get message;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorMsgCopyWith<_$_ErrorMsg> get copyWith =>
      throw _privateConstructorUsedError;
}
