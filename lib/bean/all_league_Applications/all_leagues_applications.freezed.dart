// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'all_leagues_applications.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllLeaguesApps _$AllLeaguesAppsFromJson(Map<String, dynamic> json) {
  return _AllLeaguesApps.fromJson(json);
}

/// @nodoc
class _$AllLeaguesAppsTearOff {
  const _$AllLeaguesAppsTearOff();

  _AllLeaguesApps call(
      {required AllLeagueApplications? allLeagueApplications}) {
    return _AllLeaguesApps(
      allLeagueApplications: allLeagueApplications,
    );
  }

  AllLeaguesApps fromJson(Map<String, Object?> json) {
    return AllLeaguesApps.fromJson(json);
  }
}

/// @nodoc
const $AllLeaguesApps = _$AllLeaguesAppsTearOff();

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
      _$AllLeaguesAppsCopyWithImpl<$Res>;
  $Res call({AllLeagueApplications? allLeagueApplications});

  $AllLeagueApplicationsCopyWith<$Res>? get allLeagueApplications;
}

/// @nodoc
class _$AllLeaguesAppsCopyWithImpl<$Res>
    implements $AllLeaguesAppsCopyWith<$Res> {
  _$AllLeaguesAppsCopyWithImpl(this._value, this._then);

  final AllLeaguesApps _value;
  // ignore: unused_field
  final $Res Function(AllLeaguesApps) _then;

  @override
  $Res call({
    Object? allLeagueApplications = freezed,
  }) {
    return _then(_value.copyWith(
      allLeagueApplications: allLeagueApplications == freezed
          ? _value.allLeagueApplications
          : allLeagueApplications // ignore: cast_nullable_to_non_nullable
              as AllLeagueApplications?,
    ));
  }

  @override
  $AllLeagueApplicationsCopyWith<$Res>? get allLeagueApplications {
    if (_value.allLeagueApplications == null) {
      return null;
    }

    return $AllLeagueApplicationsCopyWith<$Res>(_value.allLeagueApplications!,
        (value) {
      return _then(_value.copyWith(allLeagueApplications: value));
    });
  }
}

/// @nodoc
abstract class _$AllLeaguesAppsCopyWith<$Res>
    implements $AllLeaguesAppsCopyWith<$Res> {
  factory _$AllLeaguesAppsCopyWith(
          _AllLeaguesApps value, $Res Function(_AllLeaguesApps) then) =
      __$AllLeaguesAppsCopyWithImpl<$Res>;
  @override
  $Res call({AllLeagueApplications? allLeagueApplications});

  @override
  $AllLeagueApplicationsCopyWith<$Res>? get allLeagueApplications;
}

/// @nodoc
class __$AllLeaguesAppsCopyWithImpl<$Res>
    extends _$AllLeaguesAppsCopyWithImpl<$Res>
    implements _$AllLeaguesAppsCopyWith<$Res> {
  __$AllLeaguesAppsCopyWithImpl(
      _AllLeaguesApps _value, $Res Function(_AllLeaguesApps) _then)
      : super(_value, (v) => _then(v as _AllLeaguesApps));

  @override
  _AllLeaguesApps get _value => super._value as _AllLeaguesApps;

  @override
  $Res call({
    Object? allLeagueApplications = freezed,
  }) {
    return _then(_AllLeaguesApps(
      allLeagueApplications: allLeagueApplications == freezed
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
            other is _AllLeaguesApps &&
            const DeepCollectionEquality()
                .equals(other.allLeagueApplications, allLeagueApplications));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(allLeagueApplications));

  @JsonKey(ignore: true)
  @override
  _$AllLeaguesAppsCopyWith<_AllLeaguesApps> get copyWith =>
      __$AllLeaguesAppsCopyWithImpl<_AllLeaguesApps>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllLeaguesAppsToJson(this);
  }
}

abstract class _AllLeaguesApps implements AllLeaguesApps {
  const factory _AllLeaguesApps(
          {required AllLeagueApplications? allLeagueApplications}) =
      _$_AllLeaguesApps;

  factory _AllLeaguesApps.fromJson(Map<String, dynamic> json) =
      _$_AllLeaguesApps.fromJson;

