// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'all_matches.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllMatchesData _$AllMatchesDataFromJson(Map<String, dynamic> json) {
  return _AllMatchesData.fromJson(json);
}

/// @nodoc
class _$AllMatchesDataTearOff {
  const _$AllMatchesDataTearOff();

  _AllMatchesData call({required AllMatches? allMatches}) {
    return _AllMatchesData(
      allMatches: allMatches,
    );
  }

  AllMatchesData fromJson(Map<String, Object?> json) {
    return AllMatchesData.fromJson(json);
  }
}

/// @nodoc
const $AllMatchesData = _$AllMatchesDataTearOff();

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
      _$AllMatchesDataCopyWithImpl<$Res>;
  $Res call({AllMatches? allMatches});

  $AllMatchesCopyWith<$Res>? get allMatches;
}

/// @nodoc
class _$AllMatchesDataCopyWithImpl<$Res>
    implements $AllMatchesDataCopyWith<$Res> {
  _$AllMatchesDataCopyWithImpl(this._value, this._then);

  final AllMatchesData _value;
  // ignore: unused_field
  final $Res Function(AllMatchesData) _then;

  @override
  $Res call({
    Object? allMatches = freezed,
  }) {
    return _then(_value.copyWith(
      allMatches: allMatches == freezed
          ? _value.allMatches
          : allMatches // ignore: cast_nullable_to_non_nullable
              as AllMatches?,
    ));
  }

  @override
  $AllMatchesCopyWith<$Res>? get allMatches {
    if (_value.allMatches == null) {
      return null;
    }

    return $AllMatchesCopyWith<$Res>(_value.allMatches!, (value) {
      return _then(_value.copyWith(allMatches: value));
    });
  }
}

/// @nodoc
abstract class _$AllMatchesDataCopyWith<$Res>
    implements $AllMatchesDataCopyWith<$Res> {
  factory _$AllMatchesDataCopyWith(
          _AllMatchesData value, $Res Function(_AllMatchesData) then) =
      __$AllMatchesDataCopyWithImpl<$Res>;
  @override
  $Res call({AllMatches? allMatches});

  @override
  $AllMatchesCopyWith<$Res>? get allMatches;
}

/// @nodoc
class __$AllMatchesDataCopyWithImpl<$Res>
    extends _$AllMatchesDataCopyWithImpl<$Res>
    implements _$AllMatchesDataCopyWith<$Res> {
  __$AllMatchesDataCopyWithImpl(
      _AllMatchesData _value, $Res Function(_AllMatchesData) _then)
      : super(_value, (v) => _then(v as _AllMatchesData));

  @override
  _AllMatchesData get _value => super._value as _AllMatchesData;

  @override
  $Res call({
    Object? allMatches = freezed,
  }) {
    return _then(_AllMatchesData(
      allMatches: allMatches == freezed
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
            other is _AllMatchesData &&
            const DeepCollectionEquality()
                .equals(other.allMatches, allMatches));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(allMatches));

  @JsonKey(ignore: true)
  @override
  _$AllMatchesDataCopyWith<_AllMatchesData> get copyWith =>
      __$AllMatchesDataCopyWithImpl<_AllMatchesData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllMatchesDataToJson(this);
  }
}

abstract class _AllMatchesData implements AllMatchesData {
  const factory _AllMatchesData({required AllMatches? allMatches}) =
      _$_AllMatchesData;

  factory _AllMatchesData.fromJson(Map<String, dynamic> json) =
      _$_AllMatchesData.fromJson;

  @override
  AllMatches? get allMatches;
  @override
  @JsonKey(ignore: true)
  _$AllMatchesDataCopyWith<_AllMatchesData> get copyWith =>
      throw _privateConstructorUsedError;
}

AllMatches _$AllMatchesFromJson(Map<String, dynamic> json) {
  return _AllMatches.fromJson(json);
}

