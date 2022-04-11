import 'package:freezed_annotation/freezed_annotation.dart';

part 'send_message.freezed.dart';

part 'send_message.g.dart';

@Freezed()
class SendMessageData with _$SendMessageData {
  const factory SendMessageData({
    required SendMessage? sendMessage,
  }) = _SendMessageData;

  factory SendMessageData.fromJson(Map<String, dynamic> SendMessageDataMap) =>
      _$SendMessageDataFromJson(SendMessageDataMap);
}

@Freezed()
class SendMessage with _$SendMessage {
  const factory SendMessage({
    required Messaging? messaging,
  }) = _SendMessage;

  factory SendMessage.fromJson(Map<String, dynamic> SendMessageMap) => _$SendMessageFromJson(SendMessageMap);
}

@Freezed()
class Messaging with _$Messaging {
  const factory Messaging({
    required String? createdAt,
    required String? id,
    required String? message,
    required String? messageId,
    required String? updatedAt,
    required Recipient? recipient,
    required Recipient? sender,
  }) = _Messaging;

  factory Messaging.fromJson(Map<String, dynamic> MessagingMap) => _$MessagingFromJson(MessagingMap);
}

@Freezed()
class Recipient with _$Recipient {
  const factory Recipient({
    required String? userId,
    required String? email,
    required String? firstName,
    required String? lastName,
  }) = _Recipient;

  factory Recipient.fromJson(Map<String, dynamic> RecipientMap) => _$RecipientFromJson(RecipientMap);
}