  @override
  AllLeagueApplications? get allLeagueApplications;
  @override
  @JsonKey(ignore: true)
  _$AllLeaguesAppsCopyWith<_AllLeaguesApps> get copyWith =>
      throw _privateConstructorUsedError;
}

AllLeagueApplications _$AllLeagueApplicationsFromJson(
    Map<String, dynamic> json) {
  return _AllLeagueApplications.fromJson(json);
}

/// @nodoc
class _$AllLeagueApplicationsTearOff {
  const _$AllLeagueApplicationsTearOff();

  _AllLeagueApplications call({required List<LeagueEdges>? edges}) {
    return _AllLeagueApplications(
      edges: edges,
    );
  }

  AllLeagueApplications fromJson(Map<String, Object?> json) {
    return AllLeagueApplications.fromJson(json);
  }
}

/// @nodoc
const $AllLeagueApplications = _$AllLeagueApplicationsTearOff();

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
      _$AllLeagueApplicationsCopyWithImpl<$Res>;
  $Res call({List<LeagueEdges>? edges});
}

/// @nodoc
class _$AllLeagueApplicationsCopyWithImpl<$Res>
    implements $AllLeagueApplicationsCopyWith<$Res> {
  _$AllLeagueApplicationsCopyWithImpl(this._value, this._then);

  final AllLeagueApplications _value;
  // ignore: unused_field
  final $Res Function(AllLeagueApplications) _then;

  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_value.copyWith(
      edges: edges == freezed
          ? _value.edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<LeagueEdges>?,
    ));
  }
}

/// @nodoc
abstract class _$AllLeagueApplicationsCopyWith<$Res>
    implements $AllLeagueApplicationsCopyWith<$Res> {
  factory _$AllLeagueApplicationsCopyWith(_AllLeagueApplications value,
          $Res Function(_AllLeagueApplications) then) =
      __$AllLeagueApplicationsCopyWithImpl<$Res>;
  @override
  $Res call({List<LeagueEdges>? edges});
}

/// @nodoc
class __$AllLeagueApplicationsCopyWithImpl<$Res>
    extends _$AllLeagueApplicationsCopyWithImpl<$Res>
    implements _$AllLeagueApplicationsCopyWith<$Res> {
  __$AllLeagueApplicationsCopyWithImpl(_AllLeagueApplications _value,
      $Res Function(_AllLeagueApplications) _then)
      : super(_value, (v) => _then(v as _AllLeagueApplications));

  @override
  _AllLeagueApplications get _value => super._value as _AllLeagueApplications;

  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_AllLeagueApplications(
      edges: edges == freezed
          ? _value.edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<LeagueEdges>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllLeagueApplications implements _AllLeagueApplications {
  const _$_AllLeagueApplications({required this.edges});

  factory _$_AllLeagueApplications.fromJson(Map<String, dynamic> json) =>
      _$$_AllLeagueApplicationsFromJson(json);

  @override
  final List<LeagueEdges>? edges;

  @override
  String toString() {
    return 'AllLeagueApplications(edges: $edges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllLeagueApplications &&
            const DeepCollectionEquality().equals(other.edges, edges));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(edges));

  @JsonKey(ignore: true)
  @override
  _$AllLeagueApplicationsCopyWith<_AllLeagueApplications> get copyWith =>
      __$AllLeagueApplicationsCopyWithImpl<_AllLeagueApplications>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllLeagueApplicationsToJson(this);
  }
}

abstract class _AllLeagueApplications implements AllLeagueApplications {
  const factory _AllLeagueApplications({required List<LeagueEdges>? edges}) =
      _$_AllLeagueApplications;

  factory _AllLeagueApplications.fromJson(Map<String, dynamic> json) =
      _$_AllLeagueApplications.fromJson;

  @override
  List<LeagueEdges>? get edges;
  @override
  @JsonKey(ignore: true)
  _$AllLeagueApplicationsCopyWith<_AllLeagueApplications> get copyWith =>
      throw _privateConstructorUsedError;
}

LeagueEdges _$LeagueEdgesFromJson(Map<String, dynamic> json) {
  return _LeagueEdges.fromJson(json);
}

/// @nodoc
class _$LeagueEdgesTearOff {
  const _$LeagueEdgesTearOff();

  _LeagueEdges call({required LeagueNode? node}) {
    return _LeagueEdges(
      node: node,
    );
  }