/// @nodoc
class _$AllMatchesTearOff {
  const _$AllMatchesTearOff();

  _AllMatches call({required List<MatchesEdges>? edges}) {
    return _AllMatches(
      edges: edges,
    );
  }

  AllMatches fromJson(Map<String, Object?> json) {
    return AllMatches.fromJson(json);
  }
}

/// @nodoc
const $AllMatches = _$AllMatchesTearOff();

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
      _$AllMatchesCopyWithImpl<$Res>;
  $Res call({List<MatchesEdges>? edges});
}

/// @nodoc
class _$AllMatchesCopyWithImpl<$Res> implements $AllMatchesCopyWith<$Res> {
  _$AllMatchesCopyWithImpl(this._value, this._then);

  final AllMatches _value;
  // ignore: unused_field
  final $Res Function(AllMatches) _then;

  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_value.copyWith(
      edges: edges == freezed
          ? _value.edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<MatchesEdges>?,
    ));
  }
}

/// @nodoc
abstract class _$AllMatchesCopyWith<$Res> implements $AllMatchesCopyWith<$Res> {
  factory _$AllMatchesCopyWith(
          _AllMatches value, $Res Function(_AllMatches) then) =
      __$AllMatchesCopyWithImpl<$Res>;
  @override
  $Res call({List<MatchesEdges>? edges});
}

/// @nodoc
class __$AllMatchesCopyWithImpl<$Res> extends _$AllMatchesCopyWithImpl<$Res>
    implements _$AllMatchesCopyWith<$Res> {
  __$AllMatchesCopyWithImpl(
      _AllMatches _value, $Res Function(_AllMatches) _then)
      : super(_value, (v) => _then(v as _AllMatches));

  @override
  _AllMatches get _value => super._value as _AllMatches;

  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_AllMatches(
      edges: edges == freezed
          ? _value.edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<MatchesEdges>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllMatches implements _AllMatches {
  const _$_AllMatches({required this.edges});

  factory _$_AllMatches.fromJson(Map<String, dynamic> json) =>
      _$$_AllMatchesFromJson(json);

  @override
  final List<MatchesEdges>? edges;

  @override
  String toString() {
    return 'AllMatches(edges: $edges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllMatches &&
            const DeepCollectionEquality().equals(other.edges, edges));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(edges));

  @JsonKey(ignore: true)
  @override
  _$AllMatchesCopyWith<_AllMatches> get copyWith =>
      __$AllMatchesCopyWithImpl<_AllMatches>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllMatchesToJson(this);
  }
}

abstract class _AllMatches implements AllMatches {
  const factory _AllMatches({required List<MatchesEdges>? edges}) =
      _$_AllMatches;

  factory _AllMatches.fromJson(Map<String, dynamic> json) =
      _$_AllMatches.fromJson;

  @override
  List<MatchesEdges>? get edges;
  @override
  @JsonKey(ignore: true)
  _$AllMatchesCopyWith<_AllMatches> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchesEdges _$MatchesEdgesFromJson(Map<String, dynamic> json) {
  return _MatchesEdges.fromJson(json);
}

/// @nodoc
class _$MatchesEdgesTearOff {
  const _$MatchesEdgesTearOff();

  _MatchesEdges call({required MatchesNode? node}) {
    return _MatchesEdges(
      node: node,
    );
  }

  MatchesEdges fromJson(Map<String, Object?> json) {
    return MatchesEdges.fromJson(json);
  }
}

/// @nodoc
const $MatchesEdges = _$MatchesEdgesTearOff();

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
      _$MatchesEdgesCopyWithImpl<$Res>;
  $Res call({MatchesNode? node});

  $MatchesNodeCopyWith<$Res>? get node;
}

/// @nodoc
class _$MatchesEdgesCopyWithImpl<$Res> implements $MatchesEdgesCopyWith<$Res> {
  _$MatchesEdgesCopyWithImpl(this._value, this._then);

