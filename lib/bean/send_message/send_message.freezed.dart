// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'send_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SendMessageData _$SendMessageDataFromJson(Map<String, dynamic> json) {
  return _SendMessageData.fromJson(json);
}

/// @nodoc
class _$SendMessageDataTearOff {
  const _$SendMessageDataTearOff();

  _SendMessageData call({required SendMessage? sendMessage}) {
    return _SendMessageData(
      sendMessage: sendMessage,
    );
  }

  SendMessageData fromJson(Map<String, Object?> json) {
    return SendMessageData.fromJson(json);
  }
}

/// @nodoc
const $SendMessageData = _$SendMessageDataTearOff();

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
      _$SendMessageDataCopyWithImpl<$Res>;
  $Res call({SendMessage? sendMessage});

  $SendMessageCopyWith<$Res>? get sendMessage;
}

/// @nodoc
class _$SendMessageDataCopyWithImpl<$Res>
    implements $SendMessageDataCopyWith<$Res> {
  _$SendMessageDataCopyWithImpl(this._value, this._then);

  final SendMessageData _value;
  // ignore: unused_field
  final $Res Function(SendMessageData) _then;

  @override
  $Res call({
    Object? sendMessage = freezed,
  }) {
    return _then(_value.copyWith(
      sendMessage: sendMessage == freezed
          ? _value.sendMessage
          : sendMessage // ignore: cast_nullable_to_non_nullable
              as SendMessage?,
    ));
  }

  @override
  $SendMessageCopyWith<$Res>? get sendMessage {
    if (_value.sendMessage == null) {
      return null;
    }

    return $SendMessageCopyWith<$Res>(_value.sendMessage!, (value) {
      return _then(_value.copyWith(sendMessage: value));
    });
  }
}

/// @nodoc
abstract class _$SendMessageDataCopyWith<$Res>
    implements $SendMessageDataCopyWith<$Res> {
  factory _$SendMessageDataCopyWith(
          _SendMessageData value, $Res Function(_SendMessageData) then) =
      __$SendMessageDataCopyWithImpl<$Res>;
  @override
  $Res call({SendMessage? sendMessage});

  @override
  $SendMessageCopyWith<$Res>? get sendMessage;
}

/// @nodoc
class __$SendMessageDataCopyWithImpl<$Res>
    extends _$SendMessageDataCopyWithImpl<$Res>
    implements _$SendMessageDataCopyWith<$Res> {
  __$SendMessageDataCopyWithImpl(
      _SendMessageData _value, $Res Function(_SendMessageData) _then)
      : super(_value, (v) => _then(v as _SendMessageData));

  @override
  _SendMessageData get _value => super._value as _SendMessageData;

  @override
  $Res call({
    Object? sendMessage = freezed,
  }) {
    return _then(_SendMessageData(
      sendMessage: sendMessage == freezed
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
            other is _SendMessageData &&
            const DeepCollectionEquality()
                .equals(other.sendMessage, sendMessage));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(sendMessage));

  @JsonKey(ignore: true)
  @override
  _$SendMessageDataCopyWith<_SendMessageData> get copyWith =>
      __$SendMessageDataCopyWithImpl<_SendMessageData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendMessageDataToJson(this);
  }
}

abstract class _SendMessageData implements SendMessageData {
  const factory _SendMessageData({required SendMessage? sendMessage}) =
      _$_SendMessageData;

  factory _SendMessageData.fromJson(Map<String, dynamic> json) =
      _$_SendMessageData.fromJson;

  @override
  SendMessage? get sendMessage;
  @override
  @JsonKey(ignore: true)
  _$SendMessageDataCopyWith<_SendMessageData> get copyWith =>
      throw _privateConstructorUsedError;
}

SendMessage _$SendMessageFromJson(Map<String, dynamic> json) {
  return _SendMessage.fromJson(json);
}

/// @nodoc
class _$SendMessageTearOff {
  const _$SendMessageTearOff();

  _SendMessage call({required MsgNode? messaging}) {
    return _SendMessage(
      messaging: messaging,
    );
  }

  SendMessage fromJson(Map<String, Object?> json) {
    return SendMessage.fromJson(json);
  }
}

/// @nodoc
const $SendMessage = _$SendMessageTearOff();

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
      _$SendMessageCopyWithImpl<$Res>;
  $Res call({MsgNode? messaging});

  $MsgNodeCopyWith<$Res>? get messaging;
}

/// @nodoc
class _$SendMessageCopyWithImpl<$Res> implements $SendMessageCopyWith<$Res> {
  _$SendMessageCopyWithImpl(this._value, this._then);

  final SendMessage _value;
  // ignore: unused_field
  final $Res Function(SendMessage) _then;

  @override
  $Res call({
    Object? messaging = freezed,
  }) {
    return _then(_value.copyWith(
      messaging: messaging == freezed
          ? _value.messaging
          : messaging // ignore: cast_nullable_to_non_nullable
              as MsgNode?,
    ));
  }

  @override
  $MsgNodeCopyWith<$Res>? get messaging {
    if (_value.messaging == null) {
      return null;
    }

    return $MsgNodeCopyWith<$Res>(_value.messaging!, (value) {
      return _then(_value.copyWith(messaging: value));
    });
  }
}

/// @nodoc
abstract class _$SendMessageCopyWith<$Res>
    implements $SendMessageCopyWith<$Res> {
  factory _$SendMessageCopyWith(
          _SendMessage value, $Res Function(_SendMessage) then) =
      __$SendMessageCopyWithImpl<$Res>;
  @override
  $Res call({MsgNode? messaging});

  @override
  $MsgNodeCopyWith<$Res>? get messaging;
}

/// @nodoc
class __$SendMessageCopyWithImpl<$Res> extends _$SendMessageCopyWithImpl<$Res>
    implements _$SendMessageCopyWith<$Res> {
  __$SendMessageCopyWithImpl(
      _SendMessage _value, $Res Function(_SendMessage) _then)
      : super(_value, (v) => _then(v as _SendMessage));

  @override
  _SendMessage get _value => super._value as _SendMessage;

  @override
  $Res call({
    Object? messaging = freezed,
  }) {
    return _then(_SendMessage(
      messaging: messaging == freezed
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
            other is _SendMessage &&
            const DeepCollectionEquality().equals(other.messaging, messaging));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(messaging));

  @JsonKey(ignore: true)
  @override
  _$SendMessageCopyWith<_SendMessage> get copyWith =>
      __$SendMessageCopyWithImpl<_SendMessage>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SendMessageToJson(this);
  }
}

abstract class _SendMessage implements SendMessage {
  const factory _SendMessage({required MsgNode? messaging}) = _$_SendMessage;

  factory _SendMessage.fromJson(Map<String, dynamic> json) =
      _$_SendMessage.fromJson;

  @override
  MsgNode? get messaging;
  @override
  @JsonKey(ignore: true)
  _$SendMessageCopyWith<_SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}
