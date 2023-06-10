// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resend_activation_mail.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ResendActivationMailData _$ResendActivationMailDataFromJson(
    Map<String, dynamic> json) {
  return _ResendActivationMailData.fromJson(json);
}

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
      _$ResendActivationMailDataCopyWithImpl<$Res, ResendActivationMailData>;
  @useResult
  $Res call({ResendActivationEmail? resendActivationEmail});

  $ResendActivationEmailCopyWith<$Res>? get resendActivationEmail;
}

/// @nodoc
class _$ResendActivationMailDataCopyWithImpl<$Res,
        $Val extends ResendActivationMailData>
    implements $ResendActivationMailDataCopyWith<$Res> {
  _$ResendActivationMailDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resendActivationEmail = freezed,
  }) {
    return _then(_value.copyWith(
      resendActivationEmail: freezed == resendActivationEmail
          ? _value.resendActivationEmail
          : resendActivationEmail // ignore: cast_nullable_to_non_nullable
              as ResendActivationEmail?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ResendActivationEmailCopyWith<$Res>? get resendActivationEmail {
    if (_value.resendActivationEmail == null) {
      return null;
    }

    return $ResendActivationEmailCopyWith<$Res>(_value.resendActivationEmail!,
        (value) {
      return _then(_value.copyWith(resendActivationEmail: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ResendActivationMailDataCopyWith<$Res>
    implements $ResendActivationMailDataCopyWith<$Res> {
  factory _$$_ResendActivationMailDataCopyWith(
          _$_ResendActivationMailData value,
          $Res Function(_$_ResendActivationMailData) then) =
      __$$_ResendActivationMailDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({ResendActivationEmail? resendActivationEmail});

  @override
  $ResendActivationEmailCopyWith<$Res>? get resendActivationEmail;
}

/// @nodoc
class __$$_ResendActivationMailDataCopyWithImpl<$Res>
    extends _$ResendActivationMailDataCopyWithImpl<$Res,
        _$_ResendActivationMailData>
    implements _$$_ResendActivationMailDataCopyWith<$Res> {
  __$$_ResendActivationMailDataCopyWithImpl(_$_ResendActivationMailData _value,
      $Res Function(_$_ResendActivationMailData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? resendActivationEmail = freezed,
  }) {
    return _then(_$_ResendActivationMailData(
      resendActivationEmail: freezed == resendActivationEmail
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
            other is _$_ResendActivationMailData &&
            (identical(other.resendActivationEmail, resendActivationEmail) ||
                other.resendActivationEmail == resendActivationEmail));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, resendActivationEmail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResendActivationMailDataCopyWith<_$_ResendActivationMailData>
      get copyWith => __$$_ResendActivationMailDataCopyWithImpl<
          _$_ResendActivationMailData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResendActivationMailDataToJson(
      this,
    );
  }
}

abstract class _ResendActivationMailData implements ResendActivationMailData {
  const factory _ResendActivationMailData(
          {required final ResendActivationEmail? resendActivationEmail}) =
      _$_ResendActivationMailData;

  factory _ResendActivationMailData.fromJson(Map<String, dynamic> json) =
      _$_ResendActivationMailData.fromJson;

  @override
  ResendActivationEmail? get resendActivationEmail;
  @override
  @JsonKey(ignore: true)
  _$$_ResendActivationMailDataCopyWith<_$_ResendActivationMailData>
      get copyWith => throw _privateConstructorUsedError;
}

ResendActivationEmail _$ResendActivationEmailFromJson(
    Map<String, dynamic> json) {
  return _ResendActivationEmail.fromJson(json);
}

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
      _$ResendActivationEmailCopyWithImpl<$Res, ResendActivationEmail>;
  @useResult
  $Res call({bool? success, Errors? errors});

  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class _$ResendActivationEmailCopyWithImpl<$Res,
        $Val extends ResendActivationEmail>
    implements $ResendActivationEmailCopyWith<$Res> {
  _$ResendActivationEmailCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? errors = freezed,
  }) {
    return _then(_value.copyWith(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
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
abstract class _$$_ResendActivationEmailCopyWith<$Res>
    implements $ResendActivationEmailCopyWith<$Res> {
  factory _$$_ResendActivationEmailCopyWith(_$_ResendActivationEmail value,
          $Res Function(_$_ResendActivationEmail) then) =
      __$$_ResendActivationEmailCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, Errors? errors});

  @override
  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class __$$_ResendActivationEmailCopyWithImpl<$Res>
    extends _$ResendActivationEmailCopyWithImpl<$Res, _$_ResendActivationEmail>
    implements _$$_ResendActivationEmailCopyWith<$Res> {
  __$$_ResendActivationEmailCopyWithImpl(_$_ResendActivationEmail _value,
      $Res Function(_$_ResendActivationEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$_ResendActivationEmail(
      success: freezed == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool?,
      errors: freezed == errors
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
            other is _$_ResendActivationEmail &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.errors, errors) || other.errors == errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, errors);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ResendActivationEmailCopyWith<_$_ResendActivationEmail> get copyWith =>
      __$$_ResendActivationEmailCopyWithImpl<_$_ResendActivationEmail>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ResendActivationEmailToJson(
      this,
    );
  }
}

abstract class _ResendActivationEmail implements ResendActivationEmail {
  const factory _ResendActivationEmail(
      {required final bool? success,
      required final Errors? errors}) = _$_ResendActivationEmail;

  factory _ResendActivationEmail.fromJson(Map<String, dynamic> json) =
      _$_ResendActivationEmail.fromJson;

  @override
  bool? get success;
  @override
  Errors? get errors;
  @override
  @JsonKey(ignore: true)
  _$$_ResendActivationEmailCopyWith<_$_ResendActivationEmail> get copyWith =>
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