  final MatchesEdges _value;
  // ignore: unused_field
  final $Res Function(MatchesEdges) _then;

  @override
  $Res call({
    Object? node = freezed,
  }) {
    return _then(_value.copyWith(
      node: node == freezed
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as MatchesNode?,
    ));
  }

  @override
  $MatchesNodeCopyWith<$Res>? get node {
    if (_value.node == null) {
      return null;
    }

    return $MatchesNodeCopyWith<$Res>(_value.node!, (value) {
      return _then(_value.copyWith(node: value));
    });
  }
}

/// @nodoc
abstract class _$MatchesEdgesCopyWith<$Res>
    implements $MatchesEdgesCopyWith<$Res> {
  factory _$MatchesEdgesCopyWith(
          _MatchesEdges value, $Res Function(_MatchesEdges) then) =
      __$MatchesEdgesCopyWithImpl<$Res>;
  @override
  $Res call({MatchesNode? node});

  @override
  $MatchesNodeCopyWith<$Res>? get node;
}

/// @nodoc
class __$MatchesEdgesCopyWithImpl<$Res> extends _$MatchesEdgesCopyWithImpl<$Res>
    implements _$MatchesEdgesCopyWith<$Res> {
  __$MatchesEdgesCopyWithImpl(
      _MatchesEdges _value, $Res Function(_MatchesEdges) _then)
      : super(_value, (v) => _then(v as _MatchesEdges));

  @override
  _MatchesEdges get _value => super._value as _MatchesEdges;

  @override
  $Res call({
    Object? node = freezed,
  }) {
    return _then(_MatchesEdges(
      node: node == freezed
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
            other is _MatchesEdges &&
            const DeepCollectionEquality().equals(other.node, node));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(node));

  @JsonKey(ignore: true)
  @override
  _$MatchesEdgesCopyWith<_MatchesEdges> get copyWith =>
      __$MatchesEdgesCopyWithImpl<_MatchesEdges>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchesEdgesToJson(this);
  }
}

abstract class _MatchesEdges implements MatchesEdges {
  const factory _MatchesEdges({required MatchesNode? node}) = _$_MatchesEdges;

  factory _MatchesEdges.fromJson(Map<String, dynamic> json) =
      _$_MatchesEdges.fromJson;

  @override
  MatchesNode? get node;
  @override
  @JsonKey(ignore: true)
  _$MatchesEdgesCopyWith<_MatchesEdges> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchesNode _$MatchesNodeFromJson(Map<String, dynamic> json) {
  return _MatchesNode.fromJson(json);
}

/// @nodoc
class _$MatchesNodeTearOff {
  const _$MatchesNodeTearOff();

  _MatchesNode call(
      {required String? id,
      required String? court,
      required String? startDate,
      required MatchSet? matchSet,
      required UserNode? playerOne,
      required UserNode? playerTwo}) {
    return _MatchesNode(
      id: id,
      court: court,
      startDate: startDate,
      matchSet: matchSet,
      playerOne: playerOne,
      playerTwo: playerTwo,
    );
  }

  MatchesNode fromJson(Map<String, Object?> json) {
    return MatchesNode.fromJson(json);
  }
}

/// @nodoc
const $MatchesNode = _$MatchesNodeTearOff();

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
      _$MatchesNodeCopyWithImpl<$Res>;
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
class _$MatchesNodeCopyWithImpl<$Res> implements $MatchesNodeCopyWith<$Res> {
  _$MatchesNodeCopyWithImpl(this._value, this._then);

