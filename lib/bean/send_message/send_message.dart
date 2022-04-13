import 'package:freezed_annotation/freezed_annotation.dart';

import '../all_messaging/all_messaging.dart';


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
    required MsgNode? messaging,
  }) = _SendMessage;

  factory SendMessage.fromJson(Map<String, dynamic> SendMessageMap) => _$SendMessageFromJson(SendMessageMap);
}
