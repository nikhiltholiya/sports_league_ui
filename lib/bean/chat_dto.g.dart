// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Chat _$$_ChatFromJson(Map<String, dynamic> json) => _$_Chat(
      message: json['message'] as String?,
      dateTime: json['dateTime'] as String?,
      isMe: json['isMe'] as bool?,
    );

Map<String, dynamic> _$$_ChatToJson(_$_Chat instance) => <String, dynamic>{
      'message': instance.message,
      'dateTime': instance.dateTime,
      'isMe': instance.isMe,
    };