  final MatchesNode _value;
  // ignore: unused_field
  final $Res Function(MatchesNode) _then;

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
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      court: court == freezed
          ? _value.court
          : court // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      matchSet: matchSet == freezed
          ? _value.matchSet
          : matchSet // ignore: cast_nullable_to_non_nullable
              as MatchSet?,
      playerOne: playerOne == freezed
          ? _value.playerOne
          : playerOne // ignore: cast_nullable_to_non_nullable
              as UserNode?,
      playerTwo: playerTwo == freezed
          ? _value.playerTwo
          : playerTwo // ignore: cast_nullable_to_non_nullable
              as UserNode?,
    ));
  }

  @override
  $MatchSetCopyWith<$Res>? get matchSet {
    if (_value.matchSet == null) {
      return null;
    }

    return $MatchSetCopyWith<$Res>(_value.matchSet!, (value) {
      return _then(_value.copyWith(matchSet: value));
    });
  }

  @override
  $UserNodeCopyWith<$Res>? get playerOne {
    if (_value.playerOne == null) {
      return null;
    }

    return $UserNodeCopyWith<$Res>(_value.playerOne!, (value) {
      return _then(_value.copyWith(playerOne: value));
    });
  }

  @override
  $UserNodeCopyWith<$Res>? get playerTwo {
    if (_value.playerTwo == null) {
      return null;
    }

    return $UserNodeCopyWith<$Res>(_value.playerTwo!, (value) {
      return _then(_value.copyWith(playerTwo: value));
    });
  }
}

/// @nodoc
abstract class _$MatchesNodeCopyWith<$Res>
    implements $MatchesNodeCopyWith<$Res> {
  factory _$MatchesNodeCopyWith(
          _MatchesNode value, $Res Function(_MatchesNode) then) =
      __$MatchesNodeCopyWithImpl<$Res>;
  @override
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
class __$MatchesNodeCopyWithImpl<$Res> extends _$MatchesNodeCopyWithImpl<$Res>
    implements _$MatchesNodeCopyWith<$Res> {
  __$MatchesNodeCopyWithImpl(
      _MatchesNode _value, $Res Function(_MatchesNode) _then)
      : super(_value, (v) => _then(v as _MatchesNode));

  @override
  _MatchesNode get _value => super._value as _MatchesNode;

  @override
  $Res call({
    Object? id = freezed,
    Object? court = freezed,
    Object? startDate = freezed,
    Object? matchSet = freezed,
    Object? playerOne = freezed,
    Object? playerTwo = freezed,
  }) {
    return _then(_MatchesNode(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      court: court == freezed
          ? _value.court
          : court // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      matchSet: matchSet == freezed
          ? _value.matchSet
          : matchSet // ignore: cast_nullable_to_non_nullable
              as MatchSet?,
      playerOne: playerOne == freezed
          ? _value.playerOne
          : playerOne // ignore: cast_nullable_to_non_nullable
              as UserNode?,
      playerTwo: playerTwo == freezed
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
            other is _MatchesNode &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.court, court) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.matchSet, matchSet) &&
            const DeepCollectionEquality().equals(other.playerOne, playerOne) &&
            const DeepCollectionEquality().equals(other.playerTwo, playerTwo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(court),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(matchSet),
      const DeepCollectionEquality().hash(playerOne),
      const DeepCollectionEquality().hash(playerTwo));

  @JsonKey(ignore: true)
  @override
  _$MatchesNodeCopyWith<_MatchesNode> get copyWith =>
      __$MatchesNodeCopyWithImpl<_MatchesNode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchesNodeToJson(this);
  }
}

abstract class _MatchesNode implements MatchesNode {
  const factory _MatchesNode(
      {required String? id,
      required String? court,
      required String? startDate,
      required MatchSet? matchSet,
      required UserNode? playerOne,
      required UserNode? playerTwo}) = _$_MatchesNode;

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
  _$MatchesNodeCopyWith<_MatchesNode> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchSet _$MatchSetFromJson(Map<String, dynamic> json) {
  return _MatchSet.fromJson(json);
}

/// @nodoc
class _$MatchSetTearOff {
  const _$MatchSetTearOff();

  _MatchSet call({required List<MatchSetEdges>? edges}) {
    return _MatchSet(
      edges: edges,
    );
  }

  MatchSet fromJson(Map<String, Object?> json) {
    return MatchSet.fromJson(json);
  }
}

/// @nodoc
const $MatchSet = _$MatchSetTearOff();

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
      _$MatchSetCopyWithImpl<$Res>;
  $Res call({List<MatchSetEdges>? edges});
}

/// @nodoc
class _$MatchSetCopyWithImpl<$Res> implements $MatchSetCopyWith<$Res> {
  _$MatchSetCopyWithImpl(this._value, this._then);

  final MatchSet _value;
  // ignore: unused_field
  final $Res Function(MatchSet) _then;

  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_value.copyWith(
      edges: edges == freezed
          ? _value.edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<MatchSetEdges>?,
    ));
  }
}

