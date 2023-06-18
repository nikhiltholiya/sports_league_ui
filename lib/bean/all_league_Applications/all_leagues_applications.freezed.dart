// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_leagues_applications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllLeaguesApps _$AllLeaguesAppsFromJson(Map<String, dynamic> json) {
  return _AllLeaguesApps.fromJson(json);
}

/// @nodoc
mixin _$AllLeaguesApps {
  AllLeagueApplications? get allLeagueApplications =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllLeaguesAppsCopyWith<AllLeaguesApps> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllLeaguesAppsCopyWith<$Res> {
  factory $AllLeaguesAppsCopyWith(
          AllLeaguesApps value, $Res Function(AllLeaguesApps) then) =
      _$AllLeaguesAppsCopyWithImpl<$Res, AllLeaguesApps>;
  @useResult
  $Res call({AllLeagueApplications? allLeagueApplications});

  $AllLeagueApplicationsCopyWith<$Res>? get allLeagueApplications;
}

/// @nodoc
class _$AllLeaguesAppsCopyWithImpl<$Res, $Val extends AllLeaguesApps>
    implements $AllLeaguesAppsCopyWith<$Res> {
  _$AllLeaguesAppsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allLeagueApplications = freezed,
  }) {
    return _then(_value.copyWith(
      allLeagueApplications: freezed == allLeagueApplications
          ? _value.allLeagueApplications
          : allLeagueApplications // ignore: cast_nullable_to_non_nullable
              as AllLeagueApplications?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AllLeagueApplicationsCopyWith<$Res>? get allLeagueApplications {
    if (_value.allLeagueApplications == null) {
      return null;
    }

    return $AllLeagueApplicationsCopyWith<$Res>(_value.allLeagueApplications!,
        (value) {
      return _then(_value.copyWith(allLeagueApplications: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AllLeaguesAppsCopyWith<$Res>
    implements $AllLeaguesAppsCopyWith<$Res> {
  factory _$$_AllLeaguesAppsCopyWith(
          _$_AllLeaguesApps value, $Res Function(_$_AllLeaguesApps) then) =
      __$$_AllLeaguesAppsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllLeagueApplications? allLeagueApplications});

  @override
  $AllLeagueApplicationsCopyWith<$Res>? get allLeagueApplications;
}

/// @nodoc
class __$$_AllLeaguesAppsCopyWithImpl<$Res>
    extends _$AllLeaguesAppsCopyWithImpl<$Res, _$_AllLeaguesApps>
    implements _$$_AllLeaguesAppsCopyWith<$Res> {
  __$$_AllLeaguesAppsCopyWithImpl(
      _$_AllLeaguesApps _value, $Res Function(_$_AllLeaguesApps) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allLeagueApplications = freezed,
  }) {
    return _then(_$_AllLeaguesApps(
      allLeagueApplications: freezed == allLeagueApplications
          ? _value.allLeagueApplications
          : allLeagueApplications // ignore: cast_nullable_to_non_nullable
              as AllLeagueApplications?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllLeaguesApps implements _AllLeaguesApps {
  const _$_AllLeaguesApps({required this.allLeagueApplications});

  factory _$_AllLeaguesApps.fromJson(Map<String, dynamic> json) =>
      _$$_AllLeaguesAppsFromJson(json);

  @override
  final AllLeagueApplications? allLeagueApplications;

  @override
  String toString() {
    return 'AllLeaguesApps(allLeagueApplications: $allLeagueApplications)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllLeaguesApps &&
            (identical(other.allLeagueApplications, allLeagueApplications) ||
                other.allLeagueApplications == allLeagueApplications));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, allLeagueApplications);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllLeaguesAppsCopyWith<_$_AllLeaguesApps> get copyWith =>
      __$$_AllLeaguesAppsCopyWithImpl<_$_AllLeaguesApps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllLeaguesAppsToJson(
      this,
    );
  }
}

abstract class _AllLeaguesApps implements AllLeaguesApps {
  const factory _AllLeaguesApps(
          {required final AllLeagueApplications? allLeagueApplications}) =
      _$_AllLeaguesApps;

  factory _AllLeaguesApps.fromJson(Map<String, dynamic> json) =
      _$_AllLeaguesApps.fromJson;

  @override
  AllLeagueApplications? get allLeagueApplications;
  @override
  @JsonKey(ignore: true)
  _$$_AllLeaguesAppsCopyWith<_$_AllLeaguesApps> get copyWith =>
      throw _privateConstructorUsedError;
}

AllLeagueApplications _$AllLeagueApplicationsFromJson(
    Map<String, dynamic> json) {
  return _AllLeagueApplications.fromJson(json);
}

/// @nodoc
mixin _$AllLeagueApplications {
  List<LeagueEdges>? get edges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllLeagueApplicationsCopyWith<AllLeagueApplications> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllLeagueApplicationsCopyWith<$Res> {
  factory $AllLeagueApplicationsCopyWith(AllLeagueApplications value,
          $Res Function(AllLeagueApplications) then) =
      _$AllLeagueApplicationsCopyWithImpl<$Res, AllLeagueApplications>;
  @useResult
  $Res call({List<LeagueEdges>? edges});
}

/// @nodoc
class _$AllLeagueApplicationsCopyWithImpl<$Res,
        $Val extends AllLeagueApplications>
    implements $AllLeagueApplicationsCopyWith<$Res> {
  _$AllLeagueApplicationsCopyWithImpl(this._value, this._then);

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
abstract class _$$_AllLeagueApplicationsCopyWith<$Res>
    implements $AllLeagueApplicationsCopyWith<$Res> {
  factory _$$_AllLeagueApplicationsCopyWith(_$_AllLeagueApplications value,
          $Res Function(_$_AllLeagueApplications) then) =
      __$$_AllLeagueApplicationsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<LeagueEdges>? edges});
}

/// @nodoc
class __$$_AllLeagueApplicationsCopyWithImpl<$Res>
    extends _$AllLeagueApplicationsCopyWithImpl<$Res, _$_AllLeagueApplications>
    implements _$$_AllLeagueApplicationsCopyWith<$Res> {
  __$$_AllLeagueApplicationsCopyWithImpl(_$_AllLeagueApplications _value,
      $Res Function(_$_AllLeagueApplications) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_$_AllLeagueApplications(
      edges: freezed == edges
          ? _value._edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<LeagueEdges>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllLeagueApplications implements _AllLeagueApplications {
  const _$_AllLeagueApplications({required final List<LeagueEdges>? edges})
      : _edges = edges;

  factory _$_AllLeagueApplications.fromJson(Map<String, dynamic> json) =>
      _$$_AllLeagueApplicationsFromJson(json);

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
    return 'AllLeagueApplications(edges: $edges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllLeagueApplications &&
            const DeepCollectionEquality().equals(other._edges, _edges));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_edges));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllLeagueApplicationsCopyWith<_$_AllLeagueApplications> get copyWith =>
      __$$_AllLeagueApplicationsCopyWithImpl<_$_AllLeagueApplications>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllLeagueApplicationsToJson(
      this,
    );
  }
}

abstract class _AllLeagueApplications implements AllLeagueApplications {
  const factory _AllLeagueApplications(
      {required final List<LeagueEdges>? edges}) = _$_AllLeagueApplications;

  factory _AllLeagueApplications.fromJson(Map<String, dynamic> json) =
      _$_AllLeagueApplications.fromJson;

  @override
  List<LeagueEdges>? get edges;
  @override
  @JsonKey(ignore: true)
  _$$_AllLeagueApplicationsCopyWith<_$_AllLeagueApplications> get copyWith =>
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
  League? get league => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  Applicant? get applicant => throw _privateConstructorUsedError;

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
  $Res call({String? id, League? league, String? status, Applicant? applicant});

  $LeagueCopyWith<$Res>? get league;
  $ApplicantCopyWith<$Res>? get applicant;
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
    Object? league = freezed,
    Object? status = freezed,
    Object? applicant = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      league: freezed == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as League?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      applicant: freezed == applicant
          ? _value.applicant
          : applicant // ignore: cast_nullable_to_non_nullable
              as Applicant?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $LeagueCopyWith<$Res>? get league {
    if (_value.league == null) {
      return null;
    }

    return $LeagueCopyWith<$Res>(_value.league!, (value) {
      return _then(_value.copyWith(league: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $ApplicantCopyWith<$Res>? get applicant {
    if (_value.applicant == null) {
      return null;
    }

    return $ApplicantCopyWith<$Res>(_value.applicant!, (value) {
      return _then(_value.copyWith(applicant: value) as $Val);
    });
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
  $Res call({String? id, League? league, String? status, Applicant? applicant});

  @override
  $LeagueCopyWith<$Res>? get league;
  @override
  $ApplicantCopyWith<$Res>? get applicant;
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
    Object? league = freezed,
    Object? status = freezed,
    Object? applicant = freezed,
  }) {
    return _then(_$_LeagueNode(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      league: freezed == league
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as League?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      applicant: freezed == applicant
          ? _value.applicant
          : applicant // ignore: cast_nullable_to_non_nullable
              as Applicant?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LeagueNode implements _LeagueNode {
  const _$_LeagueNode(
      {required this.id,
      required this.league,
      required this.status,
      required this.applicant});

  factory _$_LeagueNode.fromJson(Map<String, dynamic> json) =>
      _$$_LeagueNodeFromJson(json);

  @override
  final String? id;
  @override
  final League? league;
  @override
  final String? status;
  @override
  final Applicant? applicant;

  @override
  String toString() {
    return 'LeagueNode(id: $id, league: $league, status: $status, applicant: $applicant)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeagueNode &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.league, league) || other.league == league) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.applicant, applicant) ||
                other.applicant == applicant));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, league, status, applicant);

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
      required final League? league,
      required final String? status,
      required final Applicant? applicant}) = _$_LeagueNode;

  factory _LeagueNode.fromJson(Map<String, dynamic> json) =
      _$_LeagueNode.fromJson;

  @override
  String? get id;
  @override
  League? get league;
  @override
  String? get status;
  @override
  Applicant? get applicant;
  @override
  @JsonKey(ignore: true)
  _$$_LeagueNodeCopyWith<_$_LeagueNode> get copyWith =>
      throw _privateConstructorUsedError;
}

League _$LeagueFromJson(Map<String, dynamic> json) {
  return _League.fromJson(json);
}

/// @nodoc
mixin _$League {
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get leagueId => throw _privateConstructorUsedError;
  double? get level => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LeagueCopyWith<League> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LeagueCopyWith<$Res> {
  factory $LeagueCopyWith(League value, $Res Function(League) then) =
      _$LeagueCopyWithImpl<$Res, League>;
  @useResult
  $Res call(
      {String? city,
      String? country,
      String? createdAt,
      String? description,
      String? endDate,
      String? id,
      String? leagueId,
      double? level,
      String? name,
      String? startDate,
      String? state,
      String? status,
      String? updatedAt});
}

/// @nodoc
class _$LeagueCopyWithImpl<$Res, $Val extends League>
    implements $LeagueCopyWith<$Res> {
  _$LeagueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? country = freezed,
    Object? createdAt = freezed,
    Object? description = freezed,
    Object? endDate = freezed,
    Object? id = freezed,
    Object? leagueId = freezed,
    Object? level = freezed,
    Object? name = freezed,
    Object? startDate = freezed,
    Object? state = freezed,
    Object? status = freezed,
    Object? updatedAt = freezed,
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
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
abstract class _$$_LeagueCopyWith<$Res> implements $LeagueCopyWith<$Res> {
  factory _$$_LeagueCopyWith(_$_League value, $Res Function(_$_League) then) =
      __$$_LeagueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? city,
      String? country,
      String? createdAt,
      String? description,
      String? endDate,
      String? id,
      String? leagueId,
      double? level,
      String? name,
      String? startDate,
      String? state,
      String? status,
      String? updatedAt});
}

/// @nodoc
class __$$_LeagueCopyWithImpl<$Res>
    extends _$LeagueCopyWithImpl<$Res, _$_League>
    implements _$$_LeagueCopyWith<$Res> {
  __$$_LeagueCopyWithImpl(_$_League _value, $Res Function(_$_League) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? city = freezed,
    Object? country = freezed,
    Object? createdAt = freezed,
    Object? description = freezed,
    Object? endDate = freezed,
    Object? id = freezed,
    Object? leagueId = freezed,
    Object? level = freezed,
    Object? name = freezed,
    Object? startDate = freezed,
    Object? state = freezed,
    Object? status = freezed,
    Object? updatedAt = freezed,
  }) {
    return _then(_$_League(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
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
class _$_League implements _League {
  const _$_League(
      {required this.city,
      required this.country,
      required this.createdAt,
      required this.description,
      required this.endDate,
      required this.id,
      required this.leagueId,
      required this.level,
      required this.name,
      required this.startDate,
      required this.state,
      required this.status,
      required this.updatedAt});

  factory _$_League.fromJson(Map<String, dynamic> json) =>
      _$$_LeagueFromJson(json);

  @override
  final String? city;
  @override
  final String? country;
  @override
  final String? createdAt;
  @override
  final String? description;
  @override
  final String? endDate;
  @override
  final String? id;
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
    return 'League(city: $city, country: $country, createdAt: $createdAt, description: $description, endDate: $endDate, id: $id, leagueId: $leagueId, level: $level, name: $name, startDate: $startDate, state: $state, status: $status, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_League &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.id, id) || other.id == id) &&
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
      city,
      country,
      createdAt,
      description,
      endDate,
      id,
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
  _$$_LeagueCopyWith<_$_League> get copyWith =>
      __$$_LeagueCopyWithImpl<_$_League>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeagueToJson(
      this,
    );
  }
}

abstract class _League implements League {
  const factory _League(
      {required final String? city,
      required final String? country,
      required final String? createdAt,
      required final String? description,
      required final String? endDate,
      required final String? id,
      required final String? leagueId,
      required final double? level,
      required final String? name,
      required final String? startDate,
      required final String? state,
      required final String? status,
      required final String? updatedAt}) = _$_League;

  factory _League.fromJson(Map<String, dynamic> json) = _$_League.fromJson;

  @override
  String? get city;
  @override
  String? get country;
  @override
  String? get createdAt;
  @override
  String? get description;
  @override
  String? get endDate;
  @override
  String? get id;
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
  _$$_LeagueCopyWith<_$_League> get copyWith =>
      throw _privateConstructorUsedError;
}

Applicant _$ApplicantFromJson(Map<String, dynamic> json) {
  return _Applicant.fromJson(json);
}

/// @nodoc
mixin _$Applicant {
  String? get userId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ApplicantCopyWith<Applicant> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ApplicantCopyWith<$Res> {
  factory $ApplicantCopyWith(Applicant value, $Res Function(Applicant) then) =
      _$ApplicantCopyWithImpl<$Res, Applicant>;
  @useResult
  $Res call({String? userId});
}

/// @nodoc
class _$ApplicantCopyWithImpl<$Res, $Val extends Applicant>
    implements $ApplicantCopyWith<$Res> {
  _$ApplicantCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ApplicantCopyWith<$Res> implements $ApplicantCopyWith<$Res> {
  factory _$$_ApplicantCopyWith(
          _$_Applicant value, $Res Function(_$_Applicant) then) =
      __$$_ApplicantCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? userId});
}

/// @nodoc
class __$$_ApplicantCopyWithImpl<$Res>
    extends _$ApplicantCopyWithImpl<$Res, _$_Applicant>
    implements _$$_ApplicantCopyWith<$Res> {
  __$$_ApplicantCopyWithImpl(
      _$_Applicant _value, $Res Function(_$_Applicant) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_$_Applicant(
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Applicant implements _Applicant {
  const _$_Applicant({required this.userId});

  factory _$_Applicant.fromJson(Map<String, dynamic> json) =>
      _$$_ApplicantFromJson(json);

  @override
  final String? userId;

  @override
  String toString() {
    return 'Applicant(userId: $userId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Applicant &&
            (identical(other.userId, userId) || other.userId == userId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, userId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ApplicantCopyWith<_$_Applicant> get copyWith =>
      __$$_ApplicantCopyWithImpl<_$_Applicant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApplicantToJson(
      this,
    );
  }
}

abstract class _Applicant implements Applicant {
  const factory _Applicant({required final String? userId}) = _$_Applicant;

  factory _Applicant.fromJson(Map<String, dynamic> json) =
      _$_Applicant.fromJson;

  @override
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$$_ApplicantCopyWith<_$_Applicant> get copyWith =>
      throw _privateConstructorUsedError;
}