  LeagueEdges fromJson(Map<String, Object?> json) {
    return LeagueEdges.fromJson(json);
  }
}

/// @nodoc
const $LeagueEdges = _$LeagueEdgesTearOff();

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
      _$LeagueEdgesCopyWithImpl<$Res>;
  $Res call({LeagueNode? node});

  $LeagueNodeCopyWith<$Res>? get node;
}

/// @nodoc
class _$LeagueEdgesCopyWithImpl<$Res> implements $LeagueEdgesCopyWith<$Res> {
  _$LeagueEdgesCopyWithImpl(this._value, this._then);

  final LeagueEdges _value;
  // ignore: unused_field
  final $Res Function(LeagueEdges) _then;

  @override
  $Res call({
    Object? node = freezed,
  }) {
    return _then(_value.copyWith(
      node: node == freezed
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as LeagueNode?,
    ));
  }

  @override
  $LeagueNodeCopyWith<$Res>? get node {
    if (_value.node == null) {
      return null;
    }

    return $LeagueNodeCopyWith<$Res>(_value.node!, (value) {
      return _then(_value.copyWith(node: value));
    });
  }
}

/// @nodoc
abstract class _$LeagueEdgesCopyWith<$Res>
    implements $LeagueEdgesCopyWith<$Res> {
  factory _$LeagueEdgesCopyWith(
          _LeagueEdges value, $Res Function(_LeagueEdges) then) =
      __$LeagueEdgesCopyWithImpl<$Res>;
  @override
  $Res call({LeagueNode? node});

  @override
  $LeagueNodeCopyWith<$Res>? get node;
}

/// @nodoc
class __$LeagueEdgesCopyWithImpl<$Res> extends _$LeagueEdgesCopyWithImpl<$Res>
    implements _$LeagueEdgesCopyWith<$Res> {
  __$LeagueEdgesCopyWithImpl(
      _LeagueEdges _value, $Res Function(_LeagueEdges) _then)
      : super(_value, (v) => _then(v as _LeagueEdges));

  @override
  _LeagueEdges get _value => super._value as _LeagueEdges;

  @override
  $Res call({
    Object? node = freezed,
  }) {
    return _then(_LeagueEdges(
      node: node == freezed
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
            other is _LeagueEdges &&
            const DeepCollectionEquality().equals(other.node, node));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(node));

  @JsonKey(ignore: true)
  @override
  _$LeagueEdgesCopyWith<_LeagueEdges> get copyWith =>
      __$LeagueEdgesCopyWithImpl<_LeagueEdges>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeagueEdgesToJson(this);
  }
}

abstract class _LeagueEdges implements LeagueEdges {
  const factory _LeagueEdges({required LeagueNode? node}) = _$_LeagueEdges;

  factory _LeagueEdges.fromJson(Map<String, dynamic> json) =
      _$_LeagueEdges.fromJson;

  @override
  LeagueNode? get node;
  @override
  @JsonKey(ignore: true)
  _$LeagueEdgesCopyWith<_LeagueEdges> get copyWith =>
      throw _privateConstructorUsedError;
}

LeagueNode _$LeagueNodeFromJson(Map<String, dynamic> json) {
  return _LeagueNode.fromJson(json);
}

/// @nodoc
class _$LeagueNodeTearOff {
  const _$LeagueNodeTearOff();

  _LeagueNode call(
      {required String? id,
      required League? league,
      required String? status,
      required Applicant? applicant}) {
    return _LeagueNode(
      id: id,
      league: league,
      status: status,
      applicant: applicant,
    );
  }

  LeagueNode fromJson(Map<String, Object?> json) {
    return LeagueNode.fromJson(json);
  }
}

/// @nodoc
const $LeagueNode = _$LeagueNodeTearOff();

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
      _$LeagueNodeCopyWithImpl<$Res>;
  $Res call({String? id, League? league, String? status, Applicant? applicant});

  $LeagueCopyWith<$Res>? get league;
  $ApplicantCopyWith<$Res>? get applicant;
}

/// @nodoc
class _$LeagueNodeCopyWithImpl<$Res> implements $LeagueNodeCopyWith<$Res> {
  _$LeagueNodeCopyWithImpl(this._value, this._then);

