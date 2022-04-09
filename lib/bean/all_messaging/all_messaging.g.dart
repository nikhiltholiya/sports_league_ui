// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_messaging.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AllMessagingData _$$_AllMessagingDataFromJson(Map<String, dynamic> json) =>
    _$_AllMessagingData(
      allMessaging: json['allMessaging'] == null
          ? null
          : AllMessaging.fromJson(json['allMessaging'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AllMessagingDataToJson(_$_AllMessagingData instance) =>
    <String, dynamic>{
      'allMessaging': instance.allMessaging,
    };

_$_AllMessaging _$$_AllMessagingFromJson(Map<String, dynamic> json) =>
    _$_AllMessaging(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => MsgEdges.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AllMessagingToJson(_$_AllMessaging instance) =>
    <String, dynamic>{
      'edges': instance.edges,
    };

_$_MsgEdges _$$_MsgEdgesFromJson(Map<String, dynamic> json) => _$_MsgEdges(
      node: json['node'] == null
          ? null
          : MsgNode.fromJson(json['node'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MsgEdgesToJson(_$_MsgEdges instance) =>
    <String, dynamic>{
      'node': instance.node,
    };

_$_MsgNode _$$_MsgNodeFromJson(Map<String, dynamic> json) => _$_MsgNode(
      createdAt: json['createdAt'] as String?,
      id: json['id'] as String?,
      message: json['message'] as String?,
      messageId: json['messageId'] as String?,
      updatedAt: json['updatedAt'] as String?,
      recipient: json['recipient'] == null
          ? null
          : MsgRecipient.fromJson(json['recipient'] as Map<String, dynamic>),
      sender: json['sender'] == null
          ? null
          : MsgRecipient.fromJson(json['sender'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_MsgNodeToJson(_$_MsgNode instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'id': instance.id,
      'message': instance.message,
      'messageId': instance.messageId,
      'updatedAt': instance.updatedAt,
      'recipient': instance.recipient,
      'sender': instance.sender,
    };

_$_MsgRecipient _$$_MsgRecipientFromJson(Map<String, dynamic> json) =>
    _$_MsgRecipient(
      city: json['city'] as String?,
      country: json['country'] as String?,
      firstName: json['firstName'] as String?,
      id: json['id'] as String?,
      lastName: json['lastName'] as String?,
      picture: json['picture'] as String?,
      rating: json['rating'] as String?,
      userId: json['userId'] as String?,
      state: json['state'] as String?,
      active: json['active'] as bool?,
    );

Map<String, dynamic> _$$_MsgRecipientToJson(_$_MsgRecipient instance) =>
    <String, dynamic>{
      'city': instance.city,
      'country': instance.country,
      'firstName': instance.firstName,
      'id': instance.id,
      'lastName': instance.lastName,
      'picture': instance.picture,
      'rating': instance.rating,
      'userId': instance.userId,
      'state': instance.state,
      'active': instance.active,
    };