/// @nodoc
abstract class _$MatchSetCopyWith<$Res> implements $MatchSetCopyWith<$Res> {
  factory _$MatchSetCopyWith(_MatchSet value, $Res Function(_MatchSet) then) =
      __$MatchSetCopyWithImpl<$Res>;
  @override
  $Res call({List<MatchSetEdges>? edges});
}

/// @nodoc
class __$MatchSetCopyWithImpl<$Res> extends _$MatchSetCopyWithImpl<$Res>
    implements _$MatchSetCopyWith<$Res> {
  __$MatchSetCopyWithImpl(_MatchSet _value, $Res Function(_MatchSet) _then)
      : super(_value, (v) => _then(v as _MatchSet));

  @override
  _MatchSet get _value => super._value as _MatchSet;

  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_MatchSet(
      edges: edges == freezed
          ? _value.edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<MatchSetEdges>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MatchSet implements _MatchSet {
  const _$_MatchSet({required this.edges});

  factory _$_MatchSet.fromJson(Map<String, dynamic> json) =>
      _$$_MatchSetFromJson(json);

  @override
  final List<MatchSetEdges>? edges;

  @override
  String toString() {
    return 'MatchSet(edges: $edges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MatchSet &&
            const DeepCollectionEquality().equals(other.edges, edges));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(edges));

  @JsonKey(ignore: true)
  @override
  _$MatchSetCopyWith<_MatchSet> get copyWith =>
      __$MatchSetCopyWithImpl<_MatchSet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchSetToJson(this);
  }
}

abstract class _MatchSet implements MatchSet {
  const factory _MatchSet({required List<MatchSetEdges>? edges}) = _$_MatchSet;

  factory _MatchSet.fromJson(Map<String, dynamic> json) = _$_MatchSet.fromJson;

  @override
  List<MatchSetEdges>? get edges;
  @override
  @JsonKey(ignore: true)
  _$MatchSetCopyWith<_MatchSet> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchSetEdges _$MatchSetEdgesFromJson(Map<String, dynamic> json) {
  return _MatchSetEdges.fromJson(json);
}

/// @nodoc
class _$MatchSetEdgesTearOff {
  const _$MatchSetEdgesTearOff();

  _MatchSetEdges call({required MatchSetNode? node}) {
    return _MatchSetEdges(
      node: node,
    );
  }

  MatchSetEdges fromJson(Map<String, Object?> json) {
    return MatchSetEdges.fromJson(json);
  }
}

/// @nodoc
const $MatchSetEdges = _$MatchSetEdgesTearOff();

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
      _$MatchSetEdgesCopyWithImpl<$Res>;
  $Res call({MatchSetNode? node});

  $MatchSetNodeCopyWith<$Res>? get node;
}

