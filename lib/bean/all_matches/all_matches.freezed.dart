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
      required String? matchId,
      required AllMatches? matchSet,
      required int? playerOneScore,
      required int? playerTwoScore,
      required UserNode? playerOne,
      required UserNode? playerTwo}) {
    return _MatchesNode(
      id: id,
      matchId: matchId,
      matchSet: matchSet,
      playerOneScore: playerOneScore,
      playerTwoScore: playerTwoScore,
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
  String? get matchId => throw _privateConstructorUsedError;
  AllMatches? get matchSet => throw _privateConstructorUsedError;
  int? get playerOneScore => throw _privateConstructorUsedError;
  int? get playerTwoScore => throw _privateConstructorUsedError;
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
      String? matchId,
      AllMatches? matchSet,
      int? playerOneScore,
      int? playerTwoScore,
      UserNode? playerOne,
      UserNode? playerTwo});

  $AllMatchesCopyWith<$Res>? get matchSet;
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
    Object? matchId = freezed,
    Object? matchSet = freezed,
    Object? playerOneScore = freezed,
    Object? playerTwoScore = freezed,
    Object? playerOne = freezed,
    Object? playerTwo = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      matchId: matchId == freezed
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String?,
      matchSet: matchSet == freezed
          ? _value.matchSet
          : matchSet // ignore: cast_nullable_to_non_nullable
              as AllMatches?,
      playerOneScore: playerOneScore == freezed
          ? _value.playerOneScore
          : playerOneScore // ignore: cast_nullable_to_non_nullable
              as int?,
      playerTwoScore: playerTwoScore == freezed
          ? _value.playerTwoScore
          : playerTwoScore // ignore: cast_nullable_to_non_nullable
              as int?,
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
  $AllMatchesCopyWith<$Res>? get matchSet {
    if (_value.matchSet == null) {
      return null;
    }

    return $AllMatchesCopyWith<$Res>(_value.matchSet!, (value) {
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
      String? matchId,
      AllMatches? matchSet,
      int? playerOneScore,
      int? playerTwoScore,
      UserNode? playerOne,
      UserNode? playerTwo});

  @override
  $AllMatchesCopyWith<$Res>? get matchSet;
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
    Object? matchId = freezed,
    Object? matchSet = freezed,
    Object? playerOneScore = freezed,
    Object? playerTwoScore = freezed,
    Object? playerOne = freezed,
    Object? playerTwo = freezed,
  }) {
    return _then(_MatchesNode(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      matchId: matchId == freezed
          ? _value.matchId
          : matchId // ignore: cast_nullable_to_non_nullable
              as String?,
      matchSet: matchSet == freezed
          ? _value.matchSet
          : matchSet // ignore: cast_nullable_to_non_nullable
              as AllMatches?,
      playerOneScore: playerOneScore == freezed
          ? _value.playerOneScore
          : playerOneScore // ignore: cast_nullable_to_non_nullable
              as int?,
      playerTwoScore: playerTwoScore == freezed
          ? _value.playerTwoScore
          : playerTwoScore // ignore: cast_nullable_to_non_nullable
              as int?,
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
      required this.matchId,
      required this.matchSet,
      required this.playerOneScore,
      required this.playerTwoScore,
      required this.playerOne,
      required this.playerTwo});

  factory _$_MatchesNode.fromJson(Map<String, dynamic> json) =>
      _$$_MatchesNodeFromJson(json);

  @override
  final String? id;
  @override
  final String? matchId;
  @override
  final AllMatches? matchSet;
  @override
  final int? playerOneScore;
  @override
  final int? playerTwoScore;
  @override
  final UserNode? playerOne;
  @override
  final UserNode? playerTwo;

  @override
  String toString() {
    return 'MatchesNode(id: $id, matchId: $matchId, matchSet: $matchSet, playerOneScore: $playerOneScore, playerTwoScore: $playerTwoScore, playerOne: $playerOne, playerTwo: $playerTwo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MatchesNode &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.matchId, matchId) &&
            const DeepCollectionEquality().equals(other.matchSet, matchSet) &&
            const DeepCollectionEquality()
                .equals(other.playerOneScore, playerOneScore) &&
            const DeepCollectionEquality()
                .equals(other.playerTwoScore, playerTwoScore) &&
            const DeepCollectionEquality().equals(other.playerOne, playerOne) &&
            const DeepCollectionEquality().equals(other.playerTwo, playerTwo));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(matchId),
      const DeepCollectionEquality().hash(matchSet),
      const DeepCollectionEquality().hash(playerOneScore),
      const DeepCollectionEquality().hash(playerTwoScore),
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
      required String? matchId,
      required AllMatches? matchSet,
      required int? playerOneScore,
      required int? playerTwoScore,
      required UserNode? playerOne,
      required UserNode? playerTwo}) = _$_MatchesNode;

  factory _MatchesNode.fromJson(Map<String, dynamic> json) =
      _$_MatchesNode.fromJson;

  @override
  String? get id;
  @override
  String? get matchId;
  @override
  AllMatches? get matchSet;
  @override
  int? get playerOneScore;
  @override
  int? get playerTwoScore;
  @override
  UserNode? get playerOne;
  @override
  UserNode? get playerTwo;
  @override
  @JsonKey(ignore: true)
  _$MatchesNodeCopyWith<_MatchesNode> get copyWith =>
      throw _privateConstructorUsedError;
}
