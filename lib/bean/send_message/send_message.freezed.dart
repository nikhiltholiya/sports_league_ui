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

  _SendMessage call({required Messaging? messaging}) {
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
  Messaging? get messaging => throw _privateConstructorUsedError;

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
  $Res call({Messaging? messaging});

  $MessagingCopyWith<$Res>? get messaging;
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
              as Messaging?,
    ));
  }

  @override
  $MessagingCopyWith<$Res>? get messaging {
    if (_value.messaging == null) {
      return null;
    }

    return $MessagingCopyWith<$Res>(_value.messaging!, (value) {
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
  $Res call({Messaging? messaging});

  @override
  $MessagingCopyWith<$Res>? get messaging;
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
              as Messaging?,
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
  final Messaging? messaging;

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
  const factory _SendMessage({required Messaging? messaging}) = _$_SendMessage;

  factory _SendMessage.fromJson(Map<String, dynamic> json) =
      _$_SendMessage.fromJson;

  @override
  Messaging? get messaging;
  @override
  @JsonKey(ignore: true)
  _$SendMessageCopyWith<_SendMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

Messaging _$MessagingFromJson(Map<String, dynamic> json) {
  return _Messaging.fromJson(json);
}

/// @nodoc
class _$MessagingTearOff {
  const _$MessagingTearOff();

  _Messaging call(
      {required String? createdAt,
      required String? id,
      required String? message,
      required String? messageId,
      required String? updatedAt,
      required Recipient? recipient,
      required Recipient? sender}) {
    return _Messaging(
      createdAt: createdAt,
      id: id,
      message: message,
      messageId: messageId,
      updatedAt: updatedAt,
      recipient: recipient,
      sender: sender,
    );
  }

  Messaging fromJson(Map<String, Object?> json) {
    return Messaging.fromJson(json);
  }
}

/// @nodoc
const $Messaging = _$MessagingTearOff();

/// @nodoc
mixin _$Messaging {
  String? get createdAt => throw _privateConstructorUsedError;
  String? get id => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  String? get messageId => throw _privateConstructorUsedError;
  String? get updatedAt => throw _privateConstructorUsedError;
  Recipient? get recipient => throw _privateConstructorUsedError;
  Recipient? get sender => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MessagingCopyWith<Messaging> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MessagingCopyWith<$Res> {
  factory $MessagingCopyWith(Messaging value, $Res Function(Messaging) then) =
      _$MessagingCopyWithImpl<$Res>;
  $Res call(
      {String? createdAt,
      String? id,
      String? message,
      String? messageId,
      String? updatedAt,
      Recipient? recipient,
      Recipient? sender});

  $RecipientCopyWith<$Res>? get recipient;
  $RecipientCopyWith<$Res>? get sender;
}

/// @nodoc
class _$MessagingCopyWithImpl<$Res> implements $MessagingCopyWith<$Res> {
  _$MessagingCopyWithImpl(this._value, this._then);

  final Messaging _value;
  // ignore: unused_field
  final $Res Function(Messaging) _then;

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
              as Recipient?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Recipient?,
    ));
  }

  @override
  $RecipientCopyWith<$Res>? get recipient {
    if (_value.recipient == null) {
      return null;
    }

    return $RecipientCopyWith<$Res>(_value.recipient!, (value) {
      return _then(_value.copyWith(recipient: value));
    });
  }

  @override
  $RecipientCopyWith<$Res>? get sender {
    if (_value.sender == null) {
      return null;
    }

    return $RecipientCopyWith<$Res>(_value.sender!, (value) {
      return _then(_value.copyWith(sender: value));
    });
  }
}

/// @nodoc
abstract class _$MessagingCopyWith<$Res> implements $MessagingCopyWith<$Res> {
  factory _$MessagingCopyWith(
          _Messaging value, $Res Function(_Messaging) then) =
      __$MessagingCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? createdAt,
      String? id,
      String? message,
      String? messageId,
      String? updatedAt,
      Recipient? recipient,
      Recipient? sender});

  @override
  $RecipientCopyWith<$Res>? get recipient;
  @override
  $RecipientCopyWith<$Res>? get sender;
}

