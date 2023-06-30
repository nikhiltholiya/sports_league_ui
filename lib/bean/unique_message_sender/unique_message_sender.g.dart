// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'unique_message_sender.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UniqueMessageData _$$_UniqueMessageDataFromJson(Map<String, dynamic> json) =>
    _$_UniqueMessageData(
      uniqueMessageSenders: json['uniqueMessageSenders'] == null
          ? null
          : UniqueMessageSenders.fromJson(
              json['uniqueMessageSenders'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UniqueMessageDataToJson(
        _$_UniqueMessageData instance) =>
    <String, dynamic>{
      'uniqueMessageSenders': instance.uniqueMessageSenders,
    };

_$_UniqueMessageSenders _$$_UniqueMessageSendersFromJson(
        Map<String, dynamic> json) =>
    _$_UniqueMessageSenders(
      inbox: (json['inbox'] as List<dynamic>?)
          ?.map((e) => Inbox.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UniqueMessageSendersToJson(
        _$_UniqueMessageSenders instance) =>
    <String, dynamic>{
      'inbox': instance.inbox,
    };

_$_Inbox _$$_InboxFromJson(Map<String, dynamic> json) => _$_Inbox(
      read: json['read'] as bool?,
      user: (json['user'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_InboxToJson(_$_Inbox instance) => <String, dynamic>{
      'read': instance.read,
      'user': instance.user,
    };

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      userId: json['userId'] as String?,
      firstName: json['firstName'] as String?,
      lastName: json['lastName'] as String?,
      aboutMe: json['aboutMe'] as String?,
      active: json['active'] as bool?,
      city: json['city'] as String?,
      email: json['email'] as String?,
      picture: json['picture'] as String?,
      phone: json['phone'] as String?,
      rating: json['rating'] as String?,
      state: json['state'] as String?,
      country: json['country'] as String?,
      id: json['id'] as String?,
      dob: json['dob'] as String?,
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'userId': instance.userId,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'aboutMe': instance.aboutMe,
      'active': instance.active,
      'city': instance.city,
      'email': instance.email,
      'picture': instance.picture,
      'phone': instance.phone,
      'rating': instance.rating,
      'state': instance.state,
      'country': instance.country,
      'id': instance.id,
      'dob': instance.dob,
    };