  final LeagueNode _value;
  // ignore: unused_field
  final $Res Function(LeagueNode) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? league = freezed,
    Object? status = freezed,
    Object? applicant = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      league: league == freezed
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as League?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      applicant: applicant == freezed
          ? _value.applicant
          : applicant // ignore: cast_nullable_to_non_nullable
              as Applicant?,
    ));
  }

  @override
  $LeagueCopyWith<$Res>? get league {
    if (_value.league == null) {
      return null;
    }

    return $LeagueCopyWith<$Res>(_value.league!, (value) {
      return _then(_value.copyWith(league: value));
    });
  }

  @override
  $ApplicantCopyWith<$Res>? get applicant {
    if (_value.applicant == null) {
      return null;
    }

    return $ApplicantCopyWith<$Res>(_value.applicant!, (value) {
      return _then(_value.copyWith(applicant: value));
    });
  }
}

/// @nodoc
abstract class _$LeagueNodeCopyWith<$Res> implements $LeagueNodeCopyWith<$Res> {
  factory _$LeagueNodeCopyWith(
          _LeagueNode value, $Res Function(_LeagueNode) then) =
      __$LeagueNodeCopyWithImpl<$Res>;
  @override
  $Res call({String? id, League? league, String? status, Applicant? applicant});

  @override
  $LeagueCopyWith<$Res>? get league;
  @override
  $ApplicantCopyWith<$Res>? get applicant;
}

/// @nodoc
class __$LeagueNodeCopyWithImpl<$Res> extends _$LeagueNodeCopyWithImpl<$Res>
    implements _$LeagueNodeCopyWith<$Res> {
  __$LeagueNodeCopyWithImpl(
      _LeagueNode _value, $Res Function(_LeagueNode) _then)
      : super(_value, (v) => _then(v as _LeagueNode));

  @override
  _LeagueNode get _value => super._value as _LeagueNode;

  @override
  $Res call({
    Object? id = freezed,
    Object? league = freezed,
    Object? status = freezed,
    Object? applicant = freezed,
  }) {
    return _then(_LeagueNode(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      league: league == freezed
          ? _value.league
          : league // ignore: cast_nullable_to_non_nullable
              as League?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      applicant: applicant == freezed
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
            other is _LeagueNode &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.league, league) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.applicant, applicant));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(league),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(applicant));

  @JsonKey(ignore: true)
  @override
  _$LeagueNodeCopyWith<_LeagueNode> get copyWith =>
      __$LeagueNodeCopyWithImpl<_LeagueNode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeagueNodeToJson(this);
  }
}

abstract class _LeagueNode implements LeagueNode {
  const factory _LeagueNode(
      {required String? id,
      required League? league,
      required String? status,
      required Applicant? applicant}) = _$_LeagueNode;

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
  _$LeagueNodeCopyWith<_LeagueNode> get copyWith =>
      throw _privateConstructorUsedError;
}

League _$LeagueFromJson(Map<String, dynamic> json) {
  return _League.fromJson(json);
}

/// @nodoc
class _$LeagueTearOff {
  const _$LeagueTearOff();

  _League call(
      {required String? city,
      required String? country,
      required String? createdAt,
      required String? description,
      required String? endDate,
      required String? id,
      required String? leagueId,
      required double? level,
      required String? name,
      required String? startDate,
      required String? state,
      required String? status,
      required String? updatedAt}) {
    return _League(
      city: city,
      country: country,
      createdAt: createdAt,
      description: description,
      endDate: endDate,
      id: id,
      leagueId: leagueId,
      level: level,
      name: name,
      startDate: startDate,
      state: state,
      status: status,
      updatedAt: updatedAt,
    );
  }

  League fromJson(Map<String, Object?> json) {
    return League.fromJson(json);
  }
}

/// @nodoc
const $League = _$LeagueTearOff();

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
      _$LeagueCopyWithImpl<$Res>;
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
class _$LeagueCopyWithImpl<$Res> implements $LeagueCopyWith<$Res> {
  _$LeagueCopyWithImpl(this._value, this._then);

