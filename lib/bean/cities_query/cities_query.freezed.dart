// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cities_query.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CitiesQueryData _$CitiesQueryDataFromJson(Map<String, dynamic> json) {
  return _CitiesQueryData.fromJson(json);
}

/// @nodoc
mixin _$CitiesQueryData {
  Cities? get cities => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitiesQueryDataCopyWith<CitiesQueryData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesQueryDataCopyWith<$Res> {
  factory $CitiesQueryDataCopyWith(
          CitiesQueryData value, $Res Function(CitiesQueryData) then) =
      _$CitiesQueryDataCopyWithImpl<$Res, CitiesQueryData>;
  @useResult
  $Res call({Cities? cities});

  $CitiesCopyWith<$Res>? get cities;
}

/// @nodoc
class _$CitiesQueryDataCopyWithImpl<$Res, $Val extends CitiesQueryData>
    implements $CitiesQueryDataCopyWith<$Res> {
  _$CitiesQueryDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = freezed,
  }) {
    return _then(_value.copyWith(
      cities: freezed == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as Cities?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CitiesCopyWith<$Res>? get cities {
    if (_value.cities == null) {
      return null;
    }

    return $CitiesCopyWith<$Res>(_value.cities!, (value) {
      return _then(_value.copyWith(cities: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_CitiesQueryDataCopyWith<$Res>
    implements $CitiesQueryDataCopyWith<$Res> {
  factory _$$_CitiesQueryDataCopyWith(
          _$_CitiesQueryData value, $Res Function(_$_CitiesQueryData) then) =
      __$$_CitiesQueryDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Cities? cities});

  @override
  $CitiesCopyWith<$Res>? get cities;
}

/// @nodoc
class __$$_CitiesQueryDataCopyWithImpl<$Res>
    extends _$CitiesQueryDataCopyWithImpl<$Res, _$_CitiesQueryData>
    implements _$$_CitiesQueryDataCopyWith<$Res> {
  __$$_CitiesQueryDataCopyWithImpl(
      _$_CitiesQueryData _value, $Res Function(_$_CitiesQueryData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cities = freezed,
  }) {
    return _then(_$_CitiesQueryData(
      cities: freezed == cities
          ? _value.cities
          : cities // ignore: cast_nullable_to_non_nullable
              as Cities?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CitiesQueryData implements _CitiesQueryData {
  const _$_CitiesQueryData({required this.cities});

  factory _$_CitiesQueryData.fromJson(Map<String, dynamic> json) =>
      _$$_CitiesQueryDataFromJson(json);

  @override
  final Cities? cities;

  @override
  String toString() {
    return 'CitiesQueryData(cities: $cities)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CitiesQueryData &&
            (identical(other.cities, cities) || other.cities == cities));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, cities);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CitiesQueryDataCopyWith<_$_CitiesQueryData> get copyWith =>
      __$$_CitiesQueryDataCopyWithImpl<_$_CitiesQueryData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CitiesQueryDataToJson(
      this,
    );
  }
}

abstract class _CitiesQueryData implements CitiesQueryData {
  const factory _CitiesQueryData({required final Cities? cities}) =
      _$_CitiesQueryData;

  factory _CitiesQueryData.fromJson(Map<String, dynamic> json) =
      _$_CitiesQueryData.fromJson;

  @override
  Cities? get cities;
  @override
  @JsonKey(ignore: true)
  _$$_CitiesQueryDataCopyWith<_$_CitiesQueryData> get copyWith =>
      throw _privateConstructorUsedError;
}

Cities _$CitiesFromJson(Map<String, dynamic> json) {
  return _Cities.fromJson(json);
}

/// @nodoc
mixin _$Cities {
  List<Edges>? get edges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CitiesCopyWith<Cities> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CitiesCopyWith<$Res> {
  factory $CitiesCopyWith(Cities value, $Res Function(Cities) then) =
      _$CitiesCopyWithImpl<$Res, Cities>;
  @useResult
  $Res call({List<Edges>? edges});
}

/// @nodoc
class _$CitiesCopyWithImpl<$Res, $Val extends Cities>
    implements $CitiesCopyWith<$Res> {
  _$CitiesCopyWithImpl(this._value, this._then);

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
              as List<Edges>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CitiesCopyWith<$Res> implements $CitiesCopyWith<$Res> {
  factory _$$_CitiesCopyWith(_$_Cities value, $Res Function(_$_Cities) then) =
      __$$_CitiesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Edges>? edges});
}

/// @nodoc
class __$$_CitiesCopyWithImpl<$Res>
    extends _$CitiesCopyWithImpl<$Res, _$_Cities>
    implements _$$_CitiesCopyWith<$Res> {
  __$$_CitiesCopyWithImpl(_$_Cities _value, $Res Function(_$_Cities) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_$_Cities(
      edges: freezed == edges
          ? _value._edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<Edges>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Cities implements _Cities {
  const _$_Cities({required final List<Edges>? edges}) : _edges = edges;

  factory _$_Cities.fromJson(Map<String, dynamic> json) =>
      _$$_CitiesFromJson(json);

  final List<Edges>? _edges;
  @override
  List<Edges>? get edges {
    final value = _edges;
    if (value == null) return null;
    if (_edges is EqualUnmodifiableListView) return _edges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'Cities(edges: $edges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Cities &&
            const DeepCollectionEquality().equals(other._edges, _edges));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_edges));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CitiesCopyWith<_$_Cities> get copyWith =>
      __$$_CitiesCopyWithImpl<_$_Cities>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CitiesToJson(
      this,
    );
  }
}

abstract class _Cities implements Cities {
  const factory _Cities({required final List<Edges>? edges}) = _$_Cities;

  factory _Cities.fromJson(Map<String, dynamic> json) = _$_Cities.fromJson;

  @override
  List<Edges>? get edges;
  @override
  @JsonKey(ignore: true)
  _$$_CitiesCopyWith<_$_Cities> get copyWith =>
      throw _privateConstructorUsedError;
}

Edges _$EdgesFromJson(Map<String, dynamic> json) {
  return _Edges.fromJson(json);
}

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
      _$EdgesCopyWithImpl<$Res, Edges>;
  @useResult
  $Res call({Node? node});

  $NodeCopyWith<$Res>? get node;
}

/// @nodoc
class _$EdgesCopyWithImpl<$Res, $Val extends Edges>
    implements $EdgesCopyWith<$Res> {
  _$EdgesCopyWithImpl(this._value, this._then);

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
              as Node?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $NodeCopyWith<$Res>? get node {
    if (_value.node == null) {
      return null;
    }

    return $NodeCopyWith<$Res>(_value.node!, (value) {
      return _then(_value.copyWith(node: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_EdgesCopyWith<$Res> implements $EdgesCopyWith<$Res> {
  factory _$$_EdgesCopyWith(_$_Edges value, $Res Function(_$_Edges) then) =
      __$$_EdgesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Node? node});

  @override
  $NodeCopyWith<$Res>? get node;
}

/// @nodoc
class __$$_EdgesCopyWithImpl<$Res> extends _$EdgesCopyWithImpl<$Res, _$_Edges>
    implements _$$_EdgesCopyWith<$Res> {
  __$$_EdgesCopyWithImpl(_$_Edges _value, $Res Function(_$_Edges) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = freezed,
  }) {
    return _then(_$_Edges(
      node: freezed == node
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
            other is _$_Edges &&
            (identical(other.node, node) || other.node == node));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, node);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EdgesCopyWith<_$_Edges> get copyWith =>
      __$$_EdgesCopyWithImpl<_$_Edges>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EdgesToJson(
      this,
    );
  }
}

abstract class _Edges implements Edges {
  const factory _Edges({required final Node? node}) = _$_Edges;

  factory _Edges.fromJson(Map<String, dynamic> json) = _$_Edges.fromJson;

  @override
  Node? get node;
  @override
  @JsonKey(ignore: true)
  _$$_EdgesCopyWith<_$_Edges> get copyWith =>
      throw _privateConstructorUsedError;
}

Node _$NodeFromJson(Map<String, dynamic> json) {
  return _Node.fromJson(json);
}

/// @nodoc
mixin _$Node {
  String? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  String? get stateCode => throw _privateConstructorUsedError;
  String? get county => throw _privateConstructorUsedError;
  String? get cityId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NodeCopyWith<Node> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NodeCopyWith<$Res> {
  factory $NodeCopyWith(Node value, $Res Function(Node) then) =
      _$NodeCopyWithImpl<$Res, Node>;
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? state,
      String? stateCode,
      String? county,
      String? cityId});
}

/// @nodoc
class _$NodeCopyWithImpl<$Res, $Val extends Node>
    implements $NodeCopyWith<$Res> {
  _$NodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? state = freezed,
    Object? stateCode = freezed,
    Object? county = freezed,
    Object? cityId = freezed,
  }) {
    return _then(_value.copyWith(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      stateCode: freezed == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String?,
      county: freezed == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_NodeCopyWith<$Res> implements $NodeCopyWith<$Res> {
  factory _$$_NodeCopyWith(_$_Node value, $Res Function(_$_Node) then) =
      __$$_NodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? id,
      String? name,
      String? state,
      String? stateCode,
      String? county,
      String? cityId});
}

/// @nodoc
class __$$_NodeCopyWithImpl<$Res> extends _$NodeCopyWithImpl<$Res, _$_Node>
    implements _$$_NodeCopyWith<$Res> {
  __$$_NodeCopyWithImpl(_$_Node _value, $Res Function(_$_Node) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? state = freezed,
    Object? stateCode = freezed,
    Object? county = freezed,
    Object? cityId = freezed,
  }) {
    return _then(_$_Node(
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      stateCode: freezed == stateCode
          ? _value.stateCode
          : stateCode // ignore: cast_nullable_to_non_nullable
              as String?,
      county: freezed == county
          ? _value.county
          : county // ignore: cast_nullable_to_non_nullable
              as String?,
      cityId: freezed == cityId
          ? _value.cityId
          : cityId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Node implements _Node {
  const _$_Node(
      {required this.id,
      required this.name,
      required this.state,
      required this.stateCode,
      required this.county,
      required this.cityId});

  factory _$_Node.fromJson(Map<String, dynamic> json) => _$$_NodeFromJson(json);

  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? state;
  @override
  final String? stateCode;
  @override
  final String? county;
  @override
  final String? cityId;

  @override
  String toString() {
    return 'Node(id: $id, name: $name, state: $state, stateCode: $stateCode, county: $county, cityId: $cityId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Node &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.stateCode, stateCode) ||
                other.stateCode == stateCode) &&
            (identical(other.county, county) || other.county == county) &&
            (identical(other.cityId, cityId) || other.cityId == cityId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, state, stateCode, county, cityId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NodeCopyWith<_$_Node> get copyWith =>
      __$$_NodeCopyWithImpl<_$_Node>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_NodeToJson(
      this,
    );
  }
}

abstract class _Node implements Node {
  const factory _Node(
      {required final String? id,
      required final String? name,
      required final String? state,
      required final String? stateCode,
      required final String? county,
      required final String? cityId}) = _$_Node;

  factory _Node.fromJson(Map<String, dynamic> json) = _$_Node.fromJson;

  @override
  String? get id;
  @override
  String? get name;
  @override
  String? get state;
  @override
  String? get stateCode;
  @override
  String? get county;
  @override
  String? get cityId;
  @override
  @JsonKey(ignore: true)
  _$$_NodeCopyWith<_$_Node> get copyWith => throw _privateConstructorUsedError;
}
