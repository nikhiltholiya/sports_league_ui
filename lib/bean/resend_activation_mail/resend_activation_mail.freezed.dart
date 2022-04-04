// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'resend_activation_mail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResendActivationMailData _$ResendActivationMailDataFromJson(
    Map<String, dynamic> json) {
  return _ResendActivationMailData.fromJson(json);
}

/// @nodoc
class _$ResendActivationMailDataTearOff {
  const _$ResendActivationMailDataTearOff();

  _ResendActivationMailData call(
      {required ResendActivationEmail? resendActivationEmail}) {
    return _ResendActivationMailData(
      resendActivationEmail: resendActivationEmail,
    );
  }

  ResendActivationMailData fromJson(Map<String, Object?> json) {
    return ResendActivationMailData.fromJson(json);
  }
}

/// @nodoc
const $ResendActivationMailData = _$ResendActivationMailDataTearOff();

/// @nodoc
mixin _$ResendActivationMailData {
  ResendActivationEmail? get resendActivationEmail =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResendActivationMailDataCopyWith<ResendActivationMailData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendActivationMailDataCopyWith<$Res> {
  factory $ResendActivationMailDataCopyWith(ResendActivationMailData value,
          $Res Function(ResendActivationMailData) then) =
      _$ResendActivationMailDataCopyWithImpl<$Res>;
  $Res call({ResendActivationEmail? resendActivationEmail});

  $ResendActivationEmailCopyWith<$Res>? get resendActivationEmail;
}

/// @nodoc
class _$ResendActivationMailDataCopyWithImpl<$Res>
    implements $ResendActivationMailDataCopyWith<$Res> {
  _$ResendActivationMailDataCopyWithImpl(this._value, this._then);

  final ResendActivationMailData _value;
  // ignore: unused_field
  final $Res Function(ResendActivationMailData) _then;

  @override
  $Res call({
    Object? resendActivationEmail = freezed,
  }) {
    return _then(_value.copyWith(
      resendActivationEmail: resendActivationEmail == freezed
          ? _value.resendActivationEmail
          : resendActivationEmail // ignore: cast_nullable_to_non_nullable
              as ResendActivationEmail?,
    ));
  }

  @override
  $ResendActivationEmailCopyWith<$Res>? get resendActivationEmail {
    if (_value.resendActivationEmail == null) {
      return null;
    }

    return $ResendActivationEmailCopyWith<$Res>(_value.resendActivationEmail!,
        (value) {
      return _then(_value.copyWith(resendActivationEmail: value));
    });
  }
}

/// @nodoc
abstract class _$ResendActivationMailDataCopyWith<$Res>
    implements $ResendActivationMailDataCopyWith<$Res> {
  factory _$ResendActivationMailDataCopyWith(_ResendActivationMailData value,
          $Res Function(_ResendActivationMailData) then) =
      __$ResendActivationMailDataCopyWithImpl<$Res>;
  @override
  $Res call({ResendActivationEmail? resendActivationEmail});

  @override
  $ResendActivationEmailCopyWith<$Res>? get resendActivationEmail;
}

/// @nodoc
class __$ResendActivationMailDataCopyWithImpl<$Res>
    extends _$ResendActivationMailDataCopyWithImpl<$Res>
    implements _$ResendActivationMailDataCopyWith<$Res> {
  __$ResendActivationMailDataCopyWithImpl(_ResendActivationMailData _value,
      $Res Function(_ResendActivationMailData) _then)
      : super(_value, (v) => _then(v as _ResendActivationMailData));

  @override
  _ResendActivationMailData get _value =>
      super._value as _ResendActivationMailData;

  @override
  $Res call({
    Object? resendActivationEmail = freezed,
  }) {
    return _then(_ResendActivationMailData(
      resendActivationEmail: resendActivationEmail == freezed
          ? _value.resendActivationEmail
          : resendActivationEmail // ignore: cast_nullable_to_non_nullable
              as ResendActivationEmail?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResendActivationMailData implements _ResendActivationMailData {
  const _$_ResendActivationMailData({required this.resendActivationEmail});

  factory _$_ResendActivationMailData.fromJson(Map<String, dynamic> json) =>
      _$$_ResendActivationMailDataFromJson(json);

  @override
  final ResendActivationEmail? resendActivationEmail;

  @override
  String toString() {
    return 'ResendActivationMailData(resendActivationEmail: $resendActivationEmail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResendActivationMailData &&
            const DeepCollectionEquality()
                .equals(other.resendActivationEmail, resendActivationEmail));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(resendActivationEmail));

  @JsonKey(ignore: true)
  @override
  _$ResendActivationMailDataCopyWith<_ResendActivationMailData> get copyWith =>
      __$ResendActivationMailDataCopyWithImpl<_ResendActivationMailData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResendActivationMailDataToJson(this);
  }
}

abstract class _ResendActivationMailData implements ResendActivationMailData {
  const factory _ResendActivationMailData(
          {required ResendActivationEmail? resendActivationEmail}) =
      _$_ResendActivationMailData;

  factory _ResendActivationMailData.fromJson(Map<String, dynamic> json) =
      _$_ResendActivationMailData.fromJson;

  @override
  ResendActivationEmail? get resendActivationEmail;
  @override
  @JsonKey(ignore: true)
  _$ResendActivationMailDataCopyWith<_ResendActivationMailData> get copyWith =>
      throw _privateConstructorUsedError;
}

ResendActivationEmail _$ResendActivationEmailFromJson(
    Map<String, dynamic> json) {
  return _ResendActivationEmail.fromJson(json);
}

/// @nodoc
class _$ResendActivationEmailTearOff {
  const _$ResendActivationEmailTearOff();

  _ResendActivationEmail call(
      {required bool? success, required Errors? errors}) {
    return _ResendActivationEmail(
      success: success,
      errors: errors,
    );
  }

  ResendActivationEmail fromJson(Map<String, Object?> json) {
    return ResendActivationEmail.fromJson(json);
  }
}

/// @nodoc
const $ResendActivationEmail = _$ResendActivationEmailTearOff();

/// @nodoc
mixin _$ResendActivationEmail {
  bool? get success => throw _privateConstructorUsedError;
  Errors? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ResendActivationEmailCopyWith<ResendActivationEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResendActivationEmailCopyWith<$Res> {
  factory $ResendActivationEmailCopyWith(ResendActivationEmail value,
          $Res Function(ResendActivationEmail) then) =
      _$ResendActivationEmailCopyWithImpl<$Res>;
  $Res call({bool? success, Errors? errors});

  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class _$ResendActivationEmailCopyWithImpl<$Res>
    implements $ResendActivationEmailCopyWith<$Res> {
  _$ResendActivationEmailCopyWithImpl(this._value, this._then);

  final ResendActivationEmail _value;
  // ignore: unused_field
  final $Res Function(ResendActivationEmail) _then;

  @override
  $Res call({
    Object? success = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$ResendActivationEmailCopyWith<$Res>
    implements $ResendActivationEmailCopyWith<$Res> {
  factory _$ResendActivationEmailCopyWith(_ResendActivationEmail value,
          $Res Function(_ResendActivationEmail) then) =
      __$ResendActivationEmailCopyWithImpl<$Res>;
  @override
  $Res call({bool? success, Errors? errors});

  @override
  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class __$ResendActivationEmailCopyWithImpl<$Res>
    extends _$ResendActivationEmailCopyWithImpl<$Res>
    implements _$ResendActivationEmailCopyWith<$Res> {
  __$ResendActivationEmailCopyWithImpl(_ResendActivationEmail _value,
      $Res Function(_ResendActivationEmail) _then)
      : super(_value, (v) => _then(v as _ResendActivationEmail));

  @override
  _ResendActivationEmail get _value => super._value as _ResendActivationEmail;

  @override
  $Res call({
    Object? success = freezed,
    Object? errors = freezed,
  }) {
    return _then(_ResendActivationEmail(
      success: success == freezed
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      errors: errors == freezed
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as Errors?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ResendActivationEmail implements _ResendActivationEmail {
  const _$_ResendActivationEmail({required this.success, required this.errors});

  factory _$_ResendActivationEmail.fromJson(Map<String, dynamic> json) =>
      _$$_ResendActivationEmailFromJson(json);

  @override
  final bool? success;
  @override
  final Errors? errors;

  @override
  String toString() {
    return 'ResendActivationEmail(success: $success, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ResendActivationEmail &&
            const DeepCollectionEquality().equals(other.success, success) &&
            const DeepCollectionEquality().equals(other.errors, errors));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(success),
      const DeepCollectionEquality().hash(errors));

  @JsonKey(ignore: true)
  @override
  _$ResendActivationEmailCopyWith<_ResendActivationEmail> get copyWith =>
      __$ResendActivationEmailCopyWithImpl<_ResendActivationEmail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResendActivationEmailToJson(this);
  }
}

abstract class _ResendActivationEmail implements ResendActivationEmail {
  const factory _ResendActivationEmail(
      {required bool? success,
      required Errors? errors}) = _$_ResendActivationEmail;

  factory _ResendActivationEmail.fromJson(Map<String, dynamic> json) =
      _$_ResendActivationEmail.fromJson;

  @override
  bool? get success;
  @override
  Errors? get errors;
  @override
  @JsonKey(ignore: true)
  _$ResendActivationEmailCopyWith<_ResendActivationEmail> get copyWith =>
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
