// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_matches.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllMatchesData _$AllMatchesDataFromJson(Map<String, dynamic> json) {
  return _AllMatchesData.fromJson(json);
}

/// @nodoc
mixin _$AllMatchesData {
  AllMatches? get allMatches => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllMatchesDataCopyWith<AllMatchesData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllMatchesDataCopyWith<$Res> {
  factory $AllMatchesDataCopyWith(
          AllMatchesData value, $Res Function(AllMatchesData) then) =
      _$AllMatchesDataCopyWithImpl<$Res, AllMatchesData>;
  @useResult
  $Res call({AllMatches? allMatches});

  $AllMatchesCopyWith<$Res>? get allMatches;
}

/// @nodoc
class _$AllMatchesDataCopyWithImpl<$Res, $Val extends AllMatchesData>
    implements $AllMatchesDataCopyWith<$Res> {
  _$AllMatchesDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allMatches = freezed,
  }) {
    return _then(_value.copyWith(
      allMatches: freezed == allMatches
          ? _value.allMatches
          : allMatches // ignore: cast_nullable_to_non_nullable
              as AllMatches?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AllMatchesCopyWith<$Res>? get allMatches {
    if (_value.allMatches == null) {
      return null;
    }

    return $AllMatchesCopyWith<$Res>(_value.allMatches!, (value) {
      return _then(_value.copyWith(allMatches: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AllMatchesDataCopyWith<$Res>
    implements $AllMatchesDataCopyWith<$Res> {
  factory _$$_AllMatchesDataCopyWith(
          _$_AllMatchesData value, $Res Function(_$_AllMatchesData) then) =
      __$$_AllMatchesDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllMatches? allMatches});

  @override
  $AllMatchesCopyWith<$Res>? get allMatches;
}

/// @nodoc
class __$$_AllMatchesDataCopyWithImpl<$Res>
    extends _$AllMatchesDataCopyWithImpl<$Res, _$_AllMatchesData>
    implements _$$_AllMatchesDataCopyWith<$Res> {
  __$$_AllMatchesDataCopyWithImpl(
      _$_AllMatchesData _value, $Res Function(_$_AllMatchesData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allMatches = freezed,
  }) {
    return _then(_$_AllMatchesData(
      allMatches: freezed == allMatches
          ? _value.allMatches
          : allMatches // ignore: cast_nullable_to_non_nullable
              as AllMatches?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllMatchesData implements _AllMatchesData {
  const _$_AllMatchesData({required this.allMatches});

  factory _$_AllMatchesData.fromJson(Map<String, dynamic> json) =>
      _$$_AllMatchesDataFromJson(json);

  @override
  final AllMatches? allMatches;

  @override
  String toString() {
    return 'AllMatchesData(allMatches: $allMatches)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllMatchesData &&
            (identical(other.allMatches, allMatches) ||
                other.allMatches == allMatches));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, allMatches);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllMatchesDataCopyWith<_$_AllMatchesData> get copyWith =>
      __$$_AllMatchesDataCopyWithImpl<_$_AllMatchesData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllMatchesDataToJson(
      this,
    );
  }
}

abstract class _AllMatchesData implements AllMatchesData {
  const factory _AllMatchesData({required final AllMatches? allMatches}) =
      _$_AllMatchesData;

  factory _AllMatchesData.fromJson(Map<String, dynamic> json) =
      _$_AllMatchesData.fromJson;

  @override
  AllMatches? get allMatches;
  @override
  @JsonKey(ignore: true)
  _$$_AllMatchesDataCopyWith<_$_AllMatchesData> get copyWith =>
      throw _privateConstructorUsedError;
}

AllMatches _$AllMatchesFromJson(Map<String, dynamic> json) {
  return _AllMatches.fromJson(json);
}

/// @nodoc
mixin _$AllMatches {
  List<MatchesEdges>? get edges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllMatchesCopyWith<AllMatches> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllMatchesCopyWith<$Res> {
  factory $AllMatchesCopyWith(
          AllMatches value, $Res Function(AllMatches) then) =
      _$AllMatchesCopyWithImpl<$Res, AllMatches>;
  @useResult
  $Res call({List<MatchesEdges>? edges});
}

/// @nodoc
class _$AllMatchesCopyWithImpl<$Res, $Val extends AllMatches>
    implements $AllMatchesCopyWith<$Res> {
  _$AllMatchesCopyWithImpl(this._value, this._then);

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
              as List<MatchesEdges>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllMatchesCopyWith<$Res>
    implements $AllMatchesCopyWith<$Res> {
  factory _$$_AllMatchesCopyWith(
          _$_AllMatches value, $Res Function(_$_AllMatches) then) =
      __$$_AllMatchesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MatchesEdges>? edges});
}

/// @nodoc
class __$$_AllMatchesCopyWithImpl<$Res>
    extends _$AllMatchesCopyWithImpl<$Res, _$_AllMatches>
    implements _$$_AllMatchesCopyWith<$Res> {
  __$$_AllMatchesCopyWithImpl(
      _$_AllMatches _value, $Res Function(_$_AllMatches) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_$_AllMatches(
      edges: freezed == edges
          ? _value._edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<MatchesEdges>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllMatches implements _AllMatches {
  const _$_AllMatches({required final List<MatchesEdges>? edges})
      : _edges = edges;

  factory _$_AllMatches.fromJson(Map<String, dynamic> json) =>
      _$$_AllMatchesFromJson(json);

  final List<MatchesEdges>? _edges;
  @override
  List<MatchesEdges>? get edges {
    final value = _edges;
    if (value == null) return null;
    if (_edges is EqualUnmodifiableListView) return _edges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AllMatches(edges: $edges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllMatches &&
            const DeepCollectionEquality().equals(other._edges, _edges));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_edges));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllMatchesCopyWith<_$_AllMatches> get copyWith =>
      __$$_AllMatchesCopyWithImpl<_$_AllMatches>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllMatchesToJson(
      this,
    );
  }
}

abstract class _AllMatches implements AllMatches {
  const factory _AllMatches({required final List<MatchesEdges>? edges}) =
      _$_AllMatches;

  factory _AllMatches.fromJson(Map<String, dynamic> json) =
      _$_AllMatches.fromJson;

  @override
  List<MatchesEdges>? get edges;
  @override
  @JsonKey(ignore: true)
  _$$_AllMatchesCopyWith<_$_AllMatches> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchesEdges _$MatchesEdgesFromJson(Map<String, dynamic> json) {
  return _MatchesEdges.fromJson(json);
}

/// @nodoc
mixin _$MatchesEdges {
  MatchesNode? get node => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchesEdgesCopyWith<MatchesEdges> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchesEdgesCopyWith<$Res> {
  factory $MatchesEdgesCopyWith(
          MatchesEdges value, $Res Function(MatchesEdges) then) =
      _$MatchesEdgesCopyWithImpl<$Res, MatchesEdges>;
  @useResult
  $Res call({MatchesNode? node});

  $MatchesNodeCopyWith<$Res>? get node;
}

/// @nodoc
class _$MatchesEdgesCopyWithImpl<$Res, $Val extends MatchesEdges>
    implements $MatchesEdgesCopyWith<$Res> {
  _$MatchesEdgesCopyWithImpl(this._value, this._then);

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
              as MatchesNode?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MatchesNodeCopyWith<$Res>? get node {
    if (_value.node == null) {
      return null;
    }

    return $MatchesNodeCopyWith<$Res>(_value.node!, (value) {
      return _then(_value.copyWith(node: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MatchesEdgesCopyWith<$Res>
    implements $MatchesEdgesCopyWith<$Res> {
  factory _$$_MatchesEdgesCopyWith(
          _$_MatchesEdges value, $Res Function(_$_MatchesEdges) then) =
      __$$_MatchesEdgesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MatchesNode? node});

  @override
  $MatchesNodeCopyWith<$Res>? get node;
}

/// @nodoc
class __$$_MatchesEdgesCopyWithImpl<$Res>
    extends _$MatchesEdgesCopyWithImpl<$Res, _$_MatchesEdges>
    implements _$$_MatchesEdgesCopyWith<$Res> {
  __$$_MatchesEdgesCopyWithImpl(
      _$_MatchesEdges _value, $Res Function(_$_MatchesEdges) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = freezed,
  }) {
    return _then(_$_MatchesEdges(
      node: freezed == node
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as MatchesNode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchesEdges implements _MatchesEdges {
  const _$_MatchesEdges({required this.node});

  factory _$_MatchesEdges.fromJson(Map<String, dynamic> json) =>
      _$$_MatchesEdgesFromJson(json);

  @override
  final MatchesNode? node;

  @override
  String toString() {
    return 'MatchesEdges(node: $node)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchesEdges &&
            (identical(other.node, node) || other.node == node));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, node);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchesEdgesCopyWith<_$_MatchesEdges> get copyWith =>
      __$$_MatchesEdgesCopyWithImpl<_$_MatchesEdges>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchesEdgesToJson(
      this,
    );
  }
}

abstract class _MatchesEdges implements MatchesEdges {
  const factory _MatchesEdges({required final MatchesNode? node}) =
      _$_MatchesEdges;

  factory _MatchesEdges.fromJson(Map<String, dynamic> json) =
      _$_MatchesEdges.fromJson;

  @override
  MatchesNode? get node;
  @override
  @JsonKey(ignore: true)
  _$$_MatchesEdgesCopyWith<_$_MatchesEdges> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchesNode _$MatchesNodeFromJson(Map<String, dynamic> json) {
  return _MatchesNode.fromJson(json);
}

/// @nodoc
mixin _$MatchesNode {
  String? get id => throw _privateConstructorUsedError;
  String? get court => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  MatchSet? get matchSet => throw _privateConstructorUsedError;
  UserNode? get playerOne => throw _privateConstructorUsedError;
  UserNode? get playerTwo => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchesNodeCopyWith<MatchesNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchesNodeCopyWith<$Res> {
  factory $MatchesNodeCopyWith(
          MatchesNode value, $Res Function(MatchesNode) then) =
      _$MatchesNodeCopyWithImpl<$Res, MatchesNode>;
  @useResult
  $Res call(
      {String? id,
      String? court,
      String? startDate,
      MatchSet? matchSet,
      UserNode? playerOne,
      UserNode? playerTwo});

  $MatchSetCopyWith<$Res>? get matchSet;
  $UserNodeCopyWith<$Res>? get playerOne;
  $UserNodeCopyWith<$Res>? get playerTwo;
}

/// @nodoc
class _$MatchesNodeCopyWithImpl<$Res, $Val extends MatchesNode>
    implements $MatchesNodeCopyWith<$Res> {
  _$MatchesNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? court = freezed,
    Object? startDate = freezed,
    Object? matchSet = freezed,
    Object? playerOne = freezed,
    Object? playerTwo = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      court: freezed == court
          ? _value.court
          : court // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      matchSet: freezed == matchSet
          ? _value.matchSet
          : matchSet // ignore: cast_nullable_to_non_nullable
              as MatchSet?,
      playerOne: freezed == playerOne
          ? _value.playerOne
          : playerOne // ignore: cast_nullable_to_non_nullable
              as UserNode?,
      playerTwo: freezed == playerTwo
          ? _value.playerTwo
          : playerTwo // ignore: cast_nullable_to_non_nullable
              as UserNode?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MatchSetCopyWith<$Res>? get matchSet {
    if (_value.matchSet == null) {
      return null;
    }

    return $MatchSetCopyWith<$Res>(_value.matchSet!, (value) {
      return _then(_value.copyWith(matchSet: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserNodeCopyWith<$Res>? get playerOne {
    if (_value.playerOne == null) {
      return null;
    }

    return $UserNodeCopyWith<$Res>(_value.playerOne!, (value) {
      return _then(_value.copyWith(playerOne: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $UserNodeCopyWith<$Res>? get playerTwo {
    if (_value.playerTwo == null) {
      return null;
    }

    return $UserNodeCopyWith<$Res>(_value.playerTwo!, (value) {
      return _then(_value.copyWith(playerTwo: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MatchesNodeCopyWith<$Res>
    implements $MatchesNodeCopyWith<$Res> {
  factory _$$_MatchesNodeCopyWith(
          _$_MatchesNode value, $Res Function(_$_MatchesNode) then) =
      __$$_MatchesNodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? court,
      String? startDate,
      MatchSet? matchSet,
      UserNode? playerOne,
      UserNode? playerTwo});

  @override
  $MatchSetCopyWith<$Res>? get matchSet;
  @override
  $UserNodeCopyWith<$Res>? get playerOne;
  @override
  $UserNodeCopyWith<$Res>? get playerTwo;
}

/// @nodoc
class __$$_MatchesNodeCopyWithImpl<$Res>
    extends _$MatchesNodeCopyWithImpl<$Res, _$_MatchesNode>
    implements _$$_MatchesNodeCopyWith<$Res> {
  __$$_MatchesNodeCopyWithImpl(
      _$_MatchesNode _value, $Res Function(_$_MatchesNode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? court = freezed,
    Object? startDate = freezed,
    Object? matchSet = freezed,
    Object? playerOne = freezed,
    Object? playerTwo = freezed,
  }) {
    return _then(_$_MatchesNode(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      court: freezed == court
          ? _value.court
          : court // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      matchSet: freezed == matchSet
          ? _value.matchSet
          : matchSet // ignore: cast_nullable_to_non_nullable
              as MatchSet?,
      playerOne: freezed == playerOne
          ? _value.playerOne
          : playerOne // ignore: cast_nullable_to_non_nullable
              as UserNode?,
      playerTwo: freezed == playerTwo
          ? _value.playerTwo
          : playerTwo // ignore: cast_nullable_to_non_nullable
              as UserNode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchesNode implements _MatchesNode {
  const _$_MatchesNode(
      {required this.id,
      required this.court,
      required this.startDate,
      required this.matchSet,
      required this.playerOne,
      required this.playerTwo});

  factory _$_MatchesNode.fromJson(Map<String, dynamic> json) =>
      _$$_MatchesNodeFromJson(json);

  @override
  final String? id;
  @override
  final String? court;
  @override
  final String? startDate;
  @override
  final MatchSet? matchSet;
  @override
  final UserNode? playerOne;
  @override
  final UserNode? playerTwo;

  @override
  String toString() {
    return 'MatchesNode(id: $id, court: $court, startDate: $startDate, matchSet: $matchSet, playerOne: $playerOne, playerTwo: $playerTwo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchesNode &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.court, court) || other.court == court) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.matchSet, matchSet) ||
                other.matchSet == matchSet) &&
            (identical(other.playerOne, playerOne) ||
                other.playerOne == playerOne) &&
            (identical(other.playerTwo, playerTwo) ||
                other.playerTwo == playerTwo));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, court, startDate, matchSet, playerOne, playerTwo);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchesNodeCopyWith<_$_MatchesNode> get copyWith =>
      __$$_MatchesNodeCopyWithImpl<_$_MatchesNode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchesNodeToJson(
      this,
    );
  }
}

abstract class _MatchesNode implements MatchesNode {
  const factory _MatchesNode(
      {required final String? id,
      required final String? court,
      required final String? startDate,
      required final MatchSet? matchSet,
      required final UserNode? playerOne,
      required final UserNode? playerTwo}) = _$_MatchesNode;

  factory _MatchesNode.fromJson(Map<String, dynamic> json) =
      _$_MatchesNode.fromJson;

  @override
  String? get id;
  @override
  String? get court;
  @override
  String? get startDate;
  @override
  MatchSet? get matchSet;
  @override
  UserNode? get playerOne;
  @override
  UserNode? get playerTwo;
  @override
  @JsonKey(ignore: true)
  _$$_MatchesNodeCopyWith<_$_MatchesNode> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchSet _$MatchSetFromJson(Map<String, dynamic> json) {
  return _MatchSet.fromJson(json);
}

/// @nodoc
mixin _$MatchSet {
  List<MatchSetEdges>? get edges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchSetCopyWith<MatchSet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchSetCopyWith<$Res> {
  factory $MatchSetCopyWith(MatchSet value, $Res Function(MatchSet) then) =
      _$MatchSetCopyWithImpl<$Res, MatchSet>;
  @useResult
  $Res call({List<MatchSetEdges>? edges});
}

/// @nodoc
class _$MatchSetCopyWithImpl<$Res, $Val extends MatchSet>
    implements $MatchSetCopyWith<$Res> {
  _$MatchSetCopyWithImpl(this._value, this._then);

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
              as List<MatchSetEdges>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MatchSetCopyWith<$Res> implements $MatchSetCopyWith<$Res> {
  factory _$$_MatchSetCopyWith(
          _$_MatchSet value, $Res Function(_$_MatchSet) then) =
      __$$_MatchSetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MatchSetEdges>? edges});
}

/// @nodoc
class __$$_MatchSetCopyWithImpl<$Res>
    extends _$MatchSetCopyWithImpl<$Res, _$_MatchSet>
    implements _$$_MatchSetCopyWith<$Res> {
  __$$_MatchSetCopyWithImpl(
      _$_MatchSet _value, $Res Function(_$_MatchSet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_$_MatchSet(
      edges: freezed == edges
          ? _value._edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<MatchSetEdges>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchSet implements _MatchSet {
  const _$_MatchSet({required final List<MatchSetEdges>? edges})
      : _edges = edges;

  factory _$_MatchSet.fromJson(Map<String, dynamic> json) =>
      _$$_MatchSetFromJson(json);

  final List<MatchSetEdges>? _edges;
  @override
  List<MatchSetEdges>? get edges {
    final value = _edges;
    if (value == null) return null;
    if (_edges is EqualUnmodifiableListView) return _edges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'MatchSet(edges: $edges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchSet &&
            const DeepCollectionEquality().equals(other._edges, _edges));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_edges));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchSetCopyWith<_$_MatchSet> get copyWith =>
      __$$_MatchSetCopyWithImpl<_$_MatchSet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchSetToJson(
      this,
    );
  }
}

abstract class _MatchSet implements MatchSet {
  const factory _MatchSet({required final List<MatchSetEdges>? edges}) =
      _$_MatchSet;

  factory _MatchSet.fromJson(Map<String, dynamic> json) = _$_MatchSet.fromJson;

  @override
  List<MatchSetEdges>? get edges;
  @override
  @JsonKey(ignore: true)
  _$$_MatchSetCopyWith<_$_MatchSet> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchSetEdges _$MatchSetEdgesFromJson(Map<String, dynamic> json) {
  return _MatchSetEdges.fromJson(json);
}

/// @nodoc
mixin _$MatchSetEdges {
  MatchSetNode? get node => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchSetEdgesCopyWith<MatchSetEdges> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchSetEdgesCopyWith<$Res> {
  factory $MatchSetEdgesCopyWith(
          MatchSetEdges value, $Res Function(MatchSetEdges) then) =
      _$MatchSetEdgesCopyWithImpl<$Res, MatchSetEdges>;
  @useResult
  $Res call({MatchSetNode? node});

  $MatchSetNodeCopyWith<$Res>? get node;
}

/// @nodoc
class _$MatchSetEdgesCopyWithImpl<$Res, $Val extends MatchSetEdges>
    implements $MatchSetEdgesCopyWith<$Res> {
  _$MatchSetEdgesCopyWithImpl(this._value, this._then);

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
              as MatchSetNode?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MatchSetNodeCopyWith<$Res>? get node {
    if (_value.node == null) {
      return null;
    }

    return $MatchSetNodeCopyWith<$Res>(_value.node!, (value) {
      return _then(_value.copyWith(node: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MatchSetEdgesCopyWith<$Res>
    implements $MatchSetEdgesCopyWith<$Res> {
  factory _$$_MatchSetEdgesCopyWith(
          _$_MatchSetEdges value, $Res Function(_$_MatchSetEdges) then) =
      __$$_MatchSetEdgesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MatchSetNode? node});

  @override
  $MatchSetNodeCopyWith<$Res>? get node;
}

/// @nodoc
class __$$_MatchSetEdgesCopyWithImpl<$Res>
    extends _$MatchSetEdgesCopyWithImpl<$Res, _$_MatchSetEdges>
    implements _$$_MatchSetEdgesCopyWith<$Res> {
  __$$_MatchSetEdgesCopyWithImpl(
      _$_MatchSetEdges _value, $Res Function(_$_MatchSetEdges) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = freezed,
  }) {
    return _then(_$_MatchSetEdges(
      node: freezed == node
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as MatchSetNode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchSetEdges implements _MatchSetEdges {
  const _$_MatchSetEdges({required this.node});

  factory _$_MatchSetEdges.fromJson(Map<String, dynamic> json) =>
      _$$_MatchSetEdgesFromJson(json);

  @override
  final MatchSetNode? node;

  @override
  String toString() {
    return 'MatchSetEdges(node: $node)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchSetEdges &&
            (identical(other.node, node) || other.node == node));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, node);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchSetEdgesCopyWith<_$_MatchSetEdges> get copyWith =>
      __$$_MatchSetEdgesCopyWithImpl<_$_MatchSetEdges>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchSetEdgesToJson(
      this,
    );
  }
}

abstract class _MatchSetEdges implements MatchSetEdges {
  const factory _MatchSetEdges({required final MatchSetNode? node}) =
      _$_MatchSetEdges;

  factory _MatchSetEdges.fromJson(Map<String, dynamic> json) =
      _$_MatchSetEdges.fromJson;

  @override
  MatchSetNode? get node;
  @override
  @JsonKey(ignore: true)
  _$$_MatchSetEdgesCopyWith<_$_MatchSetEdges> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchSetNode _$MatchSetNodeFromJson(Map<String, dynamic> json) {
  return _MatchSetNode.fromJson(json);
}

/// @nodoc
mixin _$MatchSetNode {
  String? get id => throw _privateConstructorUsedError;
  int? get playerOneScore => throw _privateConstructorUsedError;
  int? get playerTwoScore => throw _privateConstructorUsedError;
  String? get matchSetId => throw _privateConstructorUsedError;
  MatchDetails? get match => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchSetNodeCopyWith<MatchSetNode> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchSetNodeCopyWith<$Res> {
  factory $MatchSetNodeCopyWith(
          MatchSetNode value, $Res Function(MatchSetNode) then) =
      _$MatchSetNodeCopyWithImpl<$Res, MatchSetNode>;
  @useResult
  $Res call(
      {String? id,
      int? playerOneScore,
      int? playerTwoScore,
      String? matchSetId,
      MatchDetails? match});

  $MatchDetailsCopyWith<$Res>? get match;
}

/// @nodoc
class _$MatchSetNodeCopyWithImpl<$Res, $Val extends MatchSetNode>
    implements $MatchSetNodeCopyWith<$Res> {
  _$MatchSetNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? playerOneScore = freezed,
    Object? playerTwoScore = freezed,
    Object? matchSetId = freezed,
    Object? match = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      playerOneScore: freezed == playerOneScore
          ? _value.playerOneScore
          : playerOneScore // ignore: cast_nullable_to_non_nullable
              as int?,
      playerTwoScore: freezed == playerTwoScore
          ? _value.playerTwoScore
          : playerTwoScore // ignore: cast_nullable_to_non_nullable
              as int?,
      matchSetId: freezed == matchSetId
          ? _value.matchSetId
          : matchSetId // ignore: cast_nullable_to_non_nullable
              as String?,
      match: freezed == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as MatchDetails?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MatchDetailsCopyWith<$Res>? get match {
    if (_value.match == null) {
      return null;
    }

    return $MatchDetailsCopyWith<$Res>(_value.match!, (value) {
      return _then(_value.copyWith(match: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MatchSetNodeCopyWith<$Res>
    implements $MatchSetNodeCopyWith<$Res> {
  factory _$$_MatchSetNodeCopyWith(
          _$_MatchSetNode value, $Res Function(_$_MatchSetNode) then) =
      __$$_MatchSetNodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      int? playerOneScore,
      int? playerTwoScore,
      String? matchSetId,
      MatchDetails? match});

  @override
  $MatchDetailsCopyWith<$Res>? get match;
}

/// @nodoc
class __$$_MatchSetNodeCopyWithImpl<$Res>
    extends _$MatchSetNodeCopyWithImpl<$Res, _$_MatchSetNode>
    implements _$$_MatchSetNodeCopyWith<$Res> {
  __$$_MatchSetNodeCopyWithImpl(
      _$_MatchSetNode _value, $Res Function(_$_MatchSetNode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? playerOneScore = freezed,
    Object? playerTwoScore = freezed,
    Object? matchSetId = freezed,
    Object? match = freezed,
  }) {
    return _then(_$_MatchSetNode(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      playerOneScore: freezed == playerOneScore
          ? _value.playerOneScore
          : playerOneScore // ignore: cast_nullable_to_non_nullable
              as int?,
      playerTwoScore: freezed == playerTwoScore
          ? _value.playerTwoScore
          : playerTwoScore // ignore: cast_nullable_to_non_nullable
              as int?,
      matchSetId: freezed == matchSetId
          ? _value.matchSetId
          : matchSetId // ignore: cast_nullable_to_non_nullable
              as String?,
      match: freezed == match
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as MatchDetails?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchSetNode implements _MatchSetNode {
  const _$_MatchSetNode(
      {required this.id,
      required this.playerOneScore,
      required this.playerTwoScore,
      required this.matchSetId,
      required this.match});

  factory _$_MatchSetNode.fromJson(Map<String, dynamic> json) =>
      _$$_MatchSetNodeFromJson(json);

  @override
  final String? id;
  @override
  final int? playerOneScore;
  @override
  final int? playerTwoScore;
  @override
  final String? matchSetId;
  @override
  final MatchDetails? match;

  @override
  String toString() {
    return 'MatchSetNode(id: $id, playerOneScore: $playerOneScore, playerTwoScore: $playerTwoScore, matchSetId: $matchSetId, match: $match)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchSetNode &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.playerOneScore, playerOneScore) ||
                other.playerOneScore == playerOneScore) &&
            (identical(other.playerTwoScore, playerTwoScore) ||
                other.playerTwoScore == playerTwoScore) &&
            (identical(other.matchSetId, matchSetId) ||
                other.matchSetId == matchSetId) &&
            (identical(other.match, match) || other.match == match));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, playerOneScore, playerTwoScore, matchSetId, match);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchSetNodeCopyWith<_$_MatchSetNode> get copyWith =>
      __$$_MatchSetNodeCopyWithImpl<_$_MatchSetNode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchSetNodeToJson(
      this,
    );
  }
}

abstract class _MatchSetNode implements MatchSetNode {
  const factory _MatchSetNode(
      {required final String? id,
      required final int? playerOneScore,
      required final int? playerTwoScore,
      required final String? matchSetId,
      required final MatchDetails? match}) = _$_MatchSetNode;

  factory _MatchSetNode.fromJson(Map<String, dynamic> json) =
      _$_MatchSetNode.fromJson;

  @override
  String? get id;
  @override
  int? get playerOneScore;
  @override
  int? get playerTwoScore;
  @override
  String? get matchSetId;
  @override
  MatchDetails? get match;
  @override
  @JsonKey(ignore: true)
  _$$_MatchSetNodeCopyWith<_$_MatchSetNode> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchDetails _$MatchDetailsFromJson(Map<String, dynamic> json) {
  return _MatchDetails.fromJson(json);
}

/// @nodoc
mixin _$MatchDetails {
  String? get court => throw _privateConstructorUsedError;
  String? get matchId => throw _privateConstructorUsedError;
  String? get startDate => throw _privateConstructorUsedError;
  String? get createdAt => throw _privateConstructorUsedError;
  String? get endDate => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MatchDetailsCopyWith<MatchDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MatchDetailsCopyWith<$Res> {
  factory $MatchDetailsCopyWith(
          MatchDetails value, $Res Function(MatchDetails) then) =
      _$MatchDetailsCopyWithImpl<$Res, MatchDetails>;
  @useResult
  $Res call(
      {String? court,
      String? matchId,
      String? startDate,
      String? createdAt,
      String? endDate,
      String? id});
}

/// @nodoc
class _$MatchDetailsCopyWithImpl<$Res, $Val extends MatchDetails>
    implements $MatchDetailsCopyWith<$Res> {
  _$MatchDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? court = freezed,
    Object? matchId = freezed,
    Object? startDate = freezed,
    Object? createdAt = freezed,
    Object? endDate = freezed,
    Object? id = freezed,
  }) {
    return _then(_value.copyWith(
      court: freezed == court
          ? _value.court
          : court // ignore: cast_nullable_to_non_nullable
              as String?,
      matchId: freezed == matchId
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MatchDetailsCopyWith<$Res>
    implements $MatchDetailsCopyWith<$Res> {
  factory _$$_MatchDetailsCopyWith(
          _$_MatchDetails value, $Res Function(_$_MatchDetails) then) =
      __$$_MatchDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? court,
      String? matchId,
      String? startDate,
      String? createdAt,
      String? endDate,
      String? id});
}

/// @nodoc
class __$$_MatchDetailsCopyWithImpl<$Res>
    extends _$MatchDetailsCopyWithImpl<$Res, _$_MatchDetails>
    implements _$$_MatchDetailsCopyWith<$Res> {
  __$$_MatchDetailsCopyWithImpl(
      _$_MatchDetails _value, $Res Function(_$_MatchDetails) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? court = freezed,
    Object? matchId = freezed,
    Object? startDate = freezed,
    Object? createdAt = freezed,
    Object? endDate = freezed,
    Object? id = freezed,
  }) {
    return _then(_$_MatchDetails(
      court: freezed == court
          ? _value.court
          : court // ignore: cast_nullable_to_non_nullable
              as String?,
      matchId: freezed == matchId
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: freezed == startDate
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: freezed == endDate
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchDetails implements _MatchDetails {
  const _$_MatchDetails(
      {required this.court,
      required this.matchId,
      required this.startDate,
      required this.createdAt,
      required this.endDate,
      required this.id});

  factory _$_MatchDetails.fromJson(Map<String, dynamic> json) =>
      _$$_MatchDetailsFromJson(json);

  @override
  final String? court;
  @override
  final String? matchId;
  @override
  final String? startDate;
  @override
  final String? createdAt;
  @override
  final String? endDate;
  @override
  final String? id;

  @override
  String toString() {
    return 'MatchDetails(court: $court, matchId: $matchId, startDate: $startDate, createdAt: $createdAt, endDate: $endDate, id: $id)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MatchDetails &&
            (identical(other.court, court) || other.court == court) &&
            (identical(other.matchId, matchId) || other.matchId == matchId) &&
            (identical(other.startDate, startDate) ||
                other.startDate == startDate) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.endDate, endDate) || other.endDate == endDate) &&
            (identical(other.id, id) || other.id == id));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, court, matchId, startDate, createdAt, endDate, id);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MatchDetailsCopyWith<_$_MatchDetails> get copyWith =>
      __$$_MatchDetailsCopyWithImpl<_$_MatchDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchDetailsToJson(
      this,
    );
  }
}

abstract class _MatchDetails implements MatchDetails {
  const factory _MatchDetails(
      {required final String? court,
      required final String? matchId,
      required final String? startDate,
      required final String? createdAt,
      required final String? endDate,
      required final String? id}) = _$_MatchDetails;

  factory _MatchDetails.fromJson(Map<String, dynamic> json) =
      _$_MatchDetails.fromJson;

  @override
  String? get court;
  @override
  String? get matchId;
  @override
  String? get startDate;
  @override
  String? get createdAt;
  @override
  String? get endDate;
  @override
  String? get id;
  @override
  @JsonKey(ignore: true)
  _$$_MatchDetailsCopyWith<_$_MatchDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
