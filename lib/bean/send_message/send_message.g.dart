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
          : MsgNode.fromJson(json['messaging'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SendMessageToJson(_$_SendMessage instance) =>
    <String, dynamic>{
      'messaging': instance.messaging,
    };
