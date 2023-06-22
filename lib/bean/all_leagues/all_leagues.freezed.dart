// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_leagues.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllLeaguesData _$AllLeaguesDataFromJson(Map<String, dynamic> json) {
  return _AllLeaguesData.fromJson(json);
}

/// @nodoc
mixin _$AllLeaguesData {
  AllLeagues? get allLeagues => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllLeaguesDataCopyWith<AllLeaguesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllLeaguesDataCopyWith<$Res> {
  factory $AllLeaguesDataCopyWith(
          AllLeaguesData value, $Res Function(AllLeaguesData) then) =
      _$AllLeaguesDataCopyWithImpl<$Res, AllLeaguesData>;
  @useResult
  $Res call({AllLeagues? allLeagues});

  $AllLeaguesCopyWith<$Res>? get allLeagues;
}

/// @nodoc
class _$AllLeaguesDataCopyWithImpl<$Res, $Val extends AllLeaguesData>
    implements $AllLeaguesDataCopyWith<$Res> {
  _$AllLeaguesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allLeagues = freezed,
  }) {
    return _then(_value.copyWith(
      allLeagues: freezed == allLeagues
          ? _value.allLeagues
          : allLeagues // ignore: cast_nullable_to_non_nullable
              as AllLeagues?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AllLeaguesCopyWith<$Res>? get allLeagues {
    if (_value.allLeagues == null) {
      return null;
    }

    return $AllLeaguesCopyWith<$Res>(_value.allLeagues!, (value) {
      return _then(_value.copyWith(allLeagues: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AllLeaguesDataCopyWith<$Res>
    implements $AllLeaguesDataCopyWith<$Res> {
  factory _$$_AllLeaguesDataCopyWith(
          _$_AllLeaguesData value, $Res Function(_$_AllLeaguesData) then) =
      __$$_AllLeaguesDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllLeagues? allLeagues});

  @override
  $AllLeaguesCopyWith<$Res>? get allLeagues;
}

/// @nodoc
class __$$_AllLeaguesDataCopyWithImpl<$Res>
    extends _$AllLeaguesDataCopyWithImpl<$Res, _$_AllLeaguesData>
    implements _$$_AllLeaguesDataCopyWith<$Res> {
  __$$_AllLeaguesDataCopyWithImpl(
      _$_AllLeaguesData _value, $Res Function(_$_AllLeaguesData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allLeagues = freezed,
  }) {
    return _then(_$_AllLeaguesData(
      allLeagues: freezed == allLeagues
          ? _value.allLeagues
          : allLeagues // ignore: cast_nullable_to_non_nullable
              as AllLeagues?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllLeaguesData implements _AllLeaguesData {
  const _$_AllLeaguesData({required this.allLeagues});

  factory _$_AllLeaguesData.fromJson(Map<String, dynamic> json) =>
      _$$_AllLeaguesDataFromJson(json);

  @override
  final AllLeagues? allLeagues;

  @override
  String toString() {
    return 'AllLeaguesData(allLeagues: $allLeagues)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllLeaguesData &&
            (identical(other.allLeagues, allLeagues) ||
                other.allLeagues == allLeagues));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, allLeagues);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllLeaguesDataCopyWith<_$_AllLeaguesData> get copyWith =>
      __$$_AllLeaguesDataCopyWithImpl<_$_AllLeaguesData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllLeaguesDataToJson(
      this,
    );
  }
}

abstract class _AllLeaguesData implements AllLeaguesData {
  const factory _AllLeaguesData({required final AllLeagues? allLeagues}) =
      _$_AllLeaguesData;

  factory _AllLeaguesData.fromJson(Map<String, dynamic> json) =
      _$_AllLeaguesData.fromJson;

  @override
  AllLeagues? get allLeagues;
  @override
  @JsonKey(ignore: true)
  _$$_AllLeaguesDataCopyWith<_$_AllLeaguesData> get copyWith =>
      throw _privateConstructorUsedError;
}

AllLeagues _$AllLeaguesFromJson(Map<String, dynamic> json) {
  return _AllLeagues.fromJson(json);
}

/// @nodoc
mixin _$AllLeagues {
  List<LeagueEdges>? get edges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllLeaguesCopyWith<AllLeagues> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllLeaguesCopyWith<$Res> {
  factory $AllLeaguesCopyWith(
          AllLeagues value, $Res Function(AllLeagues) then) =
      _$AllLeaguesCopyWithImpl<$Res, AllLeagues>;
  @useResult
  $Res call({List<LeagueEdges>? edges});
}

/// @nodoc
class _$AllLeaguesCopyWithImpl<$Res, $Val extends AllLeagues>
    implements $AllLeaguesCopyWith<$Res> {
  _$AllLeaguesCopyWithImpl(this._value, this._then);

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
              as List<LeagueEdges>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllLeaguesCopyWith<$Res>
    implements $AllLeaguesCopyWith<$Res> {
  factory _$$_AllLeaguesCopyWith(
          _$_AllLeagues value, $Res Function(_$_AllLeagues) then) =
      __$$_AllLeaguesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LeagueEdges>? edges});
}

/// @nodoc
class __$$_AllLeaguesCopyWithImpl<$Res>
    extends _$AllLeaguesCopyWithImpl<$Res, _$_AllLeagues>
    implements _$$_AllLeaguesCopyWith<$Res> {
  __$$_AllLeaguesCopyWithImpl(
      _$_AllLeagues _value, $Res Function(_$_AllLeagues) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_$_AllLeagues(
      edges: freezed == edges
          ? _value._edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<LeagueEdges>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllLeagues implements _AllLeagues {
  const _$_AllLeagues({required final List<LeagueEdges>? edges})
      : _edges = edges;

  factory _$_AllLeagues.fromJson(Map<String, dynamic> json) =>
      _$$_AllLeaguesFromJson(json);

  final List<LeagueEdges>? _edges;
  @override
  List<LeagueEdges>? get edges {
    final value = _edges;
    if (value == null) return null;
    if (_edges is EqualUnmodifiableListView) return _edges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AllLeagues(edges: $edges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllLeagues &&
            const DeepCollectionEquality().equals(other._edges, _edges));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_edges));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllLeaguesCopyWith<_$_AllLeagues> get copyWith =>
      __$$_AllLeaguesCopyWithImpl<_$_AllLeagues>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllLeaguesToJson(
      this,
    );
  }
}

abstract class _AllLeagues implements AllLeagues {
  const factory _AllLeagues({required final List<LeagueEdges>? edges}) =
      _$_AllLeagues;

  factory _AllLeagues.fromJson(Map<String, dynamic> json) =
      _$_AllLeagues.fromJson;

  @override
  List<LeagueEdges>? get edges;
  @override
  @JsonKey(ignore: true)
  _$$_AllLeaguesCopyWith<_$_AllLeagues> get copyWith =>
      throw _privateConstructorUsedError;
}

LeagueEdges _$LeagueEdgesFromJson(Map<String, dynamic> json) {
  return _LeagueEdges.fromJson(json);
}

/// @nodoc
mixin _$LeagueEdges {
  LeagueNode? get node => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeagueEdgesCopyWith<LeagueEdges> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueEdgesCopyWith<$Res> {
  factory $LeagueEdgesCopyWith(
          LeagueEdges value, $Res Function(LeagueEdges) then) =
      _$LeagueEdgesCopyWithImpl<$Res, LeagueEdges>;
  @useResult
  $Res call({LeagueNode? node});

  $LeagueNodeCopyWith<$Res>? get node;
}

/// @nodoc
class _$LeagueEdgesCopyWithImpl<$Res, $Val extends LeagueEdges>
    implements $LeagueEdgesCopyWith<$Res> {
  _$LeagueEdgesCopyWithImpl(this._value, this._then);

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
              as LeagueNode?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LeagueNodeCopyWith<$Res>? get node {
    if (_value.node == null) {
      return null;
    }

    return $LeagueNodeCopyWith<$Res>(_value.node!, (value) {
      return _then(_value.copyWith(node: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_LeagueEdgesCopyWith<$Res>
    implements $LeagueEdgesCopyWith<$Res> {
  factory _$$_LeagueEdgesCopyWith(
          _$_LeagueEdges value, $Res Function(_$_LeagueEdges) then) =
      __$$_LeagueEdgesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({LeagueNode? node});

  @override
  $LeagueNodeCopyWith<$Res>? get node;
}

/// @nodoc
class __$$_LeagueEdgesCopyWithImpl<$Res>
    extends _$LeagueEdgesCopyWithImpl<$Res, _$_LeagueEdges>
    implements _$$_LeagueEdgesCopyWith<$Res> {
  __$$_LeagueEdgesCopyWithImpl(
      _$_LeagueEdges _value, $Res Function(_$_LeagueEdges) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = freezed,
  }) {
    return _then(_$_LeagueEdges(
      node: freezed == node
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as LeagueNode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeagueEdges implements _LeagueEdges {
  const _$_LeagueEdges({required this.node});

  factory _$_LeagueEdges.fromJson(Map<String, dynamic> json) =>
      _$$_LeagueEdgesFromJson(json);

  @override
  final LeagueNode? node;

  @override
  String toString() {
    return 'LeagueEdges(node: $node)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeagueEdges &&
            (identical(other.node, node) || other.node == node));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, node);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeagueEdgesCopyWith<_$_LeagueEdges> get copyWith =>
      __$$_LeagueEdgesCopyWithImpl<_$_LeagueEdges>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeagueEdgesToJson(
      this,
    );
  }
}

abstract class _LeagueEdges implements LeagueEdges {
  const factory _LeagueEdges({required final LeagueNode? node}) =
      _$_LeagueEdges;

  factory _LeagueEdges.fromJson(Map<String, dynamic> json) =
      _$_LeagueEdges.fromJson;

  @override
  LeagueNode? get node;
  @override
  @JsonKey(ignore: true)
  _$$_LeagueEdgesCopyWith<_$_LeagueEdges> get copyWith =>
      throw _privateConstructorUsedError;
}

LeagueNode _$LeagueNodeFromJson(Map<String, dynamic> json) {
  return _LeagueNode.fromJson(json);
}

/// @nodoc
mixin _$LeagueNode {
  String? get id => throw _privateConstructorUsedError;
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get leagueId => throw _privateConstructorUsedError;
  double? get level => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeagueNodeCopyWith<LeagueNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueNodeCopyWith<$Res> {
  factory $LeagueNodeCopyWith(
          LeagueNode value, $Res Function(LeagueNode) then) =
      _$LeagueNodeCopyWithImpl<$Res, LeagueNode>;
  @useResult
  $Res call(
      {String? id,
      String? city,
      String? country,
      String? description,
      String? endDate,
      String? createdAt,
      String? leagueId,
      double? level,
      String? name,
      String? startDate,
      String? state,
      String? status,
      String? updatedAt});
}

/// @nodoc
class _$LeagueNodeCopyWithImpl<$Res, $Val extends LeagueNode>
    implements $LeagueNodeCopyWith<$Res> {
  _$LeagueNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? description = freezed,
    Object? endDate = freezed,
    Object? createdAt = freezed,
    Object? leagueId = freezed,
    Object? level = freezed,
    Object? name = freezed,
    Object? startDate = freezed,
    Object? state = freezed,
    Object? status = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      leagueId: freezed == leagueId
          ? _value.leagueId
          : leagueId // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LeagueNodeCopyWith<$Res>
    implements $LeagueNodeCopyWith<$Res> {
  factory _$$_LeagueNodeCopyWith(
          _$_LeagueNode value, $Res Function(_$_LeagueNode) then) =
      __$$_LeagueNodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? city,
      String? country,
      String? description,
      String? endDate,
      String? createdAt,
      String? leagueId,
      double? level,
      String? name,
      String? startDate,
      String? state,
      String? status,
      String? updatedAt});
}

/// @nodoc
class __$$_LeagueNodeCopyWithImpl<$Res>
    extends _$LeagueNodeCopyWithImpl<$Res, _$_LeagueNode>
    implements _$$_LeagueNodeCopyWith<$Res> {
  __$$_LeagueNodeCopyWithImpl(
      _$_LeagueNode _value, $Res Function(_$_LeagueNode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? city = freezed,
    Object? country = freezed,
    Object? description = freezed,
    Object? endDate = freezed,
    Object? createdAt = freezed,
    Object? leagueId = freezed,
    Object? level = freezed,
    Object? name = freezed,
    Object? startDate = freezed,
    Object? state = freezed,
    Object? status = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_LeagueNode(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      leagueId: freezed == leagueId
          ? _value.leagueId
          : leagueId // ignore: cast_nullable_to_non_nullable
              as String?,
      level: freezed == level
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeagueNode implements _LeagueNode {
  const _$_LeagueNode(
      {required this.id,
      required this.city,
      required this.country,
      required this.description,
      required this.endDate,
      required this.createdAt,
      required this.leagueId,
      required this.level,
      required this.name,
      required this.startDate,
      required this.state,
      required this.status,
      required this.updatedAt});

  factory _$_LeagueNode.fromJson(Map<String, dynamic> json) =>
      _$$_LeagueNodeFromJson(json);

  @override
  final String? id;
  @override
  final String? city;
  @override
  final String? country;
  @override
  final String? description;
  @override
  final String? endDate;
  @override
  final String? createdAt;
  @override
  final String? leagueId;
  @override
  final double? level;
  @override
  final String? name;
  @override
  final String? startDate;
  @override
  final String? state;
  @override
  final String? status;
  @override
  final String? updatedAt;

  @override
  String toString() {
    return 'LeagueNode(id: $id, city: $city, country: $country, description: $description, endDate: $endDate, createdAt: $createdAt, leagueId: $leagueId, level: $level, name: $name, startDate: $startDate, state: $state, status: $status, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeagueNode &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.leagueId, leagueId) ||
                other.leagueId == leagueId) &&
            (identical(other.level, level) || other.level == level) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      city,
      country,
      description,
      endDate,
      createdAt,
      leagueId,
      level,
      name,
      startDate,
      state,
      status,
      updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LeagueNodeCopyWith<_$_LeagueNode> get copyWith =>
      __$$_LeagueNodeCopyWithImpl<_$_LeagueNode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeagueNodeToJson(
      this,
    );
  }
}

abstract class _LeagueNode implements LeagueNode {
  const factory _LeagueNode(
      {required final String? id,
      required final String? city,
      required final String? country,
      required final String? description,
      required final String? endDate,
      required final String? createdAt,
      required final String? leagueId,
      required final double? level,
      required final String? name,
      required final String? startDate,
      required final String? state,
      required final String? status,
      required final String? updatedAt}) = _$_LeagueNode;

  factory _LeagueNode.fromJson(Map<String, dynamic> json) =
      _$_LeagueNode.fromJson;

  @override
  String? get id;
  @override
  String? get city;
  @override
  String? get country;
  @override
  String? get description;
  @override
  String? get endDate;
  @override
  String? get createdAt;
  @override
  String? get leagueId;
  @override
  double? get level;
  @override
  String? get name;
  @override
  String? get startDate;
  @override
  String? get state;
  @override
  String? get status;
  @override
  String? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$_LeagueNodeCopyWith<_$_LeagueNode> get copyWith =>
      throw _privateConstructorUsedError;
}
