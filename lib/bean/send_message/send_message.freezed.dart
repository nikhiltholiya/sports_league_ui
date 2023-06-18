// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'send_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendMessageData _$SendMessageDataFromJson(Map<String, dynamic> json) {
  return _SendMessageData.fromJson(json);
}

/// @nodoc
mixin _$SendMessageData {
  SendMessage? get sendMessage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendMessageDataCopyWith<SendMessageData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageDataCopyWith<$Res> {
  factory $SendMessageDataCopyWith(
          SendMessageData value, $Res Function(SendMessageData) then) =
      _$SendMessageDataCopyWithImpl<$Res, SendMessageData>;
  @useResult
  $Res call({SendMessage? sendMessage});

  $SendMessageCopyWith<$Res>? get sendMessage;
}

/// @nodoc
class _$SendMessageDataCopyWithImpl<$Res, $Val extends SendMessageData>
    implements $SendMessageDataCopyWith<$Res> {
  _$SendMessageDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendMessage = freezed,
  }) {
    return _then(_value.copyWith(
      sendMessage: freezed == sendMessage
          ? _value.sendMessage
          : sendMessage // ignore: cast_nullable_to_non_nullable
              as SendMessage?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $SendMessageCopyWith<$Res>? get sendMessage {
    if (_value.sendMessage == null) {
      return null;
    }

    return $SendMessageCopyWith<$Res>(_value.sendMessage!, (value) {
      return _then(_value.copyWith(sendMessage: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SendMessageDataCopyWith<$Res>
    implements $SendMessageDataCopyWith<$Res> {
  factory _$$_SendMessageDataCopyWith(
          _$_SendMessageData value, $Res Function(_$_SendMessageData) then) =
      __$$_SendMessageDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({SendMessage? sendMessage});

  @override
  $SendMessageCopyWith<$Res>? get sendMessage;
}

/// @nodoc
class __$$_SendMessageDataCopyWithImpl<$Res>
    extends _$SendMessageDataCopyWithImpl<$Res, _$_SendMessageData>
    implements _$$_SendMessageDataCopyWith<$Res> {
  __$$_SendMessageDataCopyWithImpl(
      _$_SendMessageData _value, $Res Function(_$_SendMessageData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sendMessage = freezed,
  }) {
    return _then(_$_SendMessageData(
      sendMessage: freezed == sendMessage
          ? _value.sendMessage
          : sendMessage // ignore: cast_nullable_to_non_nullable
              as SendMessage?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendMessageData implements _SendMessageData {
  const _$_SendMessageData({required this.sendMessage});

  factory _$_SendMessageData.fromJson(Map<String, dynamic> json) =>
      _$$_SendMessageDataFromJson(json);

  @override
  final SendMessage? sendMessage;

  @override
  String toString() {
    return 'SendMessageData(sendMessage: $sendMessage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendMessageData &&
            (identical(other.sendMessage, sendMessage) ||
                other.sendMessage == sendMessage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, sendMessage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendMessageDataCopyWith<_$_SendMessageData> get copyWith =>
      __$$_SendMessageDataCopyWithImpl<_$_SendMessageData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendMessageDataToJson(
      this,
    );
  }
}

abstract class _SendMessageData implements SendMessageData {
  const factory _SendMessageData({required final SendMessage? sendMessage}) =
      _$_SendMessageData;

  factory _SendMessageData.fromJson(Map<String, dynamic> json) =
      _$_SendMessageData.fromJson;

  @override
  SendMessage? get sendMessage;
  @override
  @JsonKey(ignore: true)
  _$$_SendMessageDataCopyWith<_$_SendMessageData> get copyWith =>
      throw _privateConstructorUsedError;
}

SendMessage _$SendMessageFromJson(Map<String, dynamic> json) {
  return _SendMessage.fromJson(json);
}

/// @nodoc
mixin _$SendMessage {
  MsgNode? get messaging => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SendMessageCopyWith<SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SendMessageCopyWith<$Res> {
  factory $SendMessageCopyWith(
          SendMessage value, $Res Function(SendMessage) then) =
      _$SendMessageCopyWithImpl<$Res, SendMessage>;
  @useResult
  $Res call({MsgNode? messaging});

  $MsgNodeCopyWith<$Res>? get messaging;
}

/// @nodoc
class _$SendMessageCopyWithImpl<$Res, $Val extends SendMessage>
    implements $SendMessageCopyWith<$Res> {
  _$SendMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messaging = freezed,
  }) {
    return _then(_value.copyWith(
      messaging: freezed == messaging
          ? _value.messaging
          : messaging // ignore: cast_nullable_to_non_nullable
              as MsgNode?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MsgNodeCopyWith<$Res>? get messaging {
    if (_value.messaging == null) {
      return null;
    }

    return $MsgNodeCopyWith<$Res>(_value.messaging!, (value) {
      return _then(_value.copyWith(messaging: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SendMessageCopyWith<$Res>
    implements $SendMessageCopyWith<$Res> {
  factory _$$_SendMessageCopyWith(
          _$_SendMessage value, $Res Function(_$_SendMessage) then) =
      __$$_SendMessageCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({MsgNode? messaging});

  @override
  $MsgNodeCopyWith<$Res>? get messaging;
}

/// @nodoc
class __$$_SendMessageCopyWithImpl<$Res>
    extends _$SendMessageCopyWithImpl<$Res, _$_SendMessage>
    implements _$$_SendMessageCopyWith<$Res> {
  __$$_SendMessageCopyWithImpl(
      _$_SendMessage _value, $Res Function(_$_SendMessage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? messaging = freezed,
  }) {
    return _then(_$_SendMessage(
      messaging: freezed == messaging
          ? _value.messaging
          : messaging // ignore: cast_nullable_to_non_nullable
              as MsgNode?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SendMessage implements _SendMessage {
  const _$_SendMessage({required this.messaging});

  factory _$_SendMessage.fromJson(Map<String, dynamic> json) =>
      _$$_SendMessageFromJson(json);

  @override
  final MsgNode? messaging;

  @override
  String toString() {
    return 'SendMessage(messaging: $messaging)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendMessage &&
            (identical(other.messaging, messaging) ||
                other.messaging == messaging));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, messaging);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SendMessageCopyWith<_$_SendMessage> get copyWith =>
      __$$_SendMessageCopyWithImpl<_$_SendMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendMessageToJson(
      this,
    );
  }
}

abstract class _SendMessage implements SendMessage {
  const factory _SendMessage({required final MsgNode? messaging}) =
      _$_SendMessage;

  factory _SendMessage.fromJson(Map<String, dynamic> json) =
      _$_SendMessage.fromJson;

  @override
  MsgNode? get messaging;
  @override
  @JsonKey(ignore: true)
  _$$_SendMessageCopyWith<_$_SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
