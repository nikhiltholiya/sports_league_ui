import 'package:freezed_annotation/freezed_annotation.dart';

//20230617
part 'unique_message_sender.g.dart';

part 'unique_message_sender.freezed.dart';

@Freezed()
class UniqueMessageData with _$UniqueMessageData {
  const factory UniqueMessageData({required UniqueMessageSenders? uniqueMessageSenders}) = _UniqueMessageData;

  factory UniqueMessageData.fromJson(Map<String, dynamic> allMatchesMap) => _$UniqueMessageDataFromJson(allMatchesMap);
}

@Freezed()
class UniqueMessageSenders with _$UniqueMessageSenders {
  const factory UniqueMessageSenders({required List<Inbox>? inbox}) = _UniqueMessageSenders;

  factory UniqueMessageSenders.fromJson(Map<String, dynamic> UniqueMessageSendersMap) =>
      _$UniqueMessageSendersFromJson(UniqueMessageSendersMap);
}

@Freezed()
class Inbox with _$Inbox {
  const factory Inbox({
    required bool? read,
    required List<User>? user,
  }) = _Inbox;

  factory Inbox.fromJson(Map<String, dynamic> InboxMap) => _$InboxFromJson(InboxMap);
}

@Freezed()
class User with _$User {
  const factory User({
    required String? userId,
    required String? firstName,
    required String? lastName,
    required String? aboutMe,
    required bool? active,
    required String? city,
    required String? email,
    required String? picture,
    required String? phone,
    required String? rating,
    required String? state,
    required String? country,
    required String? id,
    required String? dob,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> UserMap) => _$UserFromJson(UserMap);
}
