// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'send_message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SendMessageData _$$_SendMessageDataFromJson(Map<String, dynamic> json) =>
    _$_SendMessageData(
      sendMessage: json['sendMessage'] == null
          ? null
          : SendMessage.fromJson(json['sendMessage'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SendMessageDataToJson(_$_SendMessageData instance) =>
    <String, dynamic>{
      'sendMessage': instance.sendMessage,
    };

_$_SendMessage _$$_SendMessageFromJson(Map<String, dynamic> json) =>
    _$_SendMessage(
      messaging: json['messaging'] == null
          ? null
          : Messaging.fromJson(json['messaging'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SendMessageToJson(_$_SendMessage instance) =>
    <String, dynamic>{
      'messaging': instance.messaging,
    };

_$_Messaging _$$_MessagingFromJson(Map<String, dynamic> json) => _$_Messaging(
      createdAt: json['createdAt'] as String?,
      id: json['id'] as String?,
      message: json['message'] as String?,
      messageId: json['messageId'] as String?,
      updatedAt: json['updatedAt'] as String?,
      recipient: json['recipient'] == null
          ? null
          : Recipient.fromJson(json['recipient'] as Map<String, dynamic>),
      sender: json['sender'] == null
          ? null
          : Recipient.fromJson(json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MessagingToJson(_$_Messaging instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'id': instance.id,
      'message': instance.message,
      'messageId': instance.messageId,
      'updatedAt': instance.updatedAt,
      'recipient': instance.recipient,
      'sender': instance.sender,
    };

_$_Recipient _$$_RecipientFromJson(Map<String, dynamic> json) => _$_Recipient(
      userId: json['userId'] as String?,
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
    );

Map<String, dynamic> _$$_RecipientToJson(_$_Recipient instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'email': instance.email,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
    };
