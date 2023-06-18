// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'unique_message_sender.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UniqueMessageData _$UniqueMessageDataFromJson(Map<String, dynamic> json) {
  return _UniqueMessageData.fromJson(json);
}

/// @nodoc
mixin _$UniqueMessageData {
  UniqueMessageSenders? get uniqueMessageSenders =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniqueMessageDataCopyWith<UniqueMessageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniqueMessageDataCopyWith<$Res> {
  factory $UniqueMessageDataCopyWith(
          UniqueMessageData value, $Res Function(UniqueMessageData) then) =
      _$UniqueMessageDataCopyWithImpl<$Res, UniqueMessageData>;
  @useResult
  $Res call({UniqueMessageSenders? uniqueMessageSenders});

  $UniqueMessageSendersCopyWith<$Res>? get uniqueMessageSenders;
}

/// @nodoc
class _$UniqueMessageDataCopyWithImpl<$Res, $Val extends UniqueMessageData>
    implements $UniqueMessageDataCopyWith<$Res> {
  _$UniqueMessageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueMessageSenders = freezed,
  }) {
    return _then(_value.copyWith(
      uniqueMessageSenders: freezed == uniqueMessageSenders
          ? _value.uniqueMessageSenders
          : uniqueMessageSenders // ignore: cast_nullable_to_non_nullable
              as UniqueMessageSenders?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UniqueMessageSendersCopyWith<$Res>? get uniqueMessageSenders {
    if (_value.uniqueMessageSenders == null) {
      return null;
    }

    return $UniqueMessageSendersCopyWith<$Res>(_value.uniqueMessageSenders!,
        (value) {
      return _then(_value.copyWith(uniqueMessageSenders: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UniqueMessageDataCopyWith<$Res>
    implements $UniqueMessageDataCopyWith<$Res> {
  factory _$$_UniqueMessageDataCopyWith(_$_UniqueMessageData value,
          $Res Function(_$_UniqueMessageData) then) =
      __$$_UniqueMessageDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UniqueMessageSenders? uniqueMessageSenders});

  @override
  $UniqueMessageSendersCopyWith<$Res>? get uniqueMessageSenders;
}

/// @nodoc
class __$$_UniqueMessageDataCopyWithImpl<$Res>
    extends _$UniqueMessageDataCopyWithImpl<$Res, _$_UniqueMessageData>
    implements _$$_UniqueMessageDataCopyWith<$Res> {
  __$$_UniqueMessageDataCopyWithImpl(
      _$_UniqueMessageData _value, $Res Function(_$_UniqueMessageData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueMessageSenders = freezed,
  }) {
    return _then(_$_UniqueMessageData(
      uniqueMessageSenders: freezed == uniqueMessageSenders
          ? _value.uniqueMessageSenders
          : uniqueMessageSenders // ignore: cast_nullable_to_non_nullable
              as UniqueMessageSenders?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UniqueMessageData implements _UniqueMessageData {
  const _$_UniqueMessageData({required this.uniqueMessageSenders});

  factory _$_UniqueMessageData.fromJson(Map<String, dynamic> json) =>
      _$$_UniqueMessageDataFromJson(json);

  @override
  final UniqueMessageSenders? uniqueMessageSenders;

  @override
  String toString() {
    return 'UniqueMessageData(uniqueMessageSenders: $uniqueMessageSenders)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniqueMessageData &&
            (identical(other.uniqueMessageSenders, uniqueMessageSenders) ||
                other.uniqueMessageSenders == uniqueMessageSenders));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uniqueMessageSenders);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UniqueMessageDataCopyWith<_$_UniqueMessageData> get copyWith =>
      __$$_UniqueMessageDataCopyWithImpl<_$_UniqueMessageData>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UniqueMessageDataToJson(
      this,
    );
  }
}

abstract class _UniqueMessageData implements UniqueMessageData {
  const factory _UniqueMessageData(
          {required final UniqueMessageSenders? uniqueMessageSenders}) =
      _$_UniqueMessageData;

  factory _UniqueMessageData.fromJson(Map<String, dynamic> json) =
      _$_UniqueMessageData.fromJson;

  @override
  UniqueMessageSenders? get uniqueMessageSenders;
  @override
  @JsonKey(ignore: true)
  _$$_UniqueMessageDataCopyWith<_$_UniqueMessageData> get copyWith =>
      throw _privateConstructorUsedError;
}

UniqueMessageSenders _$UniqueMessageSendersFromJson(Map<String, dynamic> json) {
  return _UniqueMessageSenders.fromJson(json);
}

/// @nodoc
mixin _$UniqueMessageSenders {
  List<ContactsList>? get contacts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UniqueMessageSendersCopyWith<UniqueMessageSenders> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UniqueMessageSendersCopyWith<$Res> {
  factory $UniqueMessageSendersCopyWith(UniqueMessageSenders value,
          $Res Function(UniqueMessageSenders) then) =
      _$UniqueMessageSendersCopyWithImpl<$Res, UniqueMessageSenders>;
  @useResult
  $Res call({List<ContactsList>? contacts});
}

/// @nodoc
class _$UniqueMessageSendersCopyWithImpl<$Res,
        $Val extends UniqueMessageSenders>
    implements $UniqueMessageSendersCopyWith<$Res> {
  _$UniqueMessageSendersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = freezed,
  }) {
    return _then(_value.copyWith(
      contacts: freezed == contacts
          ? _value.contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactsList>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UniqueMessageSendersCopyWith<$Res>
    implements $UniqueMessageSendersCopyWith<$Res> {
  factory _$$_UniqueMessageSendersCopyWith(_$_UniqueMessageSenders value,
          $Res Function(_$_UniqueMessageSenders) then) =
      __$$_UniqueMessageSendersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ContactsList>? contacts});
}

/// @nodoc
class __$$_UniqueMessageSendersCopyWithImpl<$Res>
    extends _$UniqueMessageSendersCopyWithImpl<$Res, _$_UniqueMessageSenders>
    implements _$$_UniqueMessageSendersCopyWith<$Res> {
  __$$_UniqueMessageSendersCopyWithImpl(_$_UniqueMessageSenders _value,
      $Res Function(_$_UniqueMessageSenders) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contacts = freezed,
  }) {
    return _then(_$_UniqueMessageSenders(
      contacts: freezed == contacts
          ? _value._contacts
          : contacts // ignore: cast_nullable_to_non_nullable
              as List<ContactsList>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UniqueMessageSenders implements _UniqueMessageSenders {
  const _$_UniqueMessageSenders({required final List<ContactsList>? contacts})
      : _contacts = contacts;

  factory _$_UniqueMessageSenders.fromJson(Map<String, dynamic> json) =>
      _$$_UniqueMessageSendersFromJson(json);

  final List<ContactsList>? _contacts;
  @override
  List<ContactsList>? get contacts {
    final value = _contacts;
    if (value == null) return null;
    if (_contacts is EqualUnmodifiableListView) return _contacts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UniqueMessageSenders(contacts: $contacts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniqueMessageSenders &&
            const DeepCollectionEquality().equals(other._contacts, _contacts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_contacts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UniqueMessageSendersCopyWith<_$_UniqueMessageSenders> get copyWith =>
      __$$_UniqueMessageSendersCopyWithImpl<_$_UniqueMessageSenders>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UniqueMessageSendersToJson(
      this,
    );
  }
}

abstract class _UniqueMessageSenders implements UniqueMessageSenders {
  const factory _UniqueMessageSenders(
      {required final List<ContactsList>? contacts}) = _$_UniqueMessageSenders;

  factory _UniqueMessageSenders.fromJson(Map<String, dynamic> json) =
      _$_UniqueMessageSenders.fromJson;

  @override
  List<ContactsList>? get contacts;
  @override
  @JsonKey(ignore: true)
  _$$_UniqueMessageSendersCopyWith<_$_UniqueMessageSenders> get copyWith =>
      throw _privateConstructorUsedError;
}

ContactsList _$ContactsListFromJson(Map<String, dynamic> json) {
  return _ContactsList.fromJson(json);
}

/// @nodoc
mixin _$ContactsList {
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContactsListCopyWith<ContactsList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContactsListCopyWith<$Res> {
  factory $ContactsListCopyWith(
          ContactsList value, $Res Function(ContactsList) then) =
      _$ContactsListCopyWithImpl<$Res, ContactsList>;
  @useResult
  $Res call(
      {String? city,
      String? country,
      String? firstName,
      String? id,
      String? lastName,
      String? picture,
      String? rating,
      String? userId,
      String? state,
      bool? active});
}

/// @nodoc
class _$ContactsListCopyWithImpl<$Res, $Val extends ContactsList>
    implements $ContactsListCopyWith<$Res> {
  _$ContactsListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? country = freezed,
    Object? firstName = freezed,
    Object? id = freezed,
    Object? lastName = freezed,
    Object? picture = freezed,
    Object? rating = freezed,
    Object? userId = freezed,
    Object? state = freezed,
    Object? active = freezed,
  }) {
    return _then(_value.copyWith(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ContactsListCopyWith<$Res>
    implements $ContactsListCopyWith<$Res> {
  factory _$$_ContactsListCopyWith(
          _$_ContactsList value, $Res Function(_$_ContactsList) then) =
      __$$_ContactsListCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? city,
      String? country,
      String? firstName,
      String? id,
      String? lastName,
      String? picture,
      String? rating,
      String? userId,
      String? state,
      bool? active});
}

/// @nodoc
class __$$_ContactsListCopyWithImpl<$Res>
    extends _$ContactsListCopyWithImpl<$Res, _$_ContactsList>
    implements _$$_ContactsListCopyWith<$Res> {
  __$$_ContactsListCopyWithImpl(
      _$_ContactsList _value, $Res Function(_$_ContactsList) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? country = freezed,
    Object? firstName = freezed,
    Object? id = freezed,
    Object? lastName = freezed,
    Object? picture = freezed,
    Object? rating = freezed,
    Object? userId = freezed,
    Object? state = freezed,
    Object? active = freezed,
  }) {
    return _then(_$_ContactsList(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContactsList implements _ContactsList {
  const _$_ContactsList(
      {required this.city,
      required this.country,
      required this.firstName,
      required this.id,
      required this.lastName,
      required this.picture,
      required this.rating,
      required this.userId,
      required this.state,
      required this.active});

  factory _$_ContactsList.fromJson(Map<String, dynamic> json) =>
      _$$_ContactsListFromJson(json);

  @override
  final String? city;
  @override
  final String? country;
  @override
  final String? firstName;
  @override
  final String? id;
  @override
  final String? lastName;
  @override
  final String? picture;
  @override
  final String? rating;
  @override
  final String? userId;
  @override
  final String? state;
  @override
  final bool? active;

  @override
  String toString() {
    return 'ContactsList(city: $city, country: $country, firstName: $firstName, id: $id, lastName: $lastName, picture: $picture, rating: $rating, userId: $userId, state: $state, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContactsList &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, city, country, firstName, id,
      lastName, picture, rating, userId, state, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContactsListCopyWith<_$_ContactsList> get copyWith =>
      __$$_ContactsListCopyWithImpl<_$_ContactsList>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContactsListToJson(
      this,
    );
  }
}

abstract class _ContactsList implements ContactsList {
  const factory _ContactsList(
      {required final String? city,
      required final String? country,
      required final String? firstName,
      required final String? id,
      required final String? lastName,
      required final String? picture,
      required final String? rating,
      required final String? userId,
      required final String? state,
      required final bool? active}) = _$_ContactsList;

  factory _ContactsList.fromJson(Map<String, dynamic> json) =
      _$_ContactsList.fromJson;

  @override
  String? get city;
  @override
  String? get country;
  @override
  String? get firstName;
  @override
  String? get id;
  @override
  String? get lastName;
  @override
  String? get picture;
  @override
  String? get rating;
  @override
  String? get userId;
  @override
  String? get state;
  @override
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$$_ContactsListCopyWith<_$_ContactsList> get copyWith =>
      throw _privateConstructorUsedError;
}