/// @nodoc
class __$MessagingCopyWithImpl<$Res> extends _$MessagingCopyWithImpl<$Res>
    implements _$MessagingCopyWith<$Res> {
  __$MessagingCopyWithImpl(_Messaging _value, $Res Function(_Messaging) _then)
      : super(_value, (v) => _then(v as _Messaging));

  @override
  _Messaging get _value => super._value as _Messaging;

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
    return _then(_Messaging(
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
              as Recipient?,
      sender: sender == freezed
          ? _value.sender
          : sender // ignore: cast_nullable_to_non_nullable
              as Recipient?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Messaging implements _Messaging {
  const _$_Messaging(
      {required this.createdAt,
      required this.id,
      required this.message,
      required this.messageId,
      required this.updatedAt,
      required this.recipient,
      required this.sender});

  factory _$_Messaging.fromJson(Map<String, dynamic> json) =>
      _$$_MessagingFromJson(json);

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
  final Recipient? recipient;
  @override
  final Recipient? sender;

  @override
  String toString() {
    return 'Messaging(createdAt: $createdAt, id: $id, message: $message, messageId: $messageId, updatedAt: $updatedAt, recipient: $recipient, sender: $sender)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Messaging &&
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
  _$MessagingCopyWith<_Messaging> get copyWith =>
      __$MessagingCopyWithImpl<_Messaging>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MessagingToJson(this);
  }
}

abstract class _Messaging implements Messaging {
  const factory _Messaging(
      {required String? createdAt,
      required String? id,
      required String? message,
      required String? messageId,
      required String? updatedAt,
      required Recipient? recipient,
      required Recipient? sender}) = _$_Messaging;

  factory _Messaging.fromJson(Map<String, dynamic> json) =
      _$_Messaging.fromJson;

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
  Recipient? get recipient;
  @override
  Recipient? get sender;
  @override
  @JsonKey(ignore: true)
  _$MessagingCopyWith<_Messaging> get copyWith =>
      throw _privateConstructorUsedError;
}

Recipient _$RecipientFromJson(Map<String, dynamic> json) {
  return _Recipient.fromJson(json);
}

/// @nodoc
class _$RecipientTearOff {
  const _$RecipientTearOff();

  _Recipient call(
      {required String? userId,
      required String? email,
      required String? firstName,
      required String? lastName}) {
    return _Recipient(
      userId: userId,
      email: email,
      firstName: firstName,
      lastName: lastName,
    );
  }

  Recipient fromJson(Map<String, Object?> json) {
    return Recipient.fromJson(json);
  }
}

/// @nodoc
const $Recipient = _$RecipientTearOff();

/// @nodoc
mixin _$Recipient {
  String? get userId => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $RecipientCopyWith<Recipient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RecipientCopyWith<$Res> {
  factory $RecipientCopyWith(Recipient value, $Res Function(Recipient) then) =
      _$RecipientCopyWithImpl<$Res>;
  $Res call(
      {String? userId, String? email, String? firstName, String? lastName});
}

/// @nodoc
class _$RecipientCopyWithImpl<$Res> implements $RecipientCopyWith<$Res> {
  _$RecipientCopyWithImpl(this._value, this._then);

  final Recipient _value;
  // ignore: unused_field
  final $Res Function(Recipient) _then;

  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_value.copyWith(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$RecipientCopyWith<$Res> implements $RecipientCopyWith<$Res> {
  factory _$RecipientCopyWith(
          _Recipient value, $Res Function(_Recipient) then) =
      __$RecipientCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? userId, String? email, String? firstName, String? lastName});
}

/// @nodoc
class __$RecipientCopyWithImpl<$Res> extends _$RecipientCopyWithImpl<$Res>
    implements _$RecipientCopyWith<$Res> {
  __$RecipientCopyWithImpl(_Recipient _value, $Res Function(_Recipient) _then)
      : super(_value, (v) => _then(v as _Recipient));

  @override
  _Recipient get _value => super._value as _Recipient;

  @override
  $Res call({
    Object? userId = freezed,
    Object? email = freezed,
    Object? firstName = freezed,
    Object? lastName = freezed,
  }) {
    return _then(_Recipient(
      userId: userId == freezed
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      firstName: firstName == freezed
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String?,
      lastName: lastName == freezed
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Recipient implements _Recipient {
  const _$_Recipient(
      {required this.userId,
      required this.email,
      required this.firstName,
      required this.lastName});

  factory _$_Recipient.fromJson(Map<String, dynamic> json) =>
      _$$_RecipientFromJson(json);

  @override
  final String? userId;
  @override
  final String? email;
  @override
  final String? firstName;
  @override
  final String? lastName;

  @override
  String toString() {
    return 'Recipient(userId: $userId, email: $email, firstName: $firstName, lastName: $lastName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Recipient &&
            const DeepCollectionEquality().equals(other.userId, userId) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.firstName, firstName) &&
            const DeepCollectionEquality().equals(other.lastName, lastName));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userId),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(firstName),
      const DeepCollectionEquality().hash(lastName));

  @JsonKey(ignore: true)
  @override
  _$RecipientCopyWith<_Recipient> get copyWith =>
      __$RecipientCopyWithImpl<_Recipient>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_RecipientToJson(this);
  }
}

abstract class _Recipient implements Recipient {
  const factory _Recipient(
      {required String? userId,
      required String? email,
      required String? firstName,
      required String? lastName}) = _$_Recipient;

  factory _Recipient.fromJson(Map<String, dynamic> json) =
      _$_Recipient.fromJson;

  @override
  String? get userId;
  @override
  String? get email;
  @override
  String? get firstName;
  @override
  String? get lastName;
  @override
  @JsonKey(ignore: true)
  _$RecipientCopyWith<_Recipient> get copyWith =>
      throw _privateConstructorUsedError;
}
