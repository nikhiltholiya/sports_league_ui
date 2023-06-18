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
      contacts: (json['contacts'] as List<dynamic>?)
          ?.map((e) => ContactsList.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UniqueMessageSendersToJson(
        _$_UniqueMessageSenders instance) =>
    <String, dynamic>{
      'contacts': instance.contacts,
    };

_$_ContactsList _$$_ContactsListFromJson(Map<String, dynamic> json) =>
    _$_ContactsList(
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

Map<String, dynamic> _$$_ContactsListToJson(_$_ContactsList instance) =>
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
