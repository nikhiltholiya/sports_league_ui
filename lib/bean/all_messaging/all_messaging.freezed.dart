// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'all_messaging.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AllMessagingData _$AllMessagingDataFromJson(Map<String, dynamic> json) {
  return _AllMessagingData.fromJson(json);
}

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
      _$AllMessagingDataCopyWithImpl<$Res, AllMessagingData>;
  @useResult
  $Res call({AllMessaging? allMessaging});

  $AllMessagingCopyWith<$Res>? get allMessaging;
}

/// @nodoc
class _$AllMessagingDataCopyWithImpl<$Res, $Val extends AllMessagingData>
    implements $AllMessagingDataCopyWith<$Res> {
  _$AllMessagingDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allMessaging = freezed,
  }) {
    return _then(_value.copyWith(
      allMessaging: freezed == allMessaging
          ? _value.allMessaging
          : allMessaging // ignore: cast_nullable_to_non_nullable
              as AllMessaging?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AllMessagingCopyWith<$Res>? get allMessaging {
    if (_value.allMessaging == null) {
      return null;
    }

    return $AllMessagingCopyWith<$Res>(_value.allMessaging!, (value) {
      return _then(_value.copyWith(allMessaging: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AllMessagingDataCopyWith<$Res>
    implements $AllMessagingDataCopyWith<$Res> {
  factory _$$_AllMessagingDataCopyWith(
          _$_AllMessagingData value, $Res Function(_$_AllMessagingData) then) =
      __$$_AllMessagingDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({AllMessaging? allMessaging});

  @override
  $AllMessagingCopyWith<$Res>? get allMessaging;
}

/// @nodoc
class __$$_AllMessagingDataCopyWithImpl<$Res>
    extends _$AllMessagingDataCopyWithImpl<$Res, _$_AllMessagingData>
    implements _$$_AllMessagingDataCopyWith<$Res> {
  __$$_AllMessagingDataCopyWithImpl(
      _$_AllMessagingData _value, $Res Function(_$_AllMessagingData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? allMessaging = freezed,
  }) {
    return _then(_$_AllMessagingData(
      allMessaging: freezed == allMessaging
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
            other is _$_AllMessagingData &&
            (identical(other.allMessaging, allMessaging) ||
                other.allMessaging == allMessaging));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, allMessaging);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllMessagingDataCopyWith<_$_AllMessagingData> get copyWith =>
      __$$_AllMessagingDataCopyWithImpl<_$_AllMessagingData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllMessagingDataToJson(
      this,
    );
  }
}

abstract class _AllMessagingData implements AllMessagingData {
  const factory _AllMessagingData({required final AllMessaging? allMessaging}) =
      _$_AllMessagingData;

  factory _AllMessagingData.fromJson(Map<String, dynamic> json) =
      _$_AllMessagingData.fromJson;

  @override
  AllMessaging? get allMessaging;
  @override
  @JsonKey(ignore: true)
  _$$_AllMessagingDataCopyWith<_$_AllMessagingData> get copyWith =>
      throw _privateConstructorUsedError;
}

AllMessaging _$AllMessagingFromJson(Map<String, dynamic> json) {
  return _AllMessaging.fromJson(json);
}

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
      _$AllMessagingCopyWithImpl<$Res, AllMessaging>;
  @useResult
  $Res call({List<MsgEdges>? edges});
}

/// @nodoc
class _$AllMessagingCopyWithImpl<$Res, $Val extends AllMessaging>
    implements $AllMessagingCopyWith<$Res> {
  _$AllMessagingCopyWithImpl(this._value, this._then);

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
              as List<MsgEdges>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_AllMessagingCopyWith<$Res>
    implements $AllMessagingCopyWith<$Res> {
  factory _$$_AllMessagingCopyWith(
          _$_AllMessaging value, $Res Function(_$_AllMessaging) then) =
      __$$_AllMessagingCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<MsgEdges>? edges});
}

/// @nodoc
class __$$_AllMessagingCopyWithImpl<$Res>
    extends _$AllMessagingCopyWithImpl<$Res, _$_AllMessaging>
    implements _$$_AllMessagingCopyWith<$Res> {
  __$$_AllMessagingCopyWithImpl(
      _$_AllMessaging _value, $Res Function(_$_AllMessaging) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? edges = freezed,
  }) {
    return _then(_$_AllMessaging(
      edges: freezed == edges
          ? _value._edges
          : edges // ignore: cast_nullable_to_non_nullable
              as List<MsgEdges>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AllMessaging implements _AllMessaging {
  const _$_AllMessaging({required final List<MsgEdges>? edges})
      : _edges = edges;

  factory _$_AllMessaging.fromJson(Map<String, dynamic> json) =>
      _$$_AllMessagingFromJson(json);

  final List<MsgEdges>? _edges;
  @override
  List<MsgEdges>? get edges {
    final value = _edges;
    if (value == null) return null;
    if (_edges is EqualUnmodifiableListView) return _edges;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AllMessaging(edges: $edges)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AllMessaging &&
            const DeepCollectionEquality().equals(other._edges, _edges));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_edges));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AllMessagingCopyWith<_$_AllMessaging> get copyWith =>
      __$$_AllMessagingCopyWithImpl<_$_AllMessaging>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AllMessagingToJson(
      this,
    );
  }
}

abstract class _AllMessaging implements AllMessaging {
  const factory _AllMessaging({required final List<MsgEdges>? edges}) =
      _$_AllMessaging;

  factory _AllMessaging.fromJson(Map<String, dynamic> json) =
      _$_AllMessaging.fromJson;

  @override
  List<MsgEdges>? get edges;
  @override
  @JsonKey(ignore: true)
  _$$_AllMessagingCopyWith<_$_AllMessaging> get copyWith =>
      throw _privateConstructorUsedError;
}

MsgEdges _$MsgEdgesFromJson(Map<String, dynamic> json) {
  return _MsgEdges.fromJson(json);
}

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
      _$MsgEdgesCopyWithImpl<$Res, MsgEdges>;
  @useResult
  $Res call({MsgNode? node});

  $MsgNodeCopyWith<$Res>? get node;
}

/// @nodoc
class _$MsgEdgesCopyWithImpl<$Res, $Val extends MsgEdges>
    implements $MsgEdgesCopyWith<$Res> {
  _$MsgEdgesCopyWithImpl(this._value, this._then);

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
              as MsgNode?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MsgNodeCopyWith<$Res>? get node {
    if (_value.node == null) {
      return null;
    }

    return $MsgNodeCopyWith<$Res>(_value.node!, (value) {
      return _then(_value.copyWith(node: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MsgEdgesCopyWith<$Res> implements $MsgEdgesCopyWith<$Res> {
  factory _$$_MsgEdgesCopyWith(
          _$_MsgEdges value, $Res Function(_$_MsgEdges) then) =
      __$$_MsgEdgesCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MsgNode? node});

  @override
  $MsgNodeCopyWith<$Res>? get node;
}

/// @nodoc
class __$$_MsgEdgesCopyWithImpl<$Res>
    extends _$MsgEdgesCopyWithImpl<$Res, _$_MsgEdges>
    implements _$$_MsgEdgesCopyWith<$Res> {
  __$$_MsgEdgesCopyWithImpl(
      _$_MsgEdges _value, $Res Function(_$_MsgEdges) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? node = freezed,
  }) {
    return _then(_$_MsgEdges(
      node: freezed == node
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
            other is _$_MsgEdges &&
            (identical(other.node, node) || other.node == node));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, node);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MsgEdgesCopyWith<_$_MsgEdges> get copyWith =>
      __$$_MsgEdgesCopyWithImpl<_$_MsgEdges>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MsgEdgesToJson(
      this,
    );
  }
}

abstract class _MsgEdges implements MsgEdges {
  const factory _MsgEdges({required final MsgNode? node}) = _$_MsgEdges;

  factory _MsgEdges.fromJson(Map<String, dynamic> json) = _$_MsgEdges.fromJson;

  @override
  MsgNode? get node;
  @override
  @JsonKey(ignore: true)
  _$$_MsgEdgesCopyWith<_$_MsgEdges> get copyWith =>
      throw _privateConstructorUsedError;
}

MsgNode _$MsgNodeFromJson(Map<String, dynamic> json) {
  return _MsgNode.fromJson(json);
}

/// @nodoc
mixin _$MsgNode {
  String? get createdAt => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get messageId => throw _privateConstructorUsedError;
  bool? get read => throw _privateConstructorUsedError;
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
      _$MsgNodeCopyWithImpl<$Res, MsgNode>;
  @useResult
  $Res call(
      {String? createdAt,
      String? id,
      String? message,
      String? messageId,
      bool? read,
      String? updatedAt,
      MsgRecipient? recipient,
      MsgRecipient? sender});

  $MsgRecipientCopyWith<$Res>? get recipient;
  $MsgRecipientCopyWith<$Res>? get sender;
}

/// @nodoc
class _$MsgNodeCopyWithImpl<$Res, $Val extends MsgNode>
    implements $MsgNodeCopyWith<$Res> {
  _$MsgNodeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? message = freezed,
    Object? messageId = freezed,
    Object? read = freezed,
    Object? updatedAt = freezed,
    Object? recipient = freezed,
    Object? sender = freezed,
  }) {
    return _then(_value.copyWith(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as MsgRecipient?,
      sender: freezed == sender
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as MsgRecipient?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MsgRecipientCopyWith<$Res>? get recipient {
    if (_value.recipient == null) {
      return null;
    }

    return $MsgRecipientCopyWith<$Res>(_value.recipient!, (value) {
      return _then(_value.copyWith(recipient: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $MsgRecipientCopyWith<$Res>? get sender {
    if (_value.sender == null) {
      return null;
    }

    return $MsgRecipientCopyWith<$Res>(_value.sender!, (value) {
      return _then(_value.copyWith(sender: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MsgNodeCopyWith<$Res> implements $MsgNodeCopyWith<$Res> {
  factory _$$_MsgNodeCopyWith(
          _$_MsgNode value, $Res Function(_$_MsgNode) then) =
      __$$_MsgNodeCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? createdAt,
      String? id,
      String? message,
      String? messageId,
      bool? read,
      String? updatedAt,
      MsgRecipient? recipient,
      MsgRecipient? sender});

  @override
  $MsgRecipientCopyWith<$Res>? get recipient;
  @override
  $MsgRecipientCopyWith<$Res>? get sender;
}

/// @nodoc
class __$$_MsgNodeCopyWithImpl<$Res>
    extends _$MsgNodeCopyWithImpl<$Res, _$_MsgNode>
    implements _$$_MsgNodeCopyWith<$Res> {
  __$$_MsgNodeCopyWithImpl(_$_MsgNode _value, $Res Function(_$_MsgNode) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? createdAt = freezed,
    Object? id = freezed,
    Object? message = freezed,
    Object? messageId = freezed,
    Object? read = freezed,
    Object? updatedAt = freezed,
    Object? recipient = freezed,
    Object? sender = freezed,
  }) {
    return _then(_$_MsgNode(
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      messageId: freezed == messageId
          ? _value.messageId
          : messageId // ignore: cast_nullable_to_non_nullable
              as String?,
      read: freezed == read
          ? _value.read
          : read // ignore: cast_nullable_to_non_nullable
              as bool?,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as String?,
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as MsgRecipient?,
      sender: freezed == sender
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
      required this.read,
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
  final bool? read;
  @override
  final String? updatedAt;
  @override
  final MsgRecipient? recipient;
  @override
  final MsgRecipient? sender;

  @override
  String toString() {
    return 'MsgNode(createdAt: $createdAt, id: $id, message: $message, messageId: $messageId, read: $read, updatedAt: $updatedAt, recipient: $recipient, sender: $sender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MsgNode &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.messageId, messageId) ||
                other.messageId == messageId) &&
            (identical(other.read, read) || other.read == read) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            (identical(other.sender, sender) || other.sender == sender));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, createdAt, id, message,
      messageId, read, updatedAt, recipient, sender);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MsgNodeCopyWith<_$_MsgNode> get copyWith =>
      __$$_MsgNodeCopyWithImpl<_$_MsgNode>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MsgNodeToJson(
      this,
    );
  }
}

abstract class _MsgNode implements MsgNode {
  const factory _MsgNode(
      {required final String? createdAt,
      required final String? id,
      required final String? message,
      required final String? messageId,
      required final bool? read,
      required final String? updatedAt,
      required final MsgRecipient? recipient,
      required final MsgRecipient? sender}) = _$_MsgNode;

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
  bool? get read;
  @override
  String? get updatedAt;
  @override
  MsgRecipient? get recipient;
  @override
  MsgRecipient? get sender;
  @override
  @JsonKey(ignore: true)
  _$$_MsgNodeCopyWith<_$_MsgNode> get copyWith =>
      throw _privateConstructorUsedError;
}

MsgRecipient _$MsgRecipientFromJson(Map<String, dynamic> json) {
  return _MsgRecipient.fromJson(json);
}

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
      _$MsgRecipientCopyWithImpl<$Res, MsgRecipient>;
  @useResult
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
class _$MsgRecipientCopyWithImpl<$Res, $Val extends MsgRecipient>
    implements $MsgRecipientCopyWith<$Res> {
  _$MsgRecipientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
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
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
          ? _value.active
          : active // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_MsgRecipientCopyWith<$Res>
    implements $MsgRecipientCopyWith<$Res> {
  factory _$$_MsgRecipientCopyWith(
          _$_MsgRecipient value, $Res Function(_$_MsgRecipient) then) =
      __$$_MsgRecipientCopyWithImpl<$Res>;
  @override
  @useResult
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
class __$$_MsgRecipientCopyWithImpl<$Res>
    extends _$MsgRecipientCopyWithImpl<$Res, _$_MsgRecipient>
    implements _$$_MsgRecipientCopyWith<$Res> {
  __$$_MsgRecipientCopyWithImpl(
      _$_MsgRecipient _value, $Res Function(_$_MsgRecipient) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
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
    return _then(_$_MsgRecipient(
      city: freezed == city
          ? _value.city
          : city // ignore: cast_nullable_to_non_nullable
              as String?,
      country: freezed == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: freezed == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      id: freezed == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      picture: freezed == picture
          ? _value.picture
          : picture // ignore: cast_nullable_to_non_nullable
              as String?,
      rating: freezed == rating
          ? _value.rating
          : rating // ignore: cast_nullable_to_non_nullable
              as String?,
      userId: freezed == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      state: freezed == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String?,
      active: freezed == active
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
            other is _$_MsgRecipient &&
            (identical(other.city, city) || other.city == city) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.picture, picture) || other.picture == picture) &&
            (identical(other.rating, rating) || other.rating == rating) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.active, active) || other.active == active));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, city, country, firstName, id,
      lastName, picture, rating, userId, state, active);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MsgRecipientCopyWith<_$_MsgRecipient> get copyWith =>
      __$$_MsgRecipientCopyWithImpl<_$_MsgRecipient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MsgRecipientToJson(
      this,
    );
  }
}

abstract class _MsgRecipient implements MsgRecipient {
  const factory _MsgRecipient(
      {required final String? city,
      required final String? country,
      required final String? firstName,
      required final String? id,
      required final String? lastName,
      required final String? picture,
      required final String? rating,
      required final String? userId,
      required final String? state,
      required final bool? active}) = _$_MsgRecipient;

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
  _$$_MsgRecipientCopyWith<_$_MsgRecipient> get copyWith =>
      throw _privateConstructorUsedError;
}
