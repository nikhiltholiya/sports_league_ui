// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_users.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllUsersData _$AllUsersDataFromJson(Map<String, dynamic> json) {
  return _AllUsersData.fromJson(json);
}

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
      _$AllUsersDataCopyWithImpl<$Res, AllUsersData>;
  @useResult
  $Res call({AllUsers? allUsers});

  $AllUsersCopyWith<$Res>? get allUsers;
}

/// @nodoc
class _$AllUsersDataCopyWithImpl<$Res, $Val extends AllUsersData>
    implements $AllUsersDataCopyWith<$Res> {
  _$AllUsersDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allUsers = freezed,
  }) {
    return _then(_value.copyWith(
      allUsers: freezed == allUsers
          ? _value.allUsers
          : allUsers // ignore: cast_nullable_to_non_nullable
              as AllUsers?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AllUsersCopyWith<$Res>? get allUsers {
    if (_value.allUsers == null) {
      return null;
    }

    return $AllUsersCopyWith<$Res>(_value.allUsers!, (value) {
      return _then(_value.copyWith(allUsers: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AllUsersDataCopyWith<$Res>
    implements $AllUsersDataCopyWith<$Res> {
  factory _$$_AllUsersDataCopyWith(
          _$_AllUsersData value, $Res Function(_$_AllUsersData) then) =
      __$$_AllUsersDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllUsers? allUsers});

  @override
  $AllUsersCopyWith<$Res>? get allUsers;
}

/// @nodoc
class __$$_AllUsersDataCopyWithImpl<$Res>
    extends _$AllUsersDataCopyWithImpl<$Res, _$_AllUsersData>
    implements _$$_AllUsersDataCopyWith<$Res> {
  __$$_AllUsersDataCopyWithImpl(
      _$_AllUsersData _value, $Res Function(_$_AllUsersData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allUsers = freezed,
  }) {
    return _then(_$_AllUsersData(
      allUsers: freezed == allUsers
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
            other is _$_AllUsersData &&
            (identical(other.allUsers, allUsers) ||
                other.allUsers == allUsers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, allUsers);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllUsersDataCopyWith<_$_AllUsersData> get copyWith =>
      __$$_AllUsersDataCopyWithImpl<_$_AllUsersData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllUsersDataToJson(
      this,
    );
  }
}

abstract class _AllUsersData implements AllUsersData {
  const factory _AllUsersData({required final AllUsers? allUsers}) =
      _$_AllUsersData;

  factory _AllUsersData.fromJson(Map<String, dynamic> json) =
      _$_AllUsersData.fromJson;

  @override
  AllUsers? get allUsers;
  @override
  @JsonKey(ignore: true)
  _$$_AllUsersDataCopyWith<_$_AllUsersData> get copyWith =>
      throw _privateConstructorUsedError;
}

AllUsers _$AllUsersFromJson(Map<String, dynamic> json) {
  return _AllUsers.fromJson(json);
}

/// @nodoc
mixin _$AllUsers {
  List<UserEdges>? get edges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllUsersCopyWith<AllUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllUsersCopyWith<$Res> {
  factory $AllUsersCopyWith(AllUsers value, $Res Function(AllUsers) then) =
      _$AllUsersCopyWithImpl<$Res, AllUsers>;
  @useResult
  $Res call({List<UserEdges>? edges});
}

/// @nodoc
class _$AllUsersCopyWithImpl<$Res, $Val extends AllUsers>
    implements $AllUsersCopyWith<$Res> {
  _$AllUsersCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_value.copyWith(
      edges: freezed == edges
          ? _value.edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<UserEdges>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllUsersCopyWith<$Res> implements $AllUsersCopyWith<$Res> {
  factory _$$_AllUsersCopyWith(
          _$_AllUsers value, $Res Function(_$_AllUsers) then) =
      __$$_AllUsersCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<UserEdges>? edges});
}

/// @nodoc
class __$$_AllUsersCopyWithImpl<$Res>
    extends _$AllUsersCopyWithImpl<$Res, _$_AllUsers>
    implements _$$_AllUsersCopyWith<$Res> {
  __$$_AllUsersCopyWithImpl(
      _$_AllUsers _value, $Res Function(_$_AllUsers) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_$_AllUsers(
      edges: freezed == edges
          ? _value._edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<UserEdges>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllUsers implements _AllUsers {
  const _$_AllUsers({required final List<UserEdges>? edges}) : _edges = edges;

  factory _$_AllUsers.fromJson(Map<String, dynamic> json) =>
      _$$_AllUsersFromJson(json);

  final List<UserEdges>? _edges;
  @override
  List<UserEdges>? get edges {
    final value = _edges;
    if (value == null) return null;
    if (_edges is EqualUnmodifiableListView) return _edges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AllUsers(edges: $edges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllUsers &&
            const DeepCollectionEquality().equals(other._edges, _edges));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_edges));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllUsersCopyWith<_$_AllUsers> get copyWith =>
      __$$_AllUsersCopyWithImpl<_$_AllUsers>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllUsersToJson(
      this,
    );
  }
}

abstract class _AllUsers implements AllUsers {
  const factory _AllUsers({required final List<UserEdges>? edges}) =
      _$_AllUsers;

  factory _AllUsers.fromJson(Map<String, dynamic> json) = _$_AllUsers.fromJson;

  @override
  List<UserEdges>? get edges;
  @override
  @JsonKey(ignore: true)
  _$$_AllUsersCopyWith<_$_AllUsers> get copyWith =>
      throw _privateConstructorUsedError;
}

UserEdges _$UserEdgesFromJson(Map<String, dynamic> json) {
  return _UserEdges.fromJson(json);
}

/// @nodoc
mixin _$UserEdges {
  UserNode? get node => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserEdgesCopyWith<UserEdges> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserEdgesCopyWith<$Res> {
  factory $UserEdgesCopyWith(UserEdges value, $Res Function(UserEdges) then) =
      _$UserEdgesCopyWithImpl<$Res, UserEdges>;
  @useResult
  $Res call({UserNode? node});

  $UserNodeCopyWith<$Res>? get node;
}

/// @nodoc
class _$UserEdgesCopyWithImpl<$Res, $Val extends UserEdges>
    implements $UserEdgesCopyWith<$Res> {
  _$UserEdgesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = freezed,
  }) {
    return _then(_value.copyWith(
      node: freezed == node
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as UserNode?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $UserNodeCopyWith<$Res>? get node {
    if (_value.node == null) {
      return null;
    }

    return $UserNodeCopyWith<$Res>(_value.node!, (value) {
      return _then(_value.copyWith(node: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_UserEdgesCopyWith<$Res> implements $UserEdgesCopyWith<$Res> {
  factory _$$_UserEdgesCopyWith(
          _$_UserEdges value, $Res Function(_$_UserEdges) then) =
      __$$_UserEdgesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({UserNode? node});

  @override
  $UserNodeCopyWith<$Res>? get node;
}

/// @nodoc
class __$$_UserEdgesCopyWithImpl<$Res>
    extends _$UserEdgesCopyWithImpl<$Res, _$_UserEdges>
    implements _$$_UserEdgesCopyWith<$Res> {
  __$$_UserEdgesCopyWithImpl(
      _$_UserEdges _value, $Res Function(_$_UserEdges) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = freezed,
  }) {
    return _then(_$_UserEdges(
      node: freezed == node
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as UserNode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserEdges implements _UserEdges {
  const _$_UserEdges({required this.node});

  factory _$_UserEdges.fromJson(Map<String, dynamic> json) =>
      _$$_UserEdgesFromJson(json);

  @override
  final UserNode? node;

  @override
  String toString() {
    return 'UserEdges(node: $node)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserEdges &&
            (identical(other.node, node) || other.node == node));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, node);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserEdgesCopyWith<_$_UserEdges> get copyWith =>
      __$$_UserEdgesCopyWithImpl<_$_UserEdges>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserEdgesToJson(
      this,
    );
  }
}

abstract class _UserEdges implements UserEdges {
  const factory _UserEdges({required final UserNode? node}) = _$_UserEdges;

  factory _UserEdges.fromJson(Map<String, dynamic> json) =
      _$_UserEdges.fromJson;

  @override
  UserNode? get node;
  @override
  @JsonKey(ignore: true)
  _$$_UserEdgesCopyWith<_$_UserEdges> get copyWith =>
      throw _privateConstructorUsedError;
}

UserNode _$UserNodeFromJson(Map<String, dynamic> json) {
  return _UserNode.fromJson(json);
}

/// @nodoc
mixin _$UserNode {
  String? get userId => throw _privateConstructorUsedError;
  String? get aboutMe => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get dateJoined => throw _privateConstructorUsedError;
  bool? get deleted => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get dob => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get gender => throw _privateConstructorUsedError;
  bool? get isActive => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  bool? get isStaff => throw _privateConstructorUsedError;
  String? get lastLogin => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get phone => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserNodeCopyWith<UserNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNodeCopyWith<$Res> {
  factory $UserNodeCopyWith(UserNode value, $Res Function(UserNode) then) =
      _$UserNodeCopyWithImpl<$Res, UserNode>;
  @useResult
  $Res call(
      {String? userId,
      String? aboutMe,
      bool? active,
      String? city,
      String? country,
      String? dateJoined,
      bool? deleted,
      String? email,
      String? dob,
      String? firstName,
      String? gender,
      bool? isActive,
      String? id,
      bool? isStaff,
      String? lastLogin,
      String? lastName,
      String? phone,
      String? picture,
      String? rating,
      String? state});
}

/// @nodoc
class _$UserNodeCopyWithImpl<$Res, $Val extends UserNode>
    implements $UserNodeCopyWith<$Res> {
  _$UserNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? aboutMe = freezed,
    Object? active = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? dateJoined = freezed,
    Object? deleted = freezed,
    Object? email = freezed,
    Object? dob = freezed,
    Object? firstName = freezed,
    Object? gender = freezed,
    Object? isActive = freezed,
    Object? id = freezed,
    Object? isStaff = freezed,
    Object? lastLogin = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? picture = freezed,
    Object? rating = freezed,
    Object? state = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      dateJoined: freezed == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isStaff: freezed == isStaff
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserNodeCopyWith<$Res> implements $UserNodeCopyWith<$Res> {
  factory _$$_UserNodeCopyWith(
          _$_UserNode value, $Res Function(_$_UserNode) then) =
      __$$_UserNodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? userId,
      String? aboutMe,
      bool? active,
      String? city,
      String? country,
      String? dateJoined,
      bool? deleted,
      String? email,
      String? dob,
      String? firstName,
      String? gender,
      bool? isActive,
      String? id,
      bool? isStaff,
      String? lastLogin,
      String? lastName,
      String? phone,
      String? picture,
      String? rating,
      String? state});
}

/// @nodoc
class __$$_UserNodeCopyWithImpl<$Res>
    extends _$UserNodeCopyWithImpl<$Res, _$_UserNode>
    implements _$$_UserNodeCopyWith<$Res> {
  __$$_UserNodeCopyWithImpl(
      _$_UserNode _value, $Res Function(_$_UserNode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
    Object? aboutMe = freezed,
    Object? active = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? dateJoined = freezed,
    Object? deleted = freezed,
    Object? email = freezed,
    Object? dob = freezed,
    Object? firstName = freezed,
    Object? gender = freezed,
    Object? isActive = freezed,
    Object? id = freezed,
    Object? isStaff = freezed,
    Object? lastLogin = freezed,
    Object? lastName = freezed,
    Object? phone = freezed,
    Object? picture = freezed,
    Object? rating = freezed,
    Object? state = freezed,
  }) {
    return _then(_$_UserNode(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
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
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      dateJoined: freezed == dateJoined
          ? _value.dateJoined
          : dateJoined // ignore: cast_nullable_to_non_nullable
              as String?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as bool?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      dob: freezed == dob
          ? _value.dob
          : dob // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      gender: freezed == gender
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as String?,
      isActive: freezed == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      isStaff: freezed == isStaff
          ? _value.isStaff
          : isStaff // ignore: cast_nullable_to_non_nullable
              as bool?,
      lastLogin: freezed == lastLogin
          ? _value.lastLogin
          : lastLogin // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      phone: freezed == phone
          ? _value.phone
          : phone // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserNode implements _UserNode {
  const _$_UserNode(
      {required this.userId,
      required this.aboutMe,
      required this.active,
      required this.city,
      required this.country,
      required this.dateJoined,
      required this.deleted,
      required this.email,
      required this.dob,
      required this.firstName,
      required this.gender,
      required this.isActive,
      required this.id,
      required this.isStaff,
      required this.lastLogin,
      required this.lastName,
      required this.phone,
      required this.picture,
      required this.rating,
      required this.state});

  factory _$_UserNode.fromJson(Map<String, dynamic> json) =>
      _$$_UserNodeFromJson(json);

  @override
  final String? userId;
  @override
  final String? aboutMe;
  @override
  final bool? active;
  @override
  final String? city;
  @override
  final String? country;
  @override
  final String? dateJoined;
  @override
  final bool? deleted;
  @override
  final String? email;
  @override
  final String? dob;
  @override
  final String? firstName;
  @override
  final String? gender;
  @override
  final bool? isActive;
  @override
  final String? id;
  @override
  final bool? isStaff;
  @override
  final String? lastLogin;
  @override
  final String? lastName;
  @override
  final String? phone;
  @override
  final String? picture;
  @override
  final String? rating;
  @override
  final String? state;

  @override
  String toString() {
    return 'UserNode(userId: $userId, aboutMe: $aboutMe, active: $active, city: $city, country: $country, dateJoined: $dateJoined, deleted: $deleted, email: $email, dob: $dob, firstName: $firstName, gender: $gender, isActive: $isActive, id: $id, isStaff: $isStaff, lastLogin: $lastLogin, lastName: $lastName, phone: $phone, picture: $picture, rating: $rating, state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserNode &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.aboutMe, aboutMe) || other.aboutMe == aboutMe) &&
            (identical(other.active, active) || other.active == active) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.dateJoined, dateJoined) ||
                other.dateJoined == dateJoined) &&
            (identical(other.deleted, deleted) || other.deleted == deleted) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.dob, dob) || other.dob == dob) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.gender, gender) || other.gender == gender) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.isStaff, isStaff) || other.isStaff == isStaff) &&
            (identical(other.lastLogin, lastLogin) ||
                other.lastLogin == lastLogin) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.phone, phone) || other.phone == phone) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        userId,
        aboutMe,
        active,
        city,
        country,
        dateJoined,
        deleted,
        email,
        dob,
        firstName,
        gender,
        isActive,
        id,
        isStaff,
        lastLogin,
        lastName,
        phone,
        picture,
        rating,
        state
      ]);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserNodeCopyWith<_$_UserNode> get copyWith =>
      __$$_UserNodeCopyWithImpl<_$_UserNode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserNodeToJson(
      this,
    );
  }
}

abstract class _UserNode implements UserNode {
  const factory _UserNode(
      {required final String? userId,
      required final String? aboutMe,
      required final bool? active,
      required final String? city,
      required final String? country,
      required final String? dateJoined,
      required final bool? deleted,
      required final String? email,
      required final String? dob,
      required final String? firstName,
      required final String? gender,
      required final bool? isActive,
      required final String? id,
      required final bool? isStaff,
      required final String? lastLogin,
      required final String? lastName,
      required final String? phone,
      required final String? picture,
      required final String? rating,
      required final String? state}) = _$_UserNode;

  factory _UserNode.fromJson(Map<String, dynamic> json) = _$_UserNode.fromJson;

  @override
  String? get userId;
  @override
  String? get aboutMe;
  @override
  bool? get active;
  @override
  String? get city;
  @override
  String? get country;
  @override
  String? get dateJoined;
  @override
  bool? get deleted;
  @override
  String? get email;
  @override
  String? get dob;
  @override
  String? get firstName;
  @override
  String? get gender;
  @override
  bool? get isActive;
  @override
  String? get id;
  @override
  bool? get isStaff;
  @override
  String? get lastLogin;
  @override
  String? get lastName;
  @override
  String? get phone;
  @override
  String? get picture;
  @override
  String? get rating;
  @override
  String? get state;
  @override
  @JsonKey(ignore: true)
  _$$_UserNodeCopyWith<_$_UserNode> get copyWith =>
      throw _privateConstructorUsedError;
}
