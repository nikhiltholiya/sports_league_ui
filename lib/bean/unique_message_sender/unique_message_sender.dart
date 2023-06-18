import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tenniston/bean/all_users/all_users.dart';
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
  const factory UniqueMessageSenders({required List<ContactsList>? contacts}) = _UniqueMessageSenders;

  factory UniqueMessageSenders.fromJson(Map<String, dynamic> UniqueMessageSendersMap) =>
      _$UniqueMessageSendersFromJson(UniqueMessageSendersMap);
}

@Freezed()
class ContactsList with _$ContactsList {
  const factory ContactsList(
      {required String? city,
      required String? country,
      required String? firstName,
      required String? id,
      required String? lastName,
      required String? picture,
      required String? rating,
      required String? userId,
      required String? state,
      required bool? active}) = _ContactsList;

  factory ContactsList.fromJson(Map<String, dynamic> ContactsListMap) => _$ContactsListFromJson(ContactsListMap);
}