/// @nodoc
class _$MatchSetEdgesCopyWithImpl<$Res>
    implements $MatchSetEdgesCopyWith<$Res> {
  _$MatchSetEdgesCopyWithImpl(this._value, this._then);

  final MatchSetEdges _value;
  // ignore: unused_field
  final $Res Function(MatchSetEdges) _then;

  @override
  $Res call({
    Object? node = freezed,
  }) {
    return _then(_value.copyWith(
      node: node == freezed
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as MatchSetNode?,
    ));
  }

  @override
  $MatchSetNodeCopyWith<$Res>? get node {
    if (_value.node == null) {
      return null;
    }

    return $MatchSetNodeCopyWith<$Res>(_value.node!, (value) {
      return _then(_value.copyWith(node: value));
    });
  }
}

/// @nodoc
abstract class _$MatchSetEdgesCopyWith<$Res>
    implements $MatchSetEdgesCopyWith<$Res> {
  factory _$MatchSetEdgesCopyWith(
          _MatchSetEdges value, $Res Function(_MatchSetEdges) then) =
      __$MatchSetEdgesCopyWithImpl<$Res>;
  @override
  $Res call({MatchSetNode? node});

  @override
  $MatchSetNodeCopyWith<$Res>? get node;
}

/// @nodoc
class __$MatchSetEdgesCopyWithImpl<$Res>
    extends _$MatchSetEdgesCopyWithImpl<$Res>
    implements _$MatchSetEdgesCopyWith<$Res> {
  __$MatchSetEdgesCopyWithImpl(
      _MatchSetEdges _value, $Res Function(_MatchSetEdges) _then)
      : super(_value, (v) => _then(v as _MatchSetEdges));

  @override
  _MatchSetEdges get _value => super._value as _MatchSetEdges;

  @override
  $Res call({
    Object? node = freezed,
  }) {
    return _then(_MatchSetEdges(
      node: node == freezed
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
            other is _MatchSetEdges &&
            const DeepCollectionEquality().equals(other.node, node));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(node));

  @JsonKey(ignore: true)
  @override
  _$MatchSetEdgesCopyWith<_MatchSetEdges> get copyWith =>
      __$MatchSetEdgesCopyWithImpl<_MatchSetEdges>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchSetEdgesToJson(this);
  }
}

abstract class _MatchSetEdges implements MatchSetEdges {
  const factory _MatchSetEdges({required MatchSetNode? node}) =
      _$_MatchSetEdges;

  factory _MatchSetEdges.fromJson(Map<String, dynamic> json) =
      _$_MatchSetEdges.fromJson;

  @override
  MatchSetNode? get node;
  @override
  @JsonKey(ignore: true)
  _$MatchSetEdgesCopyWith<_MatchSetEdges> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchSetNode _$MatchSetNodeFromJson(Map<String, dynamic> json) {
  return _MatchSetNode.fromJson(json);
}

/// @nodoc
class _$MatchSetNodeTearOff {
  const _$MatchSetNodeTearOff();

  _MatchSetNode call(
      {required String? id,
      required int? playerOneScore,
      required int? playerTwoScore,
      required String? matchSetId,
      required MatchDetails? match}) {
    return _MatchSetNode(
      id: id,
      playerOneScore: playerOneScore,
      playerTwoScore: playerTwoScore,
      matchSetId: matchSetId,
      match: match,
    );
  }

  MatchSetNode fromJson(Map<String, Object?> json) {
    return MatchSetNode.fromJson(json);
  }
}

/// @nodoc
const $MatchSetNode = _$MatchSetNodeTearOff();

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
      _$MatchSetNodeCopyWithImpl<$Res>;
  $Res call(
      {String? id,
      int? playerOneScore,
      int? playerTwoScore,
      String? matchSetId,
      MatchDetails? match});

  $MatchDetailsCopyWith<$Res>? get match;
}

/// @nodoc
class _$MatchSetNodeCopyWithImpl<$Res> implements $MatchSetNodeCopyWith<$Res> {
  _$MatchSetNodeCopyWithImpl(this._value, this._then);

