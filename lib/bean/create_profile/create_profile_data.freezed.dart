// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'create_profile_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateProfileData _$CreateProfileDataFromJson(Map<String, dynamic> json) {
  return _CreateProfileData.fromJson(json);
}

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
      _$CreateProfileDataCopyWithImpl<$Res, CreateProfileData>;
  @useResult
  $Res call({UpdateAccount? updateAccount});

  $UpdateAccountCopyWith<$Res>? get updateAccount;
}

/// @nodoc
class _$CreateProfileDataCopyWithImpl<$Res, $Val extends CreateProfileData>
    implements $CreateProfileDataCopyWith<$Res> {
  _$CreateProfileDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateAccount = freezed,
  }) {
    return _then(_value.copyWith(
      updateAccount: freezed == updateAccount
          ? _value.updateAccount
          : updateAccount // ignore: cast_nullable_to_non_nullable
              as UpdateAccount?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UpdateAccountCopyWith<$Res>? get updateAccount {
    if (_value.updateAccount == null) {
      return null;
    }

    return $UpdateAccountCopyWith<$Res>(_value.updateAccount!, (value) {
      return _then(_value.copyWith(updateAccount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CreateProfileDataCopyWith<$Res>
    implements $CreateProfileDataCopyWith<$Res> {
  factory _$$_CreateProfileDataCopyWith(_$_CreateProfileData value,
          $Res Function(_$_CreateProfileData) then) =
      __$$_CreateProfileDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UpdateAccount? updateAccount});

  @override
  $UpdateAccountCopyWith<$Res>? get updateAccount;
}

/// @nodoc
class __$$_CreateProfileDataCopyWithImpl<$Res>
    extends _$CreateProfileDataCopyWithImpl<$Res, _$_CreateProfileData>
    implements _$$_CreateProfileDataCopyWith<$Res> {
  __$$_CreateProfileDataCopyWithImpl(
      _$_CreateProfileData _value, $Res Function(_$_CreateProfileData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updateAccount = freezed,
  }) {
    return _then(_$_CreateProfileData(
      updateAccount: freezed == updateAccount
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
            other is _$_CreateProfileData &&
            (identical(other.updateAccount, updateAccount) ||
                other.updateAccount == updateAccount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, updateAccount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CreateProfileDataCopyWith<_$_CreateProfileData> get copyWith =>
      __$$_CreateProfileDataCopyWithImpl<_$_CreateProfileData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateProfileDataToJson(
      this,
    );
  }
}

abstract class _CreateProfileData implements CreateProfileData {
  const factory _CreateProfileData(
      {required final UpdateAccount? updateAccount}) = _$_CreateProfileData;

  factory _CreateProfileData.fromJson(Map<String, dynamic> json) =
      _$_CreateProfileData.fromJson;

  @override
  UpdateAccount? get updateAccount;
  @override
  @JsonKey(ignore: true)
  _$$_CreateProfileDataCopyWith<_$_CreateProfileData> get copyWith =>
      throw _privateConstructorUsedError;
}

UpdateAccount _$UpdateAccountFromJson(Map<String, dynamic> json) {
  return _UpdateAccount.fromJson(json);
}

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
      _$UpdateAccountCopyWithImpl<$Res, UpdateAccount>;
  @useResult
  $Res call({bool? success, Errors? errors});

  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class _$UpdateAccountCopyWithImpl<$Res, $Val extends UpdateAccount>
    implements $UpdateAccountCopyWith<$Res> {
  _$UpdateAccountCopyWithImpl(this._value, this._then);

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
abstract class _$$_UpdateAccountCopyWith<$Res>
    implements $UpdateAccountCopyWith<$Res> {
  factory _$$_UpdateAccountCopyWith(
          _$_UpdateAccount value, $Res Function(_$_UpdateAccount) then) =
      __$$_UpdateAccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, Errors? errors});

  @override
  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class __$$_UpdateAccountCopyWithImpl<$Res>
    extends _$UpdateAccountCopyWithImpl<$Res, _$_UpdateAccount>
    implements _$$_UpdateAccountCopyWith<$Res> {
  __$$_UpdateAccountCopyWithImpl(
      _$_UpdateAccount _value, $Res Function(_$_UpdateAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$_UpdateAccount(
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
            other is _$_UpdateAccount &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.errors, errors) || other.errors == errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, errors);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateAccountCopyWith<_$_UpdateAccount> get copyWith =>
      __$$_UpdateAccountCopyWithImpl<_$_UpdateAccount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UpdateAccountToJson(
      this,
    );
  }
}

abstract class _UpdateAccount implements UpdateAccount {
  const factory _UpdateAccount(
      {required final bool? success,
      required final Errors? errors}) = _$_UpdateAccount;

  factory _UpdateAccount.fromJson(Map<String, dynamic> json) =
      _$_UpdateAccount.fromJson;

  @override
  bool? get success;
  @override
  Errors? get errors;
  @override
  @JsonKey(ignore: true)
  _$$_UpdateAccountCopyWith<_$_UpdateAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

Errors _$ErrorsFromJson(Map<String, dynamic> json) {
  return _Errors.fromJson(json);
}

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
      _$ErrorsCopyWithImpl<$Res, Errors>;
  @useResult
  $Res call(
      {List<ErrorsFields>? nonFieldErrors,
      List<ErrorsFields>? dob,
      List<ErrorsFields>? userId});
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
    Object? nonFieldErrors = freezed,
    Object? dob = freezed,
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      nonFieldErrors: freezed == nonFieldErrors
          ? _value.nonFieldErrors
          : nonFieldErrors // ignore: cast_nullable_to_non_nullable
              as List<ErrorsFields>?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as List<ErrorsFields>?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as List<ErrorsFields>?,
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
      {List<ErrorsFields>? nonFieldErrors,
      List<ErrorsFields>? dob,
      List<ErrorsFields>? userId});
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
    Object? nonFieldErrors = freezed,
    Object? dob = freezed,
    Object? userId = freezed,
  }) {
    return _then(_$_Errors(
      nonFieldErrors: freezed == nonFieldErrors
          ? _value._nonFieldErrors
          : nonFieldErrors // ignore: cast_nullable_to_non_nullable
              as List<ErrorsFields>?,
      dob: freezed == dob
          ? _value._dob
          : dob // ignore: cast_nullable_to_non_nullable
              as List<ErrorsFields>?,
      userId: freezed == userId
          ? _value._userId
          : userId // ignore: cast_nullable_to_non_nullable
              as List<ErrorsFields>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Errors implements _Errors {
  const _$_Errors(
      {required final List<ErrorsFields>? nonFieldErrors,
      required final List<ErrorsFields>? dob,
      required final List<ErrorsFields>? userId})
      : _nonFieldErrors = nonFieldErrors,
        _dob = dob,
        _userId = userId;

  factory _$_Errors.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorsFromJson(json);

  final List<ErrorsFields>? _nonFieldErrors;
  @override
  List<ErrorsFields>? get nonFieldErrors {
    final value = _nonFieldErrors;
    if (value == null) return null;
    if (_nonFieldErrors is EqualUnmodifiableListView) return _nonFieldErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ErrorsFields>? _dob;
  @override
  List<ErrorsFields>? get dob {
    final value = _dob;
    if (value == null) return null;
    if (_dob is EqualUnmodifiableListView) return _dob;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ErrorsFields>? _userId;
  @override
  List<ErrorsFields>? get userId {
    final value = _userId;
    if (value == null) return null;
    if (_userId is EqualUnmodifiableListView) return _userId;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Errors(nonFieldErrors: $nonFieldErrors, dob: $dob, userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Errors &&
            const DeepCollectionEquality()
                .equals(other._nonFieldErrors, _nonFieldErrors) &&
            const DeepCollectionEquality().equals(other._dob, _dob) &&
            const DeepCollectionEquality().equals(other._userId, _userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_nonFieldErrors),
      const DeepCollectionEquality().hash(_dob),
      const DeepCollectionEquality().hash(_userId));

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
      {required final List<ErrorsFields>? nonFieldErrors,
      required final List<ErrorsFields>? dob,
      required final List<ErrorsFields>? userId}) = _$_Errors;

  factory _Errors.fromJson(Map<String, dynamic> json) = _$_Errors.fromJson;

  @override
  List<ErrorsFields>? get nonFieldErrors;
  @override
  List<ErrorsFields>? get dob;
  @override
  List<ErrorsFields>? get userId;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorsCopyWith<_$_Errors> get copyWith =>
      throw _privateConstructorUsedError;
}

ErrorsFields _$ErrorsFieldsFromJson(Map<String, dynamic> json) {
  return _ErrorsFields.fromJson(json);
}

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
      _$ErrorsFieldsCopyWithImpl<$Res, ErrorsFields>;
  @useResult
  $Res call({String? message, String? code});
}

/// @nodoc
class _$ErrorsFieldsCopyWithImpl<$Res, $Val extends ErrorsFields>
    implements $ErrorsFieldsCopyWith<$Res> {
  _$ErrorsFieldsCopyWithImpl(this._value, this._then);

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
abstract class _$$_ErrorsFieldsCopyWith<$Res>
    implements $ErrorsFieldsCopyWith<$Res> {
  factory _$$_ErrorsFieldsCopyWith(
          _$_ErrorsFields value, $Res Function(_$_ErrorsFields) then) =
      __$$_ErrorsFieldsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? message, String? code});
}

/// @nodoc
class __$$_ErrorsFieldsCopyWithImpl<$Res>
    extends _$ErrorsFieldsCopyWithImpl<$Res, _$_ErrorsFields>
    implements _$$_ErrorsFieldsCopyWith<$Res> {
  __$$_ErrorsFieldsCopyWithImpl(
      _$_ErrorsFields _value, $Res Function(_$_ErrorsFields) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = freezed,
    Object? code = freezed,
  }) {
    return _then(_$_ErrorsFields(
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
            other is _$_ErrorsFields &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, message, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ErrorsFieldsCopyWith<_$_ErrorsFields> get copyWith =>
      __$$_ErrorsFieldsCopyWithImpl<_$_ErrorsFields>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ErrorsFieldsToJson(
      this,
    );
  }
}

abstract class _ErrorsFields implements ErrorsFields {
  const factory _ErrorsFields(
      {required final String? message,
      required final String? code}) = _$_ErrorsFields;

  factory _ErrorsFields.fromJson(Map<String, dynamic> json) =
      _$_ErrorsFields.fromJson;

  @override
  String? get message;
  @override
  String? get code;
  @override
  @JsonKey(ignore: true)
  _$$_ErrorsFieldsCopyWith<_$_ErrorsFields> get copyWith =>
      throw _privateConstructorUsedError;
}
