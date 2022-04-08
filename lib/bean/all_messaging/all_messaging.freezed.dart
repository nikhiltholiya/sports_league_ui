// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'all_messaging.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllMessagingData _$AllMessagingDataFromJson(Map<String, dynamic> json) {
  return _AllMessagingData.fromJson(json);
}

/// @nodoc
class _$AllMessagingDataTearOff {
  const _$AllMessagingDataTearOff();

  _AllMessagingData call({required AllMessaging? allMessaging}) {
    return _AllMessagingData(
      allMessaging: allMessaging,
    );
  }

  AllMessagingData fromJson(Map<String, Object?> json) {
    return AllMessagingData.fromJson(json);
  }
}

/// @nodoc
const $AllMessagingData = _$AllMessagingDataTearOff();

/// @nodoc
mixin _$AllMessagingData {
  AllMessaging? get allMessaging => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllMessagingDataCopyWith<AllMessagingData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllMessagingDataCopyWith<$Res> {
  factory $AllMessagingDataCopyWith(
          AllMessagingData value, $Res Function(AllMessagingData) then) =
      _$AllMessagingDataCopyWithImpl<$Res>;
  $Res call({AllMessaging? allMessaging});

  $AllMessagingCopyWith<$Res>? get allMessaging;
}

/// @nodoc
class _$AllMessagingDataCopyWithImpl<$Res>
    implements $AllMessagingDataCopyWith<$Res> {
  _$AllMessagingDataCopyWithImpl(this._value, this._then);

  final AllMessagingData _value;
  // ignore: unused_field
  final $Res Function(AllMessagingData) _then;

  @override
  $Res call({
    Object? allMessaging = freezed,
  }) {
    return _then(_value.copyWith(
      allMessaging: allMessaging == freezed
          ? _value.allMessaging
          : allMessaging // ignore: cast_nullable_to_non_nullable
              as AllMessaging?,
    ));
  }

  @override
  $AllMessagingCopyWith<$Res>? get allMessaging {
    if (_value.allMessaging == null) {
      return null;
    }

    return $AllMessagingCopyWith<$Res>(_value.allMessaging!, (value) {
      return _then(_value.copyWith(allMessaging: value));
    });
  }
}

/// @nodoc
abstract class _$AllMessagingDataCopyWith<$Res>
    implements $AllMessagingDataCopyWith<$Res> {
  factory _$AllMessagingDataCopyWith(
          _AllMessagingData value, $Res Function(_AllMessagingData) then) =
      __$AllMessagingDataCopyWithImpl<$Res>;
  @override
  $Res call({AllMessaging? allMessaging});

  @override
  $AllMessagingCopyWith<$Res>? get allMessaging;
}

/// @nodoc
class __$AllMessagingDataCopyWithImpl<$Res>
    extends _$AllMessagingDataCopyWithImpl<$Res>
    implements _$AllMessagingDataCopyWith<$Res> {
  __$AllMessagingDataCopyWithImpl(
      _AllMessagingData _value, $Res Function(_AllMessagingData) _then)
      : super(_value, (v) => _then(v as _AllMessagingData));

  @override
  _AllMessagingData get _value => super._value as _AllMessagingData;

  @override
  $Res call({
    Object? allMessaging = freezed,
  }) {
    return _then(_AllMessagingData(
      allMessaging: allMessaging == freezed
          ? _value.allMessaging
          : allMessaging // ignore: cast_nullable_to_non_nullable
              as AllMessaging?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllMessagingData implements _AllMessagingData {
  const _$_AllMessagingData({required this.allMessaging});

  factory _$_AllMessagingData.fromJson(Map<String, dynamic> json) =>
      _$$_AllMessagingDataFromJson(json);

  @override
  final AllMessaging? allMessaging;

  @override
  String toString() {
    return 'AllMessagingData(allMessaging: $allMessaging)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllMessagingData &&
            const DeepCollectionEquality()
                .equals(other.allMessaging, allMessaging));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(allMessaging));

  @JsonKey(ignore: true)
  @override
  _$AllMessagingDataCopyWith<_AllMessagingData> get copyWith =>
      __$AllMessagingDataCopyWithImpl<_AllMessagingData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllMessagingDataToJson(this);
  }
}

abstract class _AllMessagingData implements AllMessagingData {
  const factory _AllMessagingData({required AllMessaging? allMessaging}) =
      _$_AllMessagingData;

  factory _AllMessagingData.fromJson(Map<String, dynamic> json) =
      _$_AllMessagingData.fromJson;

  @override
  AllMessaging? get allMessaging;
  @override
  @JsonKey(ignore: true)
  _$AllMessagingDataCopyWith<_AllMessagingData> get copyWith =>
      throw _privateConstructorUsedError;
}

AllMessaging _$AllMessagingFromJson(Map<String, dynamic> json) {
  return _AllMessaging.fromJson(json);
}

/// @nodoc
class _$AllMessagingTearOff {
  const _$AllMessagingTearOff();

  _AllMessaging call({required List<MsgEdges>? edges}) {
    return _AllMessaging(
      edges: edges,
    );
  }

  AllMessaging fromJson(Map<String, Object?> json) {
    return AllMessaging.fromJson(json);
  }
}

/// @nodoc
const $AllMessaging = _$AllMessagingTearOff();

/// @nodoc
mixin _$AllMessaging {
  List<MsgEdges>? get edges => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AllMessagingCopyWith<AllMessaging> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AllMessagingCopyWith<$Res> {
  factory $AllMessagingCopyWith(
          AllMessaging value, $Res Function(AllMessaging) then) =
      _$AllMessagingCopyWithImpl<$Res>;
  $Res call({List<MsgEdges>? edges});
}

/// @nodoc
class _$AllMessagingCopyWithImpl<$Res> implements $AllMessagingCopyWith<$Res> {
  _$AllMessagingCopyWithImpl(this._value, this._then);

  final AllMessaging _value;
  // ignore: unused_field
  final $Res Function(AllMessaging) _then;

  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_value.copyWith(
      edges: edges == freezed
          ? _value.edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<MsgEdges>?,
    ));
  }
}

/// @nodoc
abstract class _$AllMessagingCopyWith<$Res>
    implements $AllMessagingCopyWith<$Res> {
  factory _$AllMessagingCopyWith(
          _AllMessaging value, $Res Function(_AllMessaging) then) =
      __$AllMessagingCopyWithImpl<$Res>;
  @override
  $Res call({List<MsgEdges>? edges});
}

/// @nodoc
class __$AllMessagingCopyWithImpl<$Res> extends _$AllMessagingCopyWithImpl<$Res>
    implements _$AllMessagingCopyWith<$Res> {
  __$AllMessagingCopyWithImpl(
      _AllMessaging _value, $Res Function(_AllMessaging) _then)
      : super(_value, (v) => _then(v as _AllMessaging));

  @override
  _AllMessaging get _value => super._value as _AllMessaging;

  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_AllMessaging(
      edges: edges == freezed
          ? _value.edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<MsgEdges>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllMessaging implements _AllMessaging {
  const _$_AllMessaging({required this.edges});

  factory _$_AllMessaging.fromJson(Map<String, dynamic> json) =>
      _$$_AllMessagingFromJson(json);

  @override
  final List<MsgEdges>? edges;

  @override
  String toString() {
    return 'AllMessaging(edges: $edges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AllMessaging &&
            const DeepCollectionEquality().equals(other.edges, edges));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(edges));

  @JsonKey(ignore: true)
  @override
  _$AllMessagingCopyWith<_AllMessaging> get copyWith =>
      __$AllMessagingCopyWithImpl<_AllMessaging>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllMessagingToJson(this);
  }
}

abstract class _AllMessaging implements AllMessaging {
  const factory _AllMessaging({required List<MsgEdges>? edges}) =
      _$_AllMessaging;

  factory _AllMessaging.fromJson(Map<String, dynamic> json) =
      _$_AllMessaging.fromJson;

  @override
  List<MsgEdges>? get edges;
  @override
  @JsonKey(ignore: true)
  _$AllMessagingCopyWith<_AllMessaging> get copyWith =>
      throw _privateConstructorUsedError;
}

MsgEdges _$MsgEdgesFromJson(Map<String, dynamic> json) {
  return _MsgEdges.fromJson(json);
}

/// @nodoc
class _$MsgEdgesTearOff {
  const _$MsgEdgesTearOff();

  _MsgEdges call({required MsgNode? node}) {
    return _MsgEdges(
      node: node,
    );
  }

  MsgEdges fromJson(Map<String, Object?> json) {
    return MsgEdges.fromJson(json);
  }
}

/// @nodoc
const $MsgEdges = _$MsgEdgesTearOff();

/// @nodoc
mixin _$MsgEdges {
  MsgNode? get node => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MsgEdgesCopyWith<MsgEdges> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MsgEdgesCopyWith<$Res> {
  factory $MsgEdgesCopyWith(MsgEdges value, $Res Function(MsgEdges) then) =
      _$MsgEdgesCopyWithImpl<$Res>;
  $Res call({MsgNode? node});

  $MsgNodeCopyWith<$Res>? get node;
}

/// @nodoc
class _$MsgEdgesCopyWithImpl<$Res> implements $MsgEdgesCopyWith<$Res> {
  _$MsgEdgesCopyWithImpl(this._value, this._then);

  final MsgEdges _value;
  // ignore: unused_field
  final $Res Function(MsgEdges) _then;

  @override
  $Res call({
    Object? node = freezed,
  }) {
    return _then(_value.copyWith(
      node: node == freezed
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as MsgNode?,
    ));
  }

  @override
  $MsgNodeCopyWith<$Res>? get node {
    if (_value.node == null) {
      return null;
    }

    return $MsgNodeCopyWith<$Res>(_value.node!, (value) {
      return _then(_value.copyWith(node: value));
    });
  }
}

/// @nodoc
abstract class _$MsgEdgesCopyWith<$Res> implements $MsgEdgesCopyWith<$Res> {
  factory _$MsgEdgesCopyWith(_MsgEdges value, $Res Function(_MsgEdges) then) =
      __$MsgEdgesCopyWithImpl<$Res>;
  @override
  $Res call({MsgNode? node});

  @override
  $MsgNodeCopyWith<$Res>? get node;
}

/// @nodoc
class __$MsgEdgesCopyWithImpl<$Res> extends _$MsgEdgesCopyWithImpl<$Res>
    implements _$MsgEdgesCopyWith<$Res> {
  __$MsgEdgesCopyWithImpl(_MsgEdges _value, $Res Function(_MsgEdges) _then)
      : super(_value, (v) => _then(v as _MsgEdges));

  @override
  _MsgEdges get _value => super._value as _MsgEdges;

  @override
  $Res call({
    Object? node = freezed,
  }) {
    return _then(_MsgEdges(
      node: node == freezed
          ? _value.node
          : node // ignore: cast_nullable_to_non_nullable
              as MsgNode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MsgEdges implements _MsgEdges {
  const _$_MsgEdges({required this.node});

  factory _$_MsgEdges.fromJson(Map<String, dynamic> json) =>
      _$$_MsgEdgesFromJson(json);

  @override
  final MsgNode? node;

  @override
  String toString() {
    return 'MsgEdges(node: $node)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MsgEdges &&
            const DeepCollectionEquality().equals(other.node, node));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(node));

  @JsonKey(ignore: true)
  @override
  _$MsgEdgesCopyWith<_MsgEdges> get copyWith =>
      __$MsgEdgesCopyWithImpl<_MsgEdges>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MsgEdgesToJson(this);
  }
}

abstract class _MsgEdges implements MsgEdges {
  const factory _MsgEdges({required MsgNode? node}) = _$_MsgEdges;

  factory _MsgEdges.fromJson(Map<String, dynamic> json) = _$_MsgEdges.fromJson;

  @override
  MsgNode? get node;
  @override
  @JsonKey(ignore: true)
  _$MsgEdgesCopyWith<_MsgEdges> get copyWith =>
      throw _privateConstructorUsedError;
}

MsgNode _$MsgNodeFromJson(Map<String, dynamic> json) {
  return _MsgNode.fromJson(json);
}

/// @nodoc
class _$MsgNodeTearOff {
  const _$MsgNodeTearOff();

  _MsgNode call(
      {required String? createdAt,
      required String? id,
      required String? message,
      required String? messageId,
      required String? updatedAt,
      required MsgRecipient? recipient,
      required MsgRecipient? sender}) {
    return _MsgNode(
      createdAt: createdAt,
      id: id,
      message: message,
      messageId: messageId,
      updatedAt: updatedAt,
      recipient: recipient,
      sender: sender,
    );
  }

  MsgNode fromJson(Map<String, Object?> json) {
    return MsgNode.fromJson(json);
  }
}

/// @nodoc
const $MsgNode = _$MsgNodeTearOff();

/// @nodoc
mixin _$MsgNode {
  String? get createdAt => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get messageId => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  MsgRecipient? get recipient => throw _privateConstructorUsedError;
  MsgRecipient? get sender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MsgNodeCopyWith<MsgNode> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MsgNodeCopyWith<$Res> {
  factory $MsgNodeCopyWith(MsgNode value, $Res Function(MsgNode) then) =
      _$MsgNodeCopyWithImpl<$Res>;
  $Res call(
      {String? createdAt,
      String? id,
      String? message,
      String? messageId,
      String? updatedAt,
      MsgRecipient? recipient,
      MsgRecipient? sender});

  $MsgRecipientCopyWith<$Res>? get recipient;
  $MsgRecipientCopyWith<$Res>? get sender;
}

/// @nodoc
class _$MsgNodeCopyWithImpl<$Res> implements $MsgNodeCopyWith<$Res> {
  _$MsgNodeCopyWithImpl(this._value, this._then);

  final MsgNode _value;
  // ignore: unused_field
  final $Res Function(MsgNode) _then;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? message = freezed,
    Object? messageId = freezed,
    Object? updatedAt = freezed,
    Object? recipient = freezed,
    Object? sender = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as MsgRecipient?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as MsgRecipient?,
    ));
  }

  @override
  $MsgRecipientCopyWith<$Res>? get recipient {
    if (_value.recipient == null) {
      return null;
    }

    return $MsgRecipientCopyWith<$Res>(_value.recipient!, (value) {
      return _then(_value.copyWith(recipient: value));
    });
  }

  @override
  $MsgRecipientCopyWith<$Res>? get sender {
    if (_value.sender == null) {
      return null;
    }

    return $MsgRecipientCopyWith<$Res>(_value.sender!, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }
}

/// @nodoc
abstract class _$MsgNodeCopyWith<$Res> implements $MsgNodeCopyWith<$Res> {
  factory _$MsgNodeCopyWith(_MsgNode value, $Res Function(_MsgNode) then) =
      __$MsgNodeCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? createdAt,
      String? id,
      String? message,
      String? messageId,
      String? updatedAt,
      MsgRecipient? recipient,
      MsgRecipient? sender});

  @override
  $MsgRecipientCopyWith<$Res>? get recipient;
  @override
  $MsgRecipientCopyWith<$Res>? get sender;
}

/// @nodoc
class __$MsgNodeCopyWithImpl<$Res> extends _$MsgNodeCopyWithImpl<$Res>
    implements _$MsgNodeCopyWith<$Res> {
  __$MsgNodeCopyWithImpl(_MsgNode _value, $Res Function(_MsgNode) _then)
      : super(_value, (v) => _then(v as _MsgNode));

  @override
  _MsgNode get _value => super._value as _MsgNode;

  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? message = freezed,
    Object? messageId = freezed,
    Object? updatedAt = freezed,
    Object? recipient = freezed,
    Object? sender = freezed,
  }) {
    return _then(_MsgNode(
      createdAt: createdAt == freezed
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: messageId == freezed
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      updatedAt: updatedAt == freezed
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as MsgRecipient?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as MsgRecipient?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MsgNode implements _MsgNode {
  const _$_MsgNode(
      {required this.createdAt,
      required this.id,
      required this.message,
      required this.messageId,
      required this.updatedAt,
      required this.recipient,
      required this.sender});

  factory _$_MsgNode.fromJson(Map<String, dynamic> json) =>
      _$$_MsgNodeFromJson(json);

  @override
  final String? createdAt;
  @override
  final String? id;
  @override
  final String? message;
  @override
  final String? messageId;
  @override
  final String? updatedAt;
  @override
  final MsgRecipient? recipient;
  @override
  final MsgRecipient? sender;

  @override
  String toString() {
    return 'MsgNode(createdAt: $createdAt, id: $id, message: $message, messageId: $messageId, updatedAt: $updatedAt, recipient: $recipient, sender: $sender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MsgNode &&
            const DeepCollectionEquality().equals(other.createdAt, createdAt) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.messageId, messageId) &&
            const DeepCollectionEquality().equals(other.updatedAt, updatedAt) &&
            const DeepCollectionEquality().equals(other.recipient, recipient) &&
            const DeepCollectionEquality().equals(other.sender, sender));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(createdAt),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(messageId),
      const DeepCollectionEquality().hash(updatedAt),
      const DeepCollectionEquality().hash(recipient),
      const DeepCollectionEquality().hash(sender));

  @JsonKey(ignore: true)
  @override
  _$MsgNodeCopyWith<_MsgNode> get copyWith =>
      __$MsgNodeCopyWithImpl<_MsgNode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MsgNodeToJson(this);
  }
}

abstract class _MsgNode implements MsgNode {
  const factory _MsgNode(
      {required String? createdAt,
      required String? id,
      required String? message,
      required String? messageId,
      required String? updatedAt,
      required MsgRecipient? recipient,
      required MsgRecipient? sender}) = _$_MsgNode;

  factory _MsgNode.fromJson(Map<String, dynamic> json) = _$_MsgNode.fromJson;

  @override
  String? get createdAt;
  @override
  String? get id;
  @override
  String? get message;
  @override
  String? get messageId;
  @override
  String? get updatedAt;
  @override
  MsgRecipient? get recipient;
  @override
  MsgRecipient? get sender;
  @override
  @JsonKey(ignore: true)
  _$MsgNodeCopyWith<_MsgNode> get copyWith =>
      throw _privateConstructorUsedError;
}

MsgRecipient _$MsgRecipientFromJson(Map<String, dynamic> json) {
  return _MsgRecipient.fromJson(json);
}

/// @nodoc
class _$MsgRecipientTearOff {
  const _$MsgRecipientTearOff();

  _MsgRecipient call(
      {required String? city,
      required String? country,
      required String? firstName,
      required String? id,
      required String? lastName,
      required String? picture,
      required String? rating,
      required String? userId,
      required String? state,
      required bool? active}) {
    return _MsgRecipient(
      city: city,
      country: country,
      firstName: firstName,
      id: id,
      lastName: lastName,
      picture: picture,
      rating: rating,
      userId: userId,
      state: state,
      active: active,
    );
  }

  MsgRecipient fromJson(Map<String, Object?> json) {
    return MsgRecipient.fromJson(json);
  }
}

/// @nodoc
const $MsgRecipient = _$MsgRecipientTearOff();

/// @nodoc
mixin _$MsgRecipient {
  String? get city => throw _privateConstructorUsedError;
  String? get country => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get picture => throw _privateConstructorUsedError;
  String? get rating => throw _privateConstructorUsedError;
  String? get userId => throw _privateConstructorUsedError;
  String? get state => throw _privateConstructorUsedError;
  bool? get active => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MsgRecipientCopyWith<MsgRecipient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MsgRecipientCopyWith<$Res> {
  factory $MsgRecipientCopyWith(
          MsgRecipient value, $Res Function(MsgRecipient) then) =
      _$MsgRecipientCopyWithImpl<$Res>;
  $Res call(
      {String? city,
      String? country,
      String? firstName,
      String? id,
      String? lastName,
      String? picture,
      String? rating,
      String? userId,
      String? state,
      bool? active});
}

/// @nodoc
class _$MsgRecipientCopyWithImpl<$Res> implements $MsgRecipientCopyWith<$Res> {
  _$MsgRecipientCopyWithImpl(this._value, this._then);

  final MsgRecipient _value;
  // ignore: unused_field
  final $Res Function(MsgRecipient) _then;

  @override
  $Res call({
    Object? city = freezed,
    Object? country = freezed,
    Object? firstName = freezed,
    Object? id = freezed,
    Object? lastName = freezed,
    Object? picture = freezed,
    Object? rating = freezed,
    Object? userId = freezed,
    Object? state = freezed,
    Object? active = freezed,
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
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$MsgRecipientCopyWith<$Res>
    implements $MsgRecipientCopyWith<$Res> {
  factory _$MsgRecipientCopyWith(
          _MsgRecipient value, $Res Function(_MsgRecipient) then) =
      __$MsgRecipientCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? city,
      String? country,
      String? firstName,
      String? id,
      String? lastName,
      String? picture,
      String? rating,
      String? userId,
      String? state,
      bool? active});
}

/// @nodoc
class __$MsgRecipientCopyWithImpl<$Res> extends _$MsgRecipientCopyWithImpl<$Res>
    implements _$MsgRecipientCopyWith<$Res> {
  __$MsgRecipientCopyWithImpl(
      _MsgRecipient _value, $Res Function(_MsgRecipient) _then)
      : super(_value, (v) => _then(v as _MsgRecipient));

  @override
  _MsgRecipient get _value => super._value as _MsgRecipient;

  @override
  $Res call({
    Object? city = freezed,
    Object? country = freezed,
    Object? firstName = freezed,
    Object? id = freezed,
    Object? lastName = freezed,
    Object? picture = freezed,
    Object? rating = freezed,
    Object? userId = freezed,
    Object? state = freezed,
    Object? active = freezed,
  }) {
    return _then(_MsgRecipient(
      city: city == freezed
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: country == freezed
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: picture == freezed
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: rating == freezed
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      active: active == freezed
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MsgRecipient implements _MsgRecipient {
  const _$_MsgRecipient(
      {required this.city,
      required this.country,
      required this.firstName,
      required this.id,
      required this.lastName,
      required this.picture,
      required this.rating,
      required this.userId,
      required this.state,
      required this.active});

  factory _$_MsgRecipient.fromJson(Map<String, dynamic> json) =>
      _$$_MsgRecipientFromJson(json);

  @override
  final String? city;
  @override
  final String? country;
  @override
  final String? firstName;
  @override
  final String? id;
  @override
  final String? lastName;
  @override
  final String? picture;
  @override
  final String? rating;
  @override
  final String? userId;
  @override
  final String? state;
  @override
  final bool? active;

  @override
  String toString() {
    return 'MsgRecipient(city: $city, country: $country, firstName: $firstName, id: $id, lastName: $lastName, picture: $picture, rating: $rating, userId: $userId, state: $state, active: $active)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MsgRecipient &&
            const DeepCollectionEquality().equals(other.city, city) &&
            const DeepCollectionEquality().equals(other.country, country) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.lastName, lastName) &&
            const DeepCollectionEquality().equals(other.picture, picture) &&
            const DeepCollectionEquality().equals(other.rating, rating) &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.active, active));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(city),
      const DeepCollectionEquality().hash(country),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(lastName),
      const DeepCollectionEquality().hash(picture),
      const DeepCollectionEquality().hash(rating),
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(active));

  @JsonKey(ignore: true)
  @override
  _$MsgRecipientCopyWith<_MsgRecipient> get copyWith =>
      __$MsgRecipientCopyWithImpl<_MsgRecipient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MsgRecipientToJson(this);
  }
}

abstract class _MsgRecipient implements MsgRecipient {
  const factory _MsgRecipient(
      {required String? city,
      required String? country,
      required String? firstName,
      required String? id,
      required String? lastName,
      required String? picture,
      required String? rating,
      required String? userId,
      required String? state,
      required bool? active}) = _$_MsgRecipient;

  factory _MsgRecipient.fromJson(Map<String, dynamic> json) =
      _$_MsgRecipient.fromJson;

  @override
  String? get city;
  @override
  String? get country;
  @override
  String? get firstName;
  @override
  String? get id;
  @override
  String? get lastName;
  @override
  String? get picture;
  @override
  String? get rating;
  @override
  String? get userId;
  @override
  String? get state;
  @override
  bool? get active;
  @override
  @JsonKey(ignore: true)
  _$MsgRecipientCopyWith<_MsgRecipient> get copyWith =>
      throw _privateConstructorUsedError;
}
