// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_profile_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateProfileData _$CreateProfileDataFromJson(Map<String, dynamic> json) {
  return _CreateProfileData.fromJson(json);
}

/// @nodoc
class _$CreateProfileDataTearOff {
  const _$CreateProfileDataTearOff();

  _CreateProfileData call({required UpdateAccount? updateAccount}) {
    return _CreateProfileData(
      updateAccount: updateAccount,
    );
  }

  CreateProfileData fromJson(Map<String, Object?> json) {
    return CreateProfileData.fromJson(json);
  }
}

/// @nodoc
const $CreateProfileData = _$CreateProfileDataTearOff();

/// @nodoc
mixin _$CreateProfileData {
  UpdateAccount? get updateAccount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateProfileDataCopyWith<CreateProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateProfileDataCopyWith<$Res> {
  factory $CreateProfileDataCopyWith(
          CreateProfileData value, $Res Function(CreateProfileData) then) =
      _$CreateProfileDataCopyWithImpl<$Res>;
  $Res call({UpdateAccount? updateAccount});

  $UpdateAccountCopyWith<$Res>? get updateAccount;
}

/// @nodoc
class _$CreateProfileDataCopyWithImpl<$Res>
    implements $CreateProfileDataCopyWith<$Res> {
  _$CreateProfileDataCopyWithImpl(this._value, this._then);

  final CreateProfileData _value;
  // ignore: unused_field
  final $Res Function(CreateProfileData) _then;

  @override
  $Res call({
    Object? updateAccount = freezed,
  }) {
    return _then(_value.copyWith(
      updateAccount: updateAccount == freezed
          ? _value.updateAccount
          : updateAccount // ignore: cast_nullable_to_non_nullable
              as UpdateAccount?,
    ));
  }

  @override
  $UpdateAccountCopyWith<$Res>? get updateAccount {
    if (_value.updateAccount == null) {
      return null;
    }

    return $UpdateAccountCopyWith<$Res>(_value.updateAccount!, (value) {
      return _then(_value.copyWith(updateAccount: value));
    });
  }
}

/// @nodoc
abstract class _$CreateProfileDataCopyWith<$Res>
    implements $CreateProfileDataCopyWith<$Res> {
  factory _$CreateProfileDataCopyWith(
          _CreateProfileData value, $Res Function(_CreateProfileData) then) =
      __$CreateProfileDataCopyWithImpl<$Res>;
  @override
  $Res call({UpdateAccount? updateAccount});

  @override
  $UpdateAccountCopyWith<$Res>? get updateAccount;
}

/// @nodoc
class __$CreateProfileDataCopyWithImpl<$Res>
    extends _$CreateProfileDataCopyWithImpl<$Res>
    implements _$CreateProfileDataCopyWith<$Res> {
  __$CreateProfileDataCopyWithImpl(
      _CreateProfileData _value, $Res Function(_CreateProfileData) _then)
      : super(_value, (v) => _then(v as _CreateProfileData));

  @override
  _CreateProfileData get _value => super._value as _CreateProfileData;

  @override
  $Res call({
    Object? updateAccount = freezed,
  }) {
    return _then(_CreateProfileData(
      updateAccount: updateAccount == freezed
          ? _value.updateAccount
          : updateAccount // ignore: cast_nullable_to_non_nullable
              as UpdateAccount?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateProfileData implements _CreateProfileData {
  const _$_CreateProfileData({required this.updateAccount});

  factory _$_CreateProfileData.fromJson(Map<String, dynamic> json) =>
      _$$_CreateProfileDataFromJson(json);

  @override
  final UpdateAccount? updateAccount;

  @override
  String toString() {
    return 'CreateProfileData(updateAccount: $updateAccount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateProfileData &&
            const DeepCollectionEquality()
                .equals(other.updateAccount, updateAccount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(updateAccount));

  @JsonKey(ignore: true)
  @override
  _$CreateProfileDataCopyWith<_CreateProfileData> get copyWith =>
      __$CreateProfileDataCopyWithImpl<_CreateProfileData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateProfileDataToJson(this);
  }
}

abstract class _CreateProfileData implements CreateProfileData {
  const factory _CreateProfileData({required UpdateAccount? updateAccount}) =
      _$_CreateProfileData;

  factory _CreateProfileData.fromJson(Map<String, dynamic> json) =
      _$_CreateProfileData.fromJson;

  @override
  UpdateAccount? get updateAccount;
  @override
  @JsonKey(ignore: true)
  _$CreateProfileDataCopyWith<_CreateProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateAccount _$UpdateAccountFromJson(Map<String, dynamic> json) {
  return _UpdateAccount.fromJson(json);
}

/// @nodoc
class _$UpdateAccountTearOff {
  const _$UpdateAccountTearOff();

  _UpdateAccount call({required bool? success, required Errors? errors}) {
    return _UpdateAccount(
      success: success,
      errors: errors,
    );
  }

  UpdateAccount fromJson(Map<String, Object?> json) {
    return UpdateAccount.fromJson(json);
  }
}

/// @nodoc
const $UpdateAccount = _$UpdateAccountTearOff();

/// @nodoc
mixin _$UpdateAccount {
  bool? get success => throw _privateConstructorUsedError;
  Errors? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UpdateAccountCopyWith<UpdateAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UpdateAccountCopyWith<$Res> {
  factory $UpdateAccountCopyWith(
          UpdateAccount value, $Res Function(UpdateAccount) then) =
      _$UpdateAccountCopyWithImpl<$Res>;
  $Res call({bool? success, Errors? errors});

  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class _$UpdateAccountCopyWithImpl<$Res>
    implements $UpdateAccountCopyWith<$Res> {
  _$UpdateAccountCopyWithImpl(this._value, this._then);

  final UpdateAccount _value;
  // ignore: unused_field
  final $Res Function(UpdateAccount) _then;

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
abstract class _$UpdateAccountCopyWith<$Res>
    implements $UpdateAccountCopyWith<$Res> {
  factory _$UpdateAccountCopyWith(
          _UpdateAccount value, $Res Function(_UpdateAccount) then) =
      __$UpdateAccountCopyWithImpl<$Res>;
  @override
  $Res call({bool? success, Errors? errors});

  @override
  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class __$UpdateAccountCopyWithImpl<$Res>
    extends _$UpdateAccountCopyWithImpl<$Res>
    implements _$UpdateAccountCopyWith<$Res> {
  __$UpdateAccountCopyWithImpl(
      _UpdateAccount _value, $Res Function(_UpdateAccount) _then)
      : super(_value, (v) => _then(v as _UpdateAccount));

  @override
  _UpdateAccount get _value => super._value as _UpdateAccount;

  @override
  $Res call({
    Object? success = freezed,
    Object? errors = freezed,
  }) {
    return _then(_UpdateAccount(
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
class _$_UpdateAccount implements _UpdateAccount {
  const _$_UpdateAccount({required this.success, required this.errors});

  factory _$_UpdateAccount.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateAccountFromJson(json);

  @override
  final bool? success;
  @override
  final Errors? errors;

  @override
  String toString() {
    return 'UpdateAccount(success: $success, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UpdateAccount &&
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
  _$UpdateAccountCopyWith<_UpdateAccount> get copyWith =>
      __$UpdateAccountCopyWithImpl<_UpdateAccount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateAccountToJson(this);
  }
}

abstract class _UpdateAccount implements UpdateAccount {
  const factory _UpdateAccount(
      {required bool? success, required Errors? errors}) = _$_UpdateAccount;

  factory _UpdateAccount.fromJson(Map<String, dynamic> json) =
      _$_UpdateAccount.fromJson;

  @override
  bool? get success;
  @override
  Errors? get errors;
  @override
  @JsonKey(ignore: true)
  _$UpdateAccountCopyWith<_UpdateAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

Errors _$ErrorsFromJson(Map<String, dynamic> json) {
  return _Errors.fromJson(json);
}

/// @nodoc
class _$ErrorsTearOff {
  const _$ErrorsTearOff();

  _Errors call(
      {required List<ErrorsFields>? nonFieldErrors,
      required List<ErrorsFields>? dob,
      required List<ErrorsFields>? userId}) {
    return _Errors(
      nonFieldErrors: nonFieldErrors,
      dob: dob,
      userId: userId,
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
  List<ErrorsFields>? get nonFieldErrors => throw _privateConstructorUsedError;
  List<ErrorsFields>? get dob => throw _privateConstructorUsedError;
  List<ErrorsFields>? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorsCopyWith<Errors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorsCopyWith<$Res> {
  factory $ErrorsCopyWith(Errors value, $Res Function(Errors) then) =
      _$ErrorsCopyWithImpl<$Res>;
  $Res call(
      {List<ErrorsFields>? nonFieldErrors,
      List<ErrorsFields>? dob,
      List<ErrorsFields>? userId});
}

/// @nodoc
class _$ErrorsCopyWithImpl<$Res> implements $ErrorsCopyWith<$Res> {
  _$ErrorsCopyWithImpl(this._value, this._then);

  final Errors _value;
  // ignore: unused_field
  final $Res Function(Errors) _then;

  @override
  $Res call({
    Object? nonFieldErrors = freezed,
    Object? dob = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      nonFieldErrors: nonFieldErrors == freezed
          ? _value.nonFieldErrors
          : nonFieldErrors // ignore: cast_nullable_to_non_nullable
              as List<ErrorsFields>?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as List<ErrorsFields>?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as List<ErrorsFields>?,
    ));
  }
}

/// @nodoc
abstract class _$ErrorsCopyWith<$Res> implements $ErrorsCopyWith<$Res> {
  factory _$ErrorsCopyWith(_Errors value, $Res Function(_Errors) then) =
      __$ErrorsCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<ErrorsFields>? nonFieldErrors,
      List<ErrorsFields>? dob,
      List<ErrorsFields>? userId});
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
    Object? nonFieldErrors = freezed,
    Object? dob = freezed,
    Object? userId = freezed,
  }) {
    return _then(_Errors(
      nonFieldErrors: nonFieldErrors == freezed
          ? _value.nonFieldErrors
          : nonFieldErrors // ignore: cast_nullable_to_non_nullable
              as List<ErrorsFields>?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as List<ErrorsFields>?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as List<ErrorsFields>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Errors implements _Errors {
  const _$_Errors(
      {required this.nonFieldErrors, required this.dob, required this.userId});

  factory _$_Errors.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorsFromJson(json);

  @override
  final List<ErrorsFields>? nonFieldErrors;
  @override
  final List<ErrorsFields>? dob;
  @override
  final List<ErrorsFields>? userId;

  @override
  String toString() {
    return 'Errors(nonFieldErrors: $nonFieldErrors, dob: $dob, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Errors &&
            const DeepCollectionEquality()
                .equals(other.nonFieldErrors, nonFieldErrors) &&
            const DeepCollectionEquality().equals(other.dob, dob) &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(nonFieldErrors),
      const DeepCollectionEquality().hash(dob),
      const DeepCollectionEquality().hash(userId));

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
      {required List<ErrorsFields>? nonFieldErrors,
      required List<ErrorsFields>? dob,
      required List<ErrorsFields>? userId}) = _$_Errors;

  factory _Errors.fromJson(Map<String, dynamic> json) = _$_Errors.fromJson;

  @override
  List<ErrorsFields>? get nonFieldErrors;
  @override
  List<ErrorsFields>? get dob;
  @override
  List<ErrorsFields>? get userId;
  @override
  @JsonKey(ignore: true)
  _$ErrorsCopyWith<_Errors> get copyWith => throw _privateConstructorUsedError;
}

ErrorsFields _$ErrorsFieldsFromJson(Map<String, dynamic> json) {
  return _ErrorsFields.fromJson(json);
}

/// @nodoc
class _$ErrorsFieldsTearOff {
  const _$ErrorsFieldsTearOff();

  _ErrorsFields call({required String? message, required String? code}) {
    return _ErrorsFields(
      message: message,
      code: code,
    );
  }

  ErrorsFields fromJson(Map<String, Object?> json) {
    return ErrorsFields.fromJson(json);
  }
}

/// @nodoc
const $ErrorsFields = _$ErrorsFieldsTearOff();

/// @nodoc
mixin _$ErrorsFields {
  String? get message => throw _privateConstructorUsedError;
  String? get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorsFieldsCopyWith<ErrorsFields> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorsFieldsCopyWith<$Res> {
  factory $ErrorsFieldsCopyWith(
          ErrorsFields value, $Res Function(ErrorsFields) then) =
      _$ErrorsFieldsCopyWithImpl<$Res>;
  $Res call({String? message, String? code});
}

/// @nodoc
class _$ErrorsFieldsCopyWithImpl<$Res> implements $ErrorsFieldsCopyWith<$Res> {
  _$ErrorsFieldsCopyWithImpl(this._value, this._then);

  final ErrorsFields _value;
  // ignore: unused_field
  final $Res Function(ErrorsFields) _then;

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
abstract class _$ErrorsFieldsCopyWith<$Res>
    implements $ErrorsFieldsCopyWith<$Res> {
  factory _$ErrorsFieldsCopyWith(
          _ErrorsFields value, $Res Function(_ErrorsFields) then) =
      __$ErrorsFieldsCopyWithImpl<$Res>;
  @override
  $Res call({String? message, String? code});
}

/// @nodoc
class __$ErrorsFieldsCopyWithImpl<$Res> extends _$ErrorsFieldsCopyWithImpl<$Res>
    implements _$ErrorsFieldsCopyWith<$Res> {
  __$ErrorsFieldsCopyWithImpl(
      _ErrorsFields _value, $Res Function(_ErrorsFields) _then)
      : super(_value, (v) => _then(v as _ErrorsFields));

  @override
  _ErrorsFields get _value => super._value as _ErrorsFields;

  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_ErrorsFields(
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
class _$_ErrorsFields implements _ErrorsFields {
  const _$_ErrorsFields({required this.message, required this.code});

  factory _$_ErrorsFields.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorsFieldsFromJson(json);

  @override
  final String? message;
  @override
  final String? code;

  @override
  String toString() {
    return 'ErrorsFields(message: $message, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorsFields &&
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
  _$ErrorsFieldsCopyWith<_ErrorsFields> get copyWith =>
      __$ErrorsFieldsCopyWithImpl<_ErrorsFields>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorsFieldsToJson(this);
  }
}

abstract class _ErrorsFields implements ErrorsFields {
  const factory _ErrorsFields(
      {required String? message, required String? code}) = _$_ErrorsFields;

  factory _ErrorsFields.fromJson(Map<String, dynamic> json) =
      _$_ErrorsFields.fromJson;

  @override
  String? get message;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$ErrorsFieldsCopyWith<_ErrorsFields> get copyWith =>
      throw _privateConstructorUsedError;
}