  final League _value;
  // ignore: unused_field
  final $Res Function(League) _then;

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
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      leagueId: leagueId == freezed
          ? _value.leagueId
          : leagueId // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$LeagueCopyWith<$Res> implements $LeagueCopyWith<$Res> {
  factory _$LeagueCopyWith(_League value, $Res Function(_League) then) =
      __$LeagueCopyWithImpl<$Res>;
  @override
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
class __$LeagueCopyWithImpl<$Res> extends _$LeagueCopyWithImpl<$Res>
    implements _$LeagueCopyWith<$Res> {
  __$LeagueCopyWithImpl(_League _value, $Res Function(_League) _then)
      : super(_value, (v) => _then(v as _League));

  @override
  _League get _value => super._value as _League;

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
    return _then(_League(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      leagueId: leagueId == freezed
          ? _value.leagueId
          : leagueId // ignore: cast_nullable_to_non_nullable
              as String?,
      level: level == freezed
          ? _value.level
          : level // ignore: cast_nullable_to_non_nullable
              as double?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      status: status == freezed
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
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
            other is _League &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.leagueId, leagueId) &&
            const DeepCollectionEquality().equals(other.level, level) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.status, status) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(leagueId),
      const DeepCollectionEquality().hash(level),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(status),
      const DeepCollectionEquality().hash(updatedAt));

  @JsonKey(ignore: true)
  @override
  _$LeagueCopyWith<_League> get copyWith =>
      __$LeagueCopyWithImpl<_League>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LeagueToJson(this);
  }
}

abstract class _League implements League {
  const factory _League(
      {required String? city,
      required String? country,
      required String? createdAt,
      required String? description,
      required String? endDate,
      required String? id,
      required String? leagueId,
      required double? level,
      required String? name,
      required String? startDate,
      required String? state,
      required String? status,
      required String? updatedAt}) = _$_League;

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
  _$LeagueCopyWith<_League> get copyWith => throw _privateConstructorUsedError;
}

Applicant _$ApplicantFromJson(Map<String, dynamic> json) {
  return _Applicant.fromJson(json);
}

/// @nodoc
class _$ApplicantTearOff {
  const _$ApplicantTearOff();

  _Applicant call({required String? userId}) {
    return _Applicant(
      userId: userId,
    );
  }

  Applicant fromJson(Map<String, Object?> json) {
    return Applicant.fromJson(json);
  }
}

/// @nodoc
const $Applicant = _$ApplicantTearOff();

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
      _$ApplicantCopyWithImpl<$Res>;
  $Res call({String? userId});
}

/// @nodoc
class _$ApplicantCopyWithImpl<$Res> implements $ApplicantCopyWith<$Res> {
  _$ApplicantCopyWithImpl(this._value, this._then);

  final Applicant _value;
  // ignore: unused_field
  final $Res Function(Applicant) _then;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$ApplicantCopyWith<$Res> implements $ApplicantCopyWith<$Res> {
  factory _$ApplicantCopyWith(
          _Applicant value, $Res Function(_Applicant) then) =
      __$ApplicantCopyWithImpl<$Res>;
  @override
  $Res call({String? userId});
}

/// @nodoc
class __$ApplicantCopyWithImpl<$Res> extends _$ApplicantCopyWithImpl<$Res>
    implements _$ApplicantCopyWith<$Res> {
  __$ApplicantCopyWithImpl(_Applicant _value, $Res Function(_Applicant) _then)
      : super(_value, (v) => _then(v as _Applicant));

  @override
  _Applicant get _value => super._value as _Applicant;

  @override
  $Res call({
    Object? userId = freezed,
  }) {
    return _then(_Applicant(
      userId: userId == freezed
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
            other is _Applicant &&
            const DeepCollectionEquality().equals(other.userId, userId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(userId));

  @JsonKey(ignore: true)
  @override
  _$ApplicantCopyWith<_Applicant> get copyWith =>
      __$ApplicantCopyWithImpl<_Applicant>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ApplicantToJson(this);
  }
}

abstract class _Applicant implements Applicant {
  const factory _Applicant({required String? userId}) = _$_Applicant;

  factory _Applicant.fromJson(Map<String, dynamic> json) =
      _$_Applicant.fromJson;

  @override
  String? get userId;
  @override
  @JsonKey(ignore: true)
  _$ApplicantCopyWith<_Applicant> get copyWith =>
      throw _privateConstructorUsedError;
}
