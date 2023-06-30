import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_messaging.g.dart';
part 'all_messaging.freezed.dart';
@Freezed()
class AllMessagingData with _$AllMessagingData {

  const factory AllMessagingData({
    required AllMessaging? allMessaging
  }) = _AllMessagingData;

  factory AllMessagingData.fromJson(Map<String, dynamic> msgDataMap) =>
      _$AllMessagingDataFromJson(msgDataMap);
}


@Freezed()
class AllMessaging with _$AllMessaging {
const factory AllMessaging({
  required List<MsgEdges>? edges
}) = _AllMessaging;
factory AllMessaging.fromJson(Map<String, dynamic> msgMap) => _$AllMessagingFromJson(msgMap);
}

@Freezed()
class MsgEdges with _$MsgEdges{
  const factory MsgEdges({required MsgNode? node}) = _MsgEdges;

  factory MsgEdges.fromJson(Map<String, dynamic> MsgEdgesMap) => _$MsgEdgesFromJson(MsgEdgesMap);
}

@Freezed()
class MsgNode with _$MsgNode{
  const factory MsgNode({
    required String? createdAt,
    required String? id,
    required String? message,
    required String? messageId,
    required bool? read,
    required String? updatedAt,
    required MsgRecipient? recipient,
    required MsgRecipient? sender,
}) = _MsgNode;
  factory MsgNode.fromJson(Map<String,dynamic> MsgNodeMap) => _$MsgNodeFromJson(MsgNodeMap);
}


@Freezed()
class MsgRecipient with _$MsgRecipient{
  const factory MsgRecipient({
    required String? city,
    required String? country,
    required String? firstName,
    required String? id,
    required String? lastName,
    required String? picture,
    required String? rating,
    required String? userId,
    required String? state,
    required bool? active
}) =_MsgRecipient;
  factory MsgRecipient.fromJson(Map<String, dynamic> recMap) => _$MsgRecipientFromJson(recMap);
}