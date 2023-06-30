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
  List<Inbox>? get inbox => throw _privateConstructorUsedError;

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
  $Res call({List<Inbox>? inbox});
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
    Object? inbox = freezed,
  }) {
    return _then(_value.copyWith(
      inbox: freezed == inbox
          ? _value.inbox
          : inbox // ignore: cast_nullable_to_non_nullable
              as List<Inbox>?,
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
  $Res call({List<Inbox>? inbox});
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
    Object? inbox = freezed,
  }) {
    return _then(_$_UniqueMessageSenders(
      inbox: freezed == inbox
          ? _value._inbox
          : inbox // ignore: cast_nullable_to_non_nullable
              as List<Inbox>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UniqueMessageSenders implements _UniqueMessageSenders {
  const _$_UniqueMessageSenders({required final List<Inbox>? inbox})
      : _inbox = inbox;

  factory _$_UniqueMessageSenders.fromJson(Map<String, dynamic> json) =>
      _$$_UniqueMessageSendersFromJson(json);

  final List<Inbox>? _inbox;
  @override
  List<Inbox>? get inbox {
    final value = _inbox;
    if (value == null) return null;
    if (_inbox is EqualUnmodifiableListView) return _inbox;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UniqueMessageSenders(inbox: $inbox)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UniqueMessageSenders &&
            const DeepCollectionEquality().equals(other._inbox, _inbox));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_inbox));

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
  const factory _UniqueMessageSenders({required final List<Inbox>? inbox}) =
      _$_UniqueMessageSenders;

  factory _UniqueMessageSenders.fromJson(Map<String, dynamic> json) =
      _$_UniqueMessageSenders.fromJson;

  @override
  List<Inbox>? get inbox;
  @override
  @JsonKey(ignore: true)
  _$$_UniqueMessageSendersCopyWith<_$_UniqueMessageSenders> get copyWith =>
      throw _privateConstructorUsedError;
}

Inbox _$InboxFromJson(Map<String, dynamic> json) {
  return _Inbox.fromJson(json);
}

/// @nodoc
mixin _$Inbox {
  bool? get read => throw _privateConstructorUsedError;
  List<User>? get user => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InboxCopyWith<Inbox> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InboxCopyWith<$Res> {
  factory $InboxCopyWith(Inbox value, $Res Function(Inbox) then) =
      _$InboxCopyWithImpl<$Res, Inbox>;
  @useResult
  $Res call({bool? read, List<User>? user});
}

/// @nodoc
class _$InboxCopyWithImpl<$Res, $Val extends Inbox>
    implements $InboxCopyWith<$Res> {
  _$InboxCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? read = freezed,
    Object? user = freezed,
  }) {
    return _then(_value.copyWith(
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_InboxCopyWith<$Res> implements $InboxCopyWith<$Res> {
  factory _$$_InboxCopyWith(_$_Inbox value, $Res Function(_$_Inbox) then) =
      __$$_InboxCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool? read, List<User>? user});
}

/// @nodoc
class __$$_InboxCopyWithImpl<$Res> extends _$InboxCopyWithImpl<$Res, _$_Inbox>
    implements _$$_InboxCopyWith<$Res> {
  __$$_InboxCopyWithImpl(_$_Inbox _value, $Res Function(_$_Inbox) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? read = freezed,
    Object? user = freezed,
  }) {
    return _then(_$_Inbox(
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
      user: freezed == user
          ? _value._user
          : user // ignore: cast_nullable_to_non_nullable
              as List<User>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Inbox implements _Inbox {
  const _$_Inbox({required this.read, required final List<User>? user})
      : _user = user;

  factory _$_Inbox.fromJson(Map<String, dynamic> json) =>
      _$$_InboxFromJson(json);

  @override
  final bool? read;
  final List<User>? _user;
  @override
  List<User>? get user {
    final value = _user;
    if (value == null) return null;
    if (_user is EqualUnmodifiableListView) return _user;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Inbox(read: $read, user: $user)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Inbox &&
            (identical(other.read, read) || other.read == read) &&
            const DeepCollectionEquality().equals(other._user, _user));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, read, const DeepCollectionEquality().hash(_user));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_InboxCopyWith<_$_Inbox> get copyWith =>
      __$$_InboxCopyWithImpl<_$_Inbox>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InboxToJson(
      this,
    );
  }
}

abstract class _Inbox implements Inbox {
  const factory _Inbox(
      {required final bool? read, required final List<User>? user}) = _$_Inbox;

  factory _Inbox.fromJson(Map<String, dynamic> json) = _$_Inbox.fromJson;

  @override
  bool? get read;
  @override
  List<User>? get user;
  @override
  @JsonKey(ignore: true)
  _$$_InboxCopyWith<_$_Inbox> get copyWith =>
      throw _privateConstructorUsedError;
}

User _$UserFromJson(Map<String, dynamic> json) {
  return _User.fromJson(json);
}

/// @nodoc
mixin _$User {
  String? get userId => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get aboutMe => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserCopyWith<User> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserCopyWith<$Res> {
  factory $UserCopyWith(User value, $Res Function(User) then) =
      _$UserCopyWithImpl<$Res, User>;
  @useResult
  $Res call(
      {String? userId,
      String? firstName,
      String? lastName,
      String? aboutMe,
      bool? active,
      String? city,
      String? email,
      String? picture,
      String? phone,
      String? rating,
      String? state,
      String? country,
      String? id,
      String? dob});
}

/// @nodoc
class _$UserCopyWithImpl<$Res, $Val extends User>
    implements $UserCopyWith<$Res> {
  _$UserCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? aboutMe = freezed,
    Object? active = freezed,
    Object? city = freezed,
    Object? email = freezed,
    Object? picture = freezed,
    Object? phone = freezed,
    Object? rating = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? id = freezed,
    Object? dob = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutMe: freezed == aboutMe
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserCopyWith<$Res> implements $UserCopyWith<$Res> {
  factory _$$_UserCopyWith(_$_User value, $Res Function(_$_User) then) =
      __$$_UserCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? firstName,
      String? lastName,
      String? aboutMe,
      bool? active,
      String? city,
      String? email,
      String? picture,
      String? phone,
      String? rating,
      String? state,
      String? country,
      String? id,
      String? dob});
}

/// @nodoc
class __$$_UserCopyWithImpl<$Res> extends _$UserCopyWithImpl<$Res, _$_User>
    implements _$$_UserCopyWith<$Res> {
  __$$_UserCopyWithImpl(_$_User _value, $Res Function(_$_User) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
    Object? aboutMe = freezed,
    Object? active = freezed,
    Object? city = freezed,
    Object? email = freezed,
    Object? picture = freezed,
    Object? phone = freezed,
    Object? rating = freezed,
    Object? state = freezed,
    Object? country = freezed,
    Object? id = freezed,
    Object? dob = freezed,
  }) {
    return _then(_$_User(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutMe: freezed == aboutMe
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_User implements _User {
  const _$_User(
      {required this.userId,
      required this.firstName,
      required this.lastName,
      required this.aboutMe,
      required this.active,
      required this.city,
      required this.email,
      required this.picture,
      required this.phone,
      required this.rating,
      required this.state,
      required this.country,
      required this.id,
      required this.dob});

  factory _$_User.fromJson(Map<String, dynamic> json) => _$$_UserFromJson(json);

  @override
  final String? userId;
  @override
  final String? firstName;
  @override
  final String? lastName;
  @override
  final String? aboutMe;
  @override
  final bool? active;
  @override
  final String? city;
  @override
  final String? email;
  @override
  final String? picture;
  @override
  final String? phone;
  @override
  final String? rating;
  @override
  final String? state;
  @override
  final String? country;
  @override
  final String? id;
  @override
  final String? dob;

  @override
  String toString() {
    return 'User(userId: $userId, firstName: $firstName, lastName: $lastName, aboutMe: $aboutMe, active: $active, city: $city, email: $email, picture: $picture, phone: $phone, rating: $rating, state: $state, country: $country, id: $id, dob: $dob)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_User &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.aboutMe, aboutMe) || other.aboutMe == aboutMe) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.dob, dob) || other.dob == dob));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      userId,
      firstName,
      lastName,
      aboutMe,
      active,
      city,
      email,
      picture,
      phone,
      rating,
      state,
      country,
      id,
      dob);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserCopyWith<_$_User> get copyWith =>
      __$$_UserCopyWithImpl<_$_User>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserToJson(
      this,
    );
  }
}

abstract class _User implements User {
  const factory _User(
      {required final String? userId,
      required final String? firstName,
      required final String? lastName,
      required final String? aboutMe,
      required final bool? active,
      required final String? city,
      required final String? email,
      required final String? picture,
      required final String? phone,
      required final String? rating,
      required final String? state,
      required final String? country,
      required final String? id,
      required final String? dob}) = _$_User;

  factory _User.fromJson(Map<String, dynamic> json) = _$_User.fromJson;

  @override
  String? get userId;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  String? get aboutMe;
  @override
  bool? get active;
  @override
  String? get city;
  @override
  String? get email;
  @override
  String? get picture;
  @override
  String? get phone;
  @override
  String? get rating;
  @override
  String? get state;
  @override
  String? get country;
  @override
  String? get id;
  @override
  String? get dob;
  @override
  @JsonKey(ignore: true)
  _$$_UserCopyWith<_$_User> get copyWith => throw _privateConstructorUsedError;
}
