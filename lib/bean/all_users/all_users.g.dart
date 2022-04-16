// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'all_users.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AllUsersData _$$_AllUsersDataFromJson(Map<String, dynamic> json) =>
    _$_AllUsersData(
      allUsers: json['allUsers'] == null
          ? null
          : AllUsers.fromJson(json['allUsers'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_AllUsersDataToJson(_$_AllUsersData instance) =>
    <String, dynamic>{
      'allUsers': instance.allUsers,
    };

_$_AllUsers _$$_AllUsersFromJson(Map<String, dynamic> json) => _$_AllUsers(
      edges: (json['edges'] as List<dynamic>?)
          ?.map((e) => UserEdges.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_AllUsersToJson(_$_AllUsers instance) =>
    <String, dynamic>{
      'edges': instance.edges,
    };

_$_UserEdges _$$_UserEdgesFromJson(Map<String, dynamic> json) => _$_UserEdges(
      node: json['node'] == null
          ? null
          : UserNode.fromJson(json['node'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserEdgesToJson(_$_UserEdges instance) =>
    <String, dynamic>{
      'node': instance.node,
    };

_$_UserNode _$$_UserNodeFromJson(Map<String, dynamic> json) => _$_UserNode(
      userId: json['userId'] as String?,
      aboutMe: json['aboutMe'] as String?,
      active: json['active'] as bool?,
      city: json['city'] as String?,
      country: json['country'] as String?,
      dateJoined: json['dateJoined'] as String?,
      deleted: json['deleted'] as bool?,
      email: json['email'] as String?,
      dob: json['dob'] as String?,
      firstName: json['firstName'] as String?,
      gender: json['gender'] as String?,
      isActive: json['isActive'] as bool?,
      id: json['id'] as String?,
      isStaff: json['isStaff'] as bool?,
      lastLogin: json['lastLogin'] as String?,
      lastName: json['lastName'] as String?,
      phone: json['phone'] as String?,
      picture: json['picture'] as String?,
      rating: json['rating'] as String?,
      state: json['state'] as String?,
    );

Map<String, dynamic> _$$_UserNodeToJson(_$_UserNode instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'aboutMe': instance.aboutMe,
      'active': instance.active,
      'city': instance.city,
      'country': instance.country,
      'dateJoined': instance.dateJoined,
      'deleted': instance.deleted,
      'email': instance.email,
      'dob': instance.dob,
      'firstName': instance.firstName,
      'gender': instance.gender,
      'isActive': instance.isActive,
      'id': instance.id,
      'isStaff': instance.isStaff,
      'lastLogin': instance.lastLogin,
      'lastName': instance.lastName,
      'phone': instance.phone,
      'picture': instance.picture,
      'rating': instance.rating,
      'state': instance.state,
    };