  final MatchSetNode _value;
  // ignore: unused_field
  final $Res Function(MatchSetNode) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? playerOneScore = freezed,
    Object? playerTwoScore = freezed,
    Object? matchSetId = freezed,
    Object? match = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      playerOneScore: playerOneScore == freezed
          ? _value.playerOneScore
          : playerOneScore // ignore: cast_nullable_to_non_nullable
              as int?,
      playerTwoScore: playerTwoScore == freezed
          ? _value.playerTwoScore
          : playerTwoScore // ignore: cast_nullable_to_non_nullable
              as int?,
      matchSetId: matchSetId == freezed
          ? _value.matchSetId
          : matchSetId // ignore: cast_nullable_to_non_nullable
              as String?,
      match: match == freezed
          ? _value.match
          : match // ignore: cast_nullable_to_non_nullable
              as MatchDetails?,
    ));
  }

  @override
  $MatchDetailsCopyWith<$Res>? get match {
    if (_value.match == null) {
      return null;
    }

    return $MatchDetailsCopyWith<$Res>(_value.match!, (value) {
      return _then(_value.copyWith(match: value));
    });
  }
}

/// @nodoc
abstract class _$MatchSetNodeCopyWith<$Res>
    implements $MatchSetNodeCopyWith<$Res> {
  factory _$MatchSetNodeCopyWith(
          _MatchSetNode value, $Res Function(_MatchSetNode) then) =
      __$MatchSetNodeCopyWithImpl<$Res>;
  @override
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
class __$MatchSetNodeCopyWithImpl<$Res> extends _$MatchSetNodeCopyWithImpl<$Res>
    implements _$MatchSetNodeCopyWith<$Res> {
  __$MatchSetNodeCopyWithImpl(
      _MatchSetNode _value, $Res Function(_MatchSetNode) _then)
      : super(_value, (v) => _then(v as _MatchSetNode));

  @override
  _MatchSetNode get _value => super._value as _MatchSetNode;

  @override
  $Res call({
    Object? id = freezed,
    Object? playerOneScore = freezed,
    Object? playerTwoScore = freezed,
    Object? matchSetId = freezed,
    Object? match = freezed,
  }) {
    return _then(_MatchSetNode(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      playerOneScore: playerOneScore == freezed
          ? _value.playerOneScore
          : playerOneScore // ignore: cast_nullable_to_non_nullable
              as int?,
      playerTwoScore: playerTwoScore == freezed
          ? _value.playerTwoScore
          : playerTwoScore // ignore: cast_nullable_to_non_nullable
              as int?,
      matchSetId: matchSetId == freezed
          ? _value.matchSetId
          : matchSetId // ignore: cast_nullable_to_non_nullable
              as String?,
      match: match == freezed
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
            other is _MatchSetNode &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.playerOneScore, playerOneScore) &&
            const DeepCollectionEquality()
                .equals(other.playerTwoScore, playerTwoScore) &&
            const DeepCollectionEquality()
                .equals(other.matchSetId, matchSetId) &&
            const DeepCollectionEquality().equals(other.match, match));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(playerOneScore),
      const DeepCollectionEquality().hash(playerTwoScore),
      const DeepCollectionEquality().hash(matchSetId),
      const DeepCollectionEquality().hash(match));

  @JsonKey(ignore: true)
  @override
  _$MatchSetNodeCopyWith<_MatchSetNode> get copyWith =>
      __$MatchSetNodeCopyWithImpl<_MatchSetNode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchSetNodeToJson(this);
  }
}

abstract class _MatchSetNode implements MatchSetNode {
  const factory _MatchSetNode(
      {required String? id,
      required int? playerOneScore,
      required int? playerTwoScore,
      required String? matchSetId,
      required MatchDetails? match}) = _$_MatchSetNode;

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
  _$MatchSetNodeCopyWith<_MatchSetNode> get copyWith =>
      throw _privateConstructorUsedError;
}

MatchDetails _$MatchDetailsFromJson(Map<String, dynamic> json) {
  return _MatchDetails.fromJson(json);
}

