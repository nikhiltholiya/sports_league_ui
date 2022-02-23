import 'package:freezed_annotation/freezed_annotation.dart';

part 'chat_dto.freezed.dart';
part 'chat_dto.g.dart';

//Created on 20220223
@Freezed()
class Chat with _$Chat {
  const factory Chat(
      {required String? message,
      required String? dateTime,
      required bool? isMe}) = _Chat;

  factory Chat.fromJson(Map<String, dynamic> jsonMap) =>
      _$ChatFromJson(jsonMap);
}
