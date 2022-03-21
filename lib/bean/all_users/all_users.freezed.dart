// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'all_users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllUsersData _$AllUsersDataFromJson(Map<String, dynamic> json) {
  return _AllUsersData.fromJson(json);
}

/// @nodoc
class _$AllUsersDataTearOff {
  const _$AllUsersDataTearOff();

  _AllUsersData call({required AllUsers? allUsers}) {
    return _AllUsersData(
      allUsers: allUsers,
    );
  }

  AllUsersData fromJson(Map<String, Object?> json) {
    return AllUsersData.fromJson(json);
  }
}

/// @nodoc
const $AllUsersData = _$AllUsersDataTearOff();

/// @nodoc
mixin _$AllUsersData {
  AllUsers? get allUsers => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllUsersDataCopyWith<AllUsersData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllUsersDataCopyWith<$Res> {
  factory $AllUsersDataCopyWith(
          AllUsersData value, $Res Function(AllUsersData) then) =
      _$AllUsersDataCopyWithImpl<$Res>;
  $Res call({AllUsers? allUsers});

  $AllUsersCopyWith<$Res>? get allUsers;
}

/// @nodoc
class _$AllUsersDataCopyWithImpl<$Res> implements $AllUsersDataCopyWith<$Res> {
  _$AllUsersDataCopyWithImpl(this._value, this._then);

  final AllUsersData _value;
  // ignore: unused_field
  final $Res Function(AllUsersData) _then;

  @override
  $Res call({
    Object? allUsers = freezed,
  }) {
    return _then(_value.copyWith(
      allUsers: allUsers == freezed
          ? _value.allUsers
          : allUsers // ignore: cast_nullable_to_non_nullable
              as AllUsers?,
    ));
  }

  @override
  $AllUsersCopyWith<$Res>? get allUsers {
    if (_value.allUsers == null) {
      return null;
    }

    return $AllUsersCopyWith<$Res>(_value.allUsers!, (value) {
      return _then(_value.copyWith(allUsers: value));
    });
  }
}

/// @nodoc
abstract class _$AllUsersDataCopyWith<$Res>
    implements $AllUsersDataCopyWith<$Res> {
  factory _$AllUsersDataCopyWith(
          _AllUsersData value, $Res Function(_AllUsersData) then) =
      __$AllUsersDataCopyWithImpl<$Res>;
  @override
  $Res call({AllUsers? allUsers});

  @override
  $AllUsersCopyWith<$Res>? get allUsers;
}

/// @nodoc
class __$AllUsersDataCopyWithImpl<$Res> extends _$AllUsersDataCopyWithImpl<$Res>
    implements _$AllUsersDataCopyWith<$Res> {
  __$AllUsersDataCopyWithImpl(
      _AllUsersData _value, $Res Function(_AllUsersData) _then)
      : super(_value, (v) => _then(v as _AllUsersData));

  @override
  _AllUsersData get _value => super._value as _AllUsersData;

  @override
  $Res call({
    Object? allUsers = freezed,
  }) {
    return _then(_AllUsersData(
      allUsers: allUsers == freezed
          ? _value.allUsers
          : allUsers // ignore: cast_nullable_to_non_nullable
              as AllUsers?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllUsersData implements _AllUsersData {
  const _$_AllUsersData({required this.allUsers});

  factory _$_AllUsersData.fromJson(Map<String, dynamic> json) =>
      _$$_AllUsersDataFromJson(json);

  @override
  final AllUsers? allUsers;

  @override
  String toString() {
    return 'AllUsersData(allUsers: $allUsers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllUsersData &&
            const DeepCollectionEquality().equals(other.allUsers, allUsers));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(allUsers));

  @JsonKey(ignore: true)
  @override
  _$AllUsersDataCopyWith<_AllUsersData> get copyWith =>
      __$AllUsersDataCopyWithImpl<_AllUsersData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllUsersDataToJson(this);
  }
}

abstract class _AllUsersData implements AllUsersData {
  const factory _AllUsersData({required AllUsers? allUsers}) = _$_AllUsersData;

  factory _AllUsersData.fromJson(Map<String, dynamic> json) =
      _$_AllUsersData.fromJson;

  @override
  AllUsers? get allUsers;
  @override
  @JsonKey(ignore: true)
  _$AllUsersDataCopyWith<_AllUsersData> get copyWith =>
      throw _privateConstructorUsedError;
}

AllUsers _$AllUsersFromJson(Map<String, dynamic> json) {
  return _AllUsers.fromJson(json);
}

/// @nodoc
class _$AllUsersTearOff {
  const _$AllUsersTearOff();

  _AllUsers call({required List<Edges>? edges}) {
    return _AllUsers(
      edges: edges,
    );
  }

  AllUsers fromJson(Map<String, Object?> json) {
    return AllUsers.fromJson(json);
  }
}

/// @nodoc
const $AllUsers = _$AllUsersTearOff();

/// @nodoc
mixin _$AllUsers {
  List<Edges>? get edges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllUsersCopyWith<AllUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllUsersCopyWith<$Res> {
  factory $AllUsersCopyWith(AllUsers value, $Res Function(AllUsers) then) =
      _$AllUsersCopyWithImpl<$Res>;
  $Res call({List<Edges>? edges});
}

/// @nodoc
class _$AllUsersCopyWithImpl<$Res> implements $AllUsersCopyWith<$Res> {
  _$AllUsersCopyWithImpl(this._value, this._then);

  final AllUsers _value;
  // ignore: unused_field
  final $Res Function(AllUsers) _then;

  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_value.copyWith(
      edges: edges == freezed
          ? _value.edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<Edges>?,
    ));
  }
}

/// @nodoc
abstract class _$AllUsersCopyWith<$Res> implements $AllUsersCopyWith<$Res> {
  factory _$AllUsersCopyWith(_AllUsers value, $Res Function(_AllUsers) then) =
      __$AllUsersCopyWithImpl<$Res>;
  @override
  $Res call({List<Edges>? edges});
}

/// @nodoc
class __$AllUsersCopyWithImpl<$Res> extends _$AllUsersCopyWithImpl<$Res>
    implements _$AllUsersCopyWith<$Res> {
  __$AllUsersCopyWithImpl(_AllUsers _value, $Res Function(_AllUsers) _then)
      : super(_value, (v) => _then(v as _AllUsers));

  @override
  _AllUsers get _value => super._value as _AllUsers;

  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_AllUsers(
      edges: edges == freezed
          ? _value.edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<Edges>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllUsers implements _AllUsers {
  const _$_AllUsers({required this.edges});

  factory _$_AllUsers.fromJson(Map<String, dynamic> json) =>
      _$$_AllUsersFromJson(json);

  @override
  final List<Edges>? edges;

  @override
  String toString() {
    return 'AllUsers(edges: $edges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllUsers &&
            const DeepCollectionEquality().equals(other.edges, edges));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(edges));

  @JsonKey(ignore: true)
  @override
  _$AllUsersCopyWith<_AllUsers> get copyWith =>
      __$AllUsersCopyWithImpl<_AllUsers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllUsersToJson(this);
  }
}

abstract class _AllUsers implements AllUsers {
  const factory _AllUsers({required List<Edges>? edges}) = _$_AllUsers;

  factory _AllUsers.fromJson(Map<String, dynamic> json) = _$_AllUsers.fromJson;

  @override
  List<Edges>? get edges;
  @override
  @JsonKey(ignore: true)
  _$AllUsersCopyWith<_AllUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

Edges _$EdgesFromJson(Map<String, dynamic> json) {
  return _Edges.fromJson(json);
}

/// @nodoc
class _$EdgesTearOff {
  const _$EdgesTearOff();

  _Edges call({required Node? node}) {
    return _Edges(
      node: node,
    );
  }

  Edges fromJson(Map<String, Object?> json) {
    return Edges.fromJson(json);
  }
}

/// @nodoc
const $Edges = _$EdgesTearOff();

/// @nodoc
mixin _$Edges {
  Node? get node => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EdgesCopyWith<Edges> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EdgesCopyWith<$Res> {
  factory $EdgesCopyWith(Edges value, $Res Function(Edges) then) =
      _$EdgesCopyWithImpl<$Res>;
  $Res call({Node? node});

  $NodeCopyWith<$Res>? get node;
}

/// @nodoc
class _$EdgesCopyWithImpl<$Res> implements $EdgesCopyWith<$Res> {
  _$EdgesCopyWithImpl(this._value, this._then);

  final Edges _value;
  // ignore: unused_field
  final $Res Function(Edges) _then;

  @override
  $Res call({
    Object? node = freezed,
  }) {
    return _then(_value.copyWith(
      node: node == freezed
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as Node?,
    ));
  }

  @override
  $NodeCopyWith<$Res>? get node {
    if (_value.node == null) {
      return null;
    }

    return $NodeCopyWith<$Res>(_value.node!, (value) {
      return _then(_value.copyWith(node: value));
    });
  }
}

/// @nodoc
abstract class _$EdgesCopyWith<$Res> implements $EdgesCopyWith<$Res> {
  factory _$EdgesCopyWith(_Edges value, $Res Function(_Edges) then) =
      __$EdgesCopyWithImpl<$Res>;
  @override
  $Res call({Node? node});

  @override
  $NodeCopyWith<$Res>? get node;
}

/// @nodoc
class __$EdgesCopyWithImpl<$Res> extends _$EdgesCopyWithImpl<$Res>
    implements _$EdgesCopyWith<$Res> {
  __$EdgesCopyWithImpl(_Edges _value, $Res Function(_Edges) _then)
      : super(_value, (v) => _then(v as _Edges));

  @override
  _Edges get _value => super._value as _Edges;

  @override
  $Res call({
    Object? node = freezed,
  }) {
    return _then(_Edges(
      node: node == freezed
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as Node?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Edges implements _Edges {
  const _$_Edges({required this.node});

  factory _$_Edges.fromJson(Map<String, dynamic> json) =>
      _$$_EdgesFromJson(json);

  @override
  final Node? node;

  @override
  String toString() {
    return 'Edges(node: $node)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Edges &&
            const DeepCollectionEquality().equals(other.node, node));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(node));

  @JsonKey(ignore: true)
  @override
  _$EdgesCopyWith<_Edges> get copyWith =>
      __$EdgesCopyWithImpl<_Edges>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EdgesToJson(this);
  }
}

abstract class _Edges implements Edges {
  const factory _Edges({required Node? node}) = _$_Edges;

  factory _Edges.fromJson(Map<String, dynamic> json) = _$_Edges.fromJson;

  @override
  Node? get node;
  @override
  @JsonKey(ignore: true)
  _$EdgesCopyWith<_Edges> get copyWith => throw _privateConstructorUsedError;
}

Node _$NodeFromJson(Map<String, dynamic> json) {
  return _Node.fromJson(json);
}

/// @nodoc
class _$NodeTearOff {
  const _$NodeTearOff();

  _Node call(
      {required String? city,
      required bool? active,
      required String? country,
      required String? dateJoined,
      required String? dob,
      required String? email,
      required String? firstName,
      required String? gender,
      required int? height,
      required String? id,
      required int? age,
      required bool? isActive,
      required bool? isStaff,
      required bool? isSuperuser,
      required String? lastLogin,
      required String? lastName,
      required int? level,
      required String? phone,
      required String? picture,
      required double? rating,
      required String? state,
      required String? userId,
      required String? aboutMe}) {
    return _Node(
      city: city,
      active: active,
      country: country,
      dateJoined: dateJoined,
      dob: dob,
      email: email,
      firstName: firstName,
      gender: gender,
      height: height,
      id: id,
      age: age,
      isActive: isActive,
      isStaff: isStaff,
      isSuperuser: isSuperuser,
      lastLogin: lastLogin,
      lastName: lastName,
      level: level,
      phone: phone,
      picture: picture,
      rating: rating,
      state: state,
      userId: userId,
      aboutMe: aboutMe,
    );
  }

  Node fromJson(Map<String, Object?> json) {
    return Node.fromJson(json);
  }
}

/// @nodoc
const $Node = _$NodeTearOff();

/// @nodoc
mixin _$Node {
  String? get city => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get dateJoined => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  int? get height => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  int? get age => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  bool? get isStaff => throw _privateConstructorUsedError;
  bool? get isSuperuser => throw _privateConstructorUsedError;
  String? get lastLogin => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  int? get level => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  double? get rating => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get aboutMe => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NodeCopyWith<Node> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeCopyWith<$Res> {
  factory $NodeCopyWith(Node value, $Res Function(Node) then) =
      _$NodeCopyWithImpl<$Res>;
  $Res call(
      {String? city,
      bool? active,
      String? country,
      String? dateJoined,
      String? dob,
      String? email,
      String? firstName,
      String? gender,
      int? height,
      String? id,
      int? age,
      bool? isActive,
      bool? isStaff,
      bool? isSuperuser,
      String? lastLogin,
      String? lastName,
      int? level,
      String? phone,
      String? picture,
      double? rating,
      String? state,
      String? userId,
      String? aboutMe});
}

/// @nodoc
class _$NodeCopyWithImpl<$Res> implements $NodeCopyWith<$Res> {
  _$NodeCopyWithImpl(this._value, this._then);

  final Node _value;
  // ignore: unused_field
  final $Res Function(Node) _then;

  @override
  $Res call({
    Object? city = freezed,
    Object? active = freezed,
    Object? country = freezed,
    Object? dateJoined = freezed,
    Object? dob = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? gender = freezed,
    Object? height = freezed,
    Object? id = freezed,
    Object? age = freezed,
    Object? isActive = freezed,
    Object? isStaff = freezed,
    Object? isSuperuser = freezed,
    Object? lastLogin = freezed,
    Object? lastName = freezed,
    Object? level = freezed,
    Object? phone = freezed,
    Object? picture = freezed,
    Object? rating = freezed,
    Object? state = freezed,
    Object? userId = freezed,
    Object? aboutMe = freezed,
  }) {
    return _then(_value.copyWith(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      dateJoined: dateJoined == freezed
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isStaff: isStaff == freezed
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSuperuser: isSuperuser == freezed
          ? _value.isSuperuser
          : isSuperuser // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastLogin: lastLogin == freezed
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutMe: aboutMe == freezed
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$NodeCopyWith<$Res> implements $NodeCopyWith<$Res> {
  factory _$NodeCopyWith(_Node value, $Res Function(_Node) then) =
      __$NodeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? city,
      bool? active,
      String? country,
      String? dateJoined,
      String? dob,
      String? email,
      String? firstName,
      String? gender,
      int? height,
      String? id,
      int? age,
      bool? isActive,
      bool? isStaff,
      bool? isSuperuser,
      String? lastLogin,
      String? lastName,
      int? level,
      String? phone,
      String? picture,
      double? rating,
      String? state,
      String? userId,
      String? aboutMe});
}

/// @nodoc
class __$NodeCopyWithImpl<$Res> extends _$NodeCopyWithImpl<$Res>
    implements _$NodeCopyWith<$Res> {
  __$NodeCopyWithImpl(_Node _value, $Res Function(_Node) _then)
      : super(_value, (v) => _then(v as _Node));

  @override
  _Node get _value => super._value as _Node;

  @override
  $Res call({
    Object? city = freezed,
    Object? active = freezed,
    Object? country = freezed,
    Object? dateJoined = freezed,
    Object? dob = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? gender = freezed,
    Object? height = freezed,
    Object? id = freezed,
    Object? age = freezed,
    Object? isActive = freezed,
    Object? isStaff = freezed,
    Object? isSuperuser = freezed,
    Object? lastLogin = freezed,
    Object? lastName = freezed,
    Object? level = freezed,
    Object? phone = freezed,
    Object? picture = freezed,
    Object? rating = freezed,
    Object? state = freezed,
    Object? userId = freezed,
    Object? aboutMe = freezed,
  }) {
    return _then(_Node(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      dateJoined: dateJoined == freezed
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: dob == freezed
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      height: height == freezed
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      age: age == freezed
          ? _value.age
          : age // ignore: cast_nullable_to_non_nullable
              as int?,
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      isStaff: isStaff == freezed
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool?,
      isSuperuser: isSuperuser == freezed
          ? _value.isSuperuser
          : isSuperuser // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastLogin: lastLogin == freezed
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as int?,
      phone: phone == freezed
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as double?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      aboutMe: aboutMe == freezed
          ? _value.aboutMe
          : aboutMe // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Node implements _Node {
  const _$_Node(
      {required this.city,
      required this.active,
      required this.country,
      required this.dateJoined,
      required this.dob,
      required this.email,
      required this.firstName,
      required this.gender,
      required this.height,
      required this.id,
      required this.age,
      required this.isActive,
      required this.isStaff,
      required this.isSuperuser,
      required this.lastLogin,
      required this.lastName,
      required this.level,
      required this.phone,
      required this.picture,
      required this.rating,
      required this.state,
      required this.userId,
      required this.aboutMe});

  factory _$_Node.fromJson(Map<String, dynamic> json) => _$$_NodeFromJson(json);

  @override
  final String? city;
  @override
  final bool? active;
  @override
  final String? country;
  @override
  final String? dateJoined;
  @override
  final String? dob;
  @override
  final String? email;
  @override
  final String? firstName;
  @override
  final String? gender;
  @override
  final int? height;
  @override
  final String? id;
  @override
  final int? age;
  @override
  final bool? isActive;
  @override
  final bool? isStaff;
  @override
  final bool? isSuperuser;
  @override
  final String? lastLogin;
  @override
  final String? lastName;
  @override
  final int? level;
  @override
  final String? phone;
  @override
  final String? picture;
  @override
  final double? rating;
  @override
  final String? state;
  @override
  final String? userId;
  @override
  final String? aboutMe;

  @override
  String toString() {
    return 'Node(city: $city, active: $active, country: $country, dateJoined: $dateJoined, dob: $dob, email: $email, firstName: $firstName, gender: $gender, height: $height, id: $id, age: $age, isActive: $isActive, isStaff: $isStaff, isSuperuser: $isSuperuser, lastLogin: $lastLogin, lastName: $lastName, level: $level, phone: $phone, picture: $picture, rating: $rating, state: $state, userId: $userId, aboutMe: $aboutMe)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Node &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.active, active) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality()
                .equals(other.dateJoined, dateJoined) &&
            const DeepCollectionEquality().equals(other.dob, dob) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.age, age) &&
            const DeepCollectionEquality().equals(other.isActive, isActive) &&
            const DeepCollectionEquality().equals(other.isStaff, isStaff) &&
            const DeepCollectionEquality()
                .equals(other.isSuperuser, isSuperuser) &&
            const DeepCollectionEquality().equals(other.lastLogin, lastLogin) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.phone, phone) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.aboutMe, aboutMe));
  }

  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(city),
        const DeepCollectionEquality().hash(active),
        const DeepCollectionEquality().hash(country),
        const DeepCollectionEquality().hash(dateJoined),
        const DeepCollectionEquality().hash(dob),
        const DeepCollectionEquality().hash(email),
        const DeepCollectionEquality().hash(firstName),
        const DeepCollectionEquality().hash(gender),
        const DeepCollectionEquality().hash(height),
        const DeepCollectionEquality().hash(id),
        const DeepCollectionEquality().hash(age),
        const DeepCollectionEquality().hash(isActive),
        const DeepCollectionEquality().hash(isStaff),
        const DeepCollectionEquality().hash(isSuperuser),
        const DeepCollectionEquality().hash(lastLogin),
        const DeepCollectionEquality().hash(lastName),
        const DeepCollectionEquality().hash(level),
        const DeepCollectionEquality().hash(phone),
        const DeepCollectionEquality().hash(picture),
        const DeepCollectionEquality().hash(rating),
        const DeepCollectionEquality().hash(state),
        const DeepCollectionEquality().hash(userId),
        const DeepCollectionEquality().hash(aboutMe)
      ]);

  @JsonKey(ignore: true)
  @override
  _$NodeCopyWith<_Node> get copyWith =>
      __$NodeCopyWithImpl<_Node>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NodeToJson(this);
  }
}

abstract class _Node implements Node {
  const factory _Node(
      {required String? city,
      required bool? active,
      required String? country,
      required String? dateJoined,
      required String? dob,
      required String? email,
      required String? firstName,
      required String? gender,
      required int? height,
      required String? id,
      required int? age,
      required bool? isActive,
      required bool? isStaff,
      required bool? isSuperuser,
      required String? lastLogin,
      required String? lastName,
      required int? level,
      required String? phone,
      required String? picture,
      required double? rating,
      required String? state,
      required String? userId,
      required String? aboutMe}) = _$_Node;

  factory _Node.fromJson(Map<String, dynamic> json) = _$_Node.fromJson;

  @override
  String? get city;
  @override
  bool? get active;
  @override
  String? get country;
  @override
  String? get dateJoined;
  @override
  String? get dob;
  @override
  String? get email;
  @override
  String? get firstName;
  @override
  String? get gender;
  @override
  int? get height;
  @override
  String? get id;
  @override
  int? get age;
  @override
  bool? get isActive;
  @override
  bool? get isStaff;
  @override
  bool? get isSuperuser;
  @override
  String? get lastLogin;
  @override
  String? get lastName;
  @override
  int? get level;
  @override
  String? get phone;
  @override
  String? get picture;
  @override
  double? get rating;
  @override
  String? get state;
  @override
  String? get userId;
  @override
  String? get aboutMe;
  @override
  @JsonKey(ignore: true)
  _$NodeCopyWith<_Node> get copyWith => throw _privateConstructorUsedError;
}