/// @nodoc
class _$MatchDetailsTearOff {
  const _$MatchDetailsTearOff();

  _MatchDetails call(
      {required String? court,
      required String? matchId,
      required String? startDate,
      required String? createdAt,
      required String? endDate,
      required String? id}) {
    return _MatchDetails(
      court: court,
      matchId: matchId,
      startDate: startDate,
      createdAt: createdAt,
      endDate: endDate,
      id: id,
    );
  }

  MatchDetails fromJson(Map<String, Object?> json) {
    return MatchDetails.fromJson(json);
  }
}

/// @nodoc
const $MatchDetails = _$MatchDetailsTearOff();

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
      _$MatchDetailsCopyWithImpl<$Res>;
  $Res call(
      {String? court,
      String? matchId,
      String? startDate,
      String? createdAt,
      String? endDate,
      String? id});
}

/// @nodoc
class _$MatchDetailsCopyWithImpl<$Res> implements $MatchDetailsCopyWith<$Res> {
  _$MatchDetailsCopyWithImpl(this._value, this._then);

  final MatchDetails _value;
  // ignore: unused_field
  final $Res Function(MatchDetails) _then;

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
      court: court == freezed
          ? _value.court
          : court // ignore: cast_nullable_to_non_nullable
              as String?,
      matchId: matchId == freezed
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$MatchDetailsCopyWith<$Res>
    implements $MatchDetailsCopyWith<$Res> {
  factory _$MatchDetailsCopyWith(
          _MatchDetails value, $Res Function(_MatchDetails) then) =
      __$MatchDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? court,
      String? matchId,
      String? startDate,
      String? createdAt,
      String? endDate,
      String? id});
}

/// @nodoc
class __$MatchDetailsCopyWithImpl<$Res> extends _$MatchDetailsCopyWithImpl<$Res>
    implements _$MatchDetailsCopyWith<$Res> {
  __$MatchDetailsCopyWithImpl(
      _MatchDetails _value, $Res Function(_MatchDetails) _then)
      : super(_value, (v) => _then(v as _MatchDetails));

  @override
  _MatchDetails get _value => super._value as _MatchDetails;

  @override
  $Res call({
    Object? court = freezed,
    Object? matchId = freezed,
    Object? startDate = freezed,
    Object? createdAt = freezed,
    Object? endDate = freezed,
    Object? id = freezed,
  }) {
    return _then(_MatchDetails(
      court: court == freezed
          ? _value.court
          : court // ignore: cast_nullable_to_non_nullable
              as String?,
      matchId: matchId == freezed
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String?,
      startDate: startDate == freezed
          ? _value.startDate
          : startDate // ignore: cast_nullable_to_non_nullable
              as String?,
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      endDate: endDate == freezed
          ? _value.endDate
          : endDate // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
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
            other is _MatchDetails &&
            const DeepCollectionEquality().equals(other.court, court) &&
            const DeepCollectionEquality().equals(other.matchId, matchId) &&
            const DeepCollectionEquality().equals(other.startDate, startDate) &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.endDate, endDate) &&
            const DeepCollectionEquality().equals(other.id, id));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(court),
      const DeepCollectionEquality().hash(matchId),
      const DeepCollectionEquality().hash(startDate),
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(endDate),
      const DeepCollectionEquality().hash(id));

  @JsonKey(ignore: true)
  @override
  _$MatchDetailsCopyWith<_MatchDetails> get copyWith =>
      __$MatchDetailsCopyWithImpl<_MatchDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MatchDetailsToJson(this);
  }
}

abstract class _MatchDetails implements MatchDetails {
  const factory _MatchDetails(
      {required String? court,
      required String? matchId,
      required String? startDate,
      required String? createdAt,
      required String? endDate,
      required String? id}) = _$_MatchDetails;

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
  _$MatchDetailsCopyWith<_MatchDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
