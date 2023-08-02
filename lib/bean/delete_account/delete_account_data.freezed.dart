// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'delete_account_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

deleteAccountData _$deleteAccountDataFromJson(Map<String, dynamic> json) {
  return _deleteAccountData.fromJson(json);
}

/// @nodoc
mixin _$deleteAccountData {
  DeleteAccount get deleteAccount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $deleteAccountDataCopyWith<deleteAccountData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $deleteAccountDataCopyWith<$Res> {
  factory $deleteAccountDataCopyWith(
          deleteAccountData value, $Res Function(deleteAccountData) then) =
      _$deleteAccountDataCopyWithImpl<$Res, deleteAccountData>;
  @useResult
  $Res call({DeleteAccount deleteAccount});

  $DeleteAccountCopyWith<$Res> get deleteAccount;
}

/// @nodoc
class _$deleteAccountDataCopyWithImpl<$Res, $Val extends deleteAccountData>
    implements $deleteAccountDataCopyWith<$Res> {
  _$deleteAccountDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteAccount = null,
  }) {
    return _then(_value.copyWith(
      deleteAccount: null == deleteAccount
          ? _value.deleteAccount
          : deleteAccount // ignore: cast_nullable_to_non_nullable
              as DeleteAccount,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $DeleteAccountCopyWith<$Res> get deleteAccount {
    return $DeleteAccountCopyWith<$Res>(_value.deleteAccount, (value) {
      return _then(_value.copyWith(deleteAccount: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_deleteAccountDataCopyWith<$Res>
    implements $deleteAccountDataCopyWith<$Res> {
  factory _$$_deleteAccountDataCopyWith(_$_deleteAccountData value,
          $Res Function(_$_deleteAccountData) then) =
      __$$_deleteAccountDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeleteAccount deleteAccount});

  @override
  $DeleteAccountCopyWith<$Res> get deleteAccount;
}

/// @nodoc
class __$$_deleteAccountDataCopyWithImpl<$Res>
    extends _$deleteAccountDataCopyWithImpl<$Res, _$_deleteAccountData>
    implements _$$_deleteAccountDataCopyWith<$Res> {
  __$$_deleteAccountDataCopyWithImpl(
      _$_deleteAccountData _value, $Res Function(_$_deleteAccountData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? deleteAccount = null,
  }) {
    return _then(_$_deleteAccountData(
      deleteAccount: null == deleteAccount
          ? _value.deleteAccount
          : deleteAccount // ignore: cast_nullable_to_non_nullable
              as DeleteAccount,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_deleteAccountData implements _deleteAccountData {
  const _$_deleteAccountData({required this.deleteAccount});

  factory _$_deleteAccountData.fromJson(Map<String, dynamic> json) =>
      _$$_deleteAccountDataFromJson(json);

  @override
  final DeleteAccount deleteAccount;

  @override
  String toString() {
    return 'deleteAccountData(deleteAccount: $deleteAccount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_deleteAccountData &&
            (identical(other.deleteAccount, deleteAccount) ||
                other.deleteAccount == deleteAccount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, deleteAccount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_deleteAccountDataCopyWith<_$_deleteAccountData> get copyWith =>
      __$$_deleteAccountDataCopyWithImpl<_$_deleteAccountData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_deleteAccountDataToJson(
      this,
    );
  }
}

abstract class _deleteAccountData implements deleteAccountData {
  const factory _deleteAccountData(
      {required final DeleteAccount deleteAccount}) = _$_deleteAccountData;

  factory _deleteAccountData.fromJson(Map<String, dynamic> json) =
      _$_deleteAccountData.fromJson;

  @override
  DeleteAccount get deleteAccount;
  @override
  @JsonKey(ignore: true)
  _$$_deleteAccountDataCopyWith<_$_deleteAccountData> get copyWith =>
      throw _privateConstructorUsedError;
}

DeleteAccount _$DeleteAccountFromJson(Map<String, dynamic> json) {
  return _DeleteAccount.fromJson(json);
}

/// @nodoc
mixin _$DeleteAccount {
  bool? get success => throw _privateConstructorUsedError;
  Errors? get errors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DeleteAccountCopyWith<DeleteAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DeleteAccountCopyWith<$Res> {
  factory $DeleteAccountCopyWith(
          DeleteAccount value, $Res Function(DeleteAccount) then) =
      _$DeleteAccountCopyWithImpl<$Res, DeleteAccount>;
  @useResult
  $Res call({bool? success, Errors? errors});

  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class _$DeleteAccountCopyWithImpl<$Res, $Val extends DeleteAccount>
    implements $DeleteAccountCopyWith<$Res> {
  _$DeleteAccountCopyWithImpl(this._value, this._then);

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
abstract class _$$_DeleteAccountCopyWith<$Res>
    implements $DeleteAccountCopyWith<$Res> {
  factory _$$_DeleteAccountCopyWith(
          _$_DeleteAccount value, $Res Function(_$_DeleteAccount) then) =
      __$$_DeleteAccountCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? success, Errors? errors});

  @override
  $ErrorsCopyWith<$Res>? get errors;
}

/// @nodoc
class __$$_DeleteAccountCopyWithImpl<$Res>
    extends _$DeleteAccountCopyWithImpl<$Res, _$_DeleteAccount>
    implements _$$_DeleteAccountCopyWith<$Res> {
  __$$_DeleteAccountCopyWithImpl(
      _$_DeleteAccount _value, $Res Function(_$_DeleteAccount) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? success = freezed,
    Object? errors = freezed,
  }) {
    return _then(_$_DeleteAccount(
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
class _$_DeleteAccount implements _DeleteAccount {
  const _$_DeleteAccount({required this.success, required this.errors});

  factory _$_DeleteAccount.fromJson(Map<String, dynamic> json) =>
      _$$_DeleteAccountFromJson(json);

  @override
  final bool? success;
  @override
  final Errors? errors;

  @override
  String toString() {
    return 'DeleteAccount(success: $success, errors: $errors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DeleteAccount &&
            (identical(other.success, success) || other.success == success) &&
            (identical(other.errors, errors) || other.errors == errors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, success, errors);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeleteAccountCopyWith<_$_DeleteAccount> get copyWith =>
      __$$_DeleteAccountCopyWithImpl<_$_DeleteAccount>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeleteAccountToJson(
      this,
    );
  }
}

abstract class _DeleteAccount implements DeleteAccount {
  const factory _DeleteAccount(
      {required final bool? success,
      required final Errors? errors}) = _$_DeleteAccount;

  factory _DeleteAccount.fromJson(Map<String, dynamic> json) =
      _$_DeleteAccount.fromJson;

  @override
  bool? get success;
  @override
  Errors? get errors;
  @override
  @JsonKey(ignore: true)
  _$$_DeleteAccountCopyWith<_$_DeleteAccount> get copyWith =>
      throw _privateConstructorUsedError;
}

Errors _$ErrorsFromJson(Map<String, dynamic> json) {
  return _Errors.fromJson(json);
}

/// @nodoc
mixin _$Errors {
  List<ErrorsFields>? get password => throw _privateConstructorUsedError;
  List<ErrorsFields>? get nonFieldErrors => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ErrorsCopyWith<Errors> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ErrorsCopyWith<$Res> {
  factory $ErrorsCopyWith(Errors value, $Res Function(Errors) then) =
      _$ErrorsCopyWithImpl<$Res, Errors>;
  @useResult
  $Res call({List<ErrorsFields>? password, List<ErrorsFields>? nonFieldErrors});
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
    Object? password = freezed,
    Object? nonFieldErrors = freezed,
  }) {
    return _then(_value.copyWith(
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as List<ErrorsFields>?,
      nonFieldErrors: freezed == nonFieldErrors
          ? _value.nonFieldErrors
          : nonFieldErrors // ignore: cast_nullable_to_non_nullable
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
  $Res call({List<ErrorsFields>? password, List<ErrorsFields>? nonFieldErrors});
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
    Object? password = freezed,
    Object? nonFieldErrors = freezed,
  }) {
    return _then(_$_Errors(
      password: freezed == password
          ? _value._password
          : password // ignore: cast_nullable_to_non_nullable
              as List<ErrorsFields>?,
      nonFieldErrors: freezed == nonFieldErrors
          ? _value._nonFieldErrors
          : nonFieldErrors // ignore: cast_nullable_to_non_nullable
              as List<ErrorsFields>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Errors implements _Errors {
  const _$_Errors(
      {required final List<ErrorsFields>? password,
      required final List<ErrorsFields>? nonFieldErrors})
      : _password = password,
        _nonFieldErrors = nonFieldErrors;

  factory _$_Errors.fromJson(Map<String, dynamic> json) =>
      _$$_ErrorsFromJson(json);

  final List<ErrorsFields>? _password;
  @override
  List<ErrorsFields>? get password {
    final value = _password;
    if (value == null) return null;
    if (_password is EqualUnmodifiableListView) return _password;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ErrorsFields>? _nonFieldErrors;
  @override
  List<ErrorsFields>? get nonFieldErrors {
    final value = _nonFieldErrors;
    if (value == null) return null;
    if (_nonFieldErrors is EqualUnmodifiableListView) return _nonFieldErrors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Errors(password: $password, nonFieldErrors: $nonFieldErrors)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Errors &&
            const DeepCollectionEquality().equals(other._password, _password) &&
            const DeepCollectionEquality()
                .equals(other._nonFieldErrors, _nonFieldErrors));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_password),
      const DeepCollectionEquality().hash(_nonFieldErrors));

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
      {required final List<ErrorsFields>? password,
      required final List<ErrorsFields>? nonFieldErrors}) = _$_Errors;

  factory _Errors.fromJson(Map<String, dynamic> json) = _$_Errors.fromJson;

  @override
  List<ErrorsFields>? get password;
  @override
  List<ErrorsFields>? get nonFieldErrors;
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
