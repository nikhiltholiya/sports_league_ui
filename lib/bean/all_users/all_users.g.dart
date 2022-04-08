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
      city: json['city'] as String?,
      active: json['active'] as bool?,
      country: json['country'] as String?,
      dateJoined: json['dateJoined'] as String?,
      dob: json['dob'] as String?,
      email: json['email'] as String?,
      firstName: json['firstName'] as String?,
      gender: json['gender'] as String?,
      height: json['height'] as int?,
      id: json['id'] as String?,
      age: json['age'] as int?,
      isActive: json['isActive'] as bool?,
      isStaff: json['isStaff'] as bool?,
      isSuperuser: json['isSuperuser'] as bool?,
      lastLogin: json['lastLogin'] as String?,
      lastName: json['lastName'] as String?,
      level: json['level'] as int?,
      phone: json['phone'] as String?,
      picture: json['picture'] as String?,
      rating: json['rating'] as String?,
      state: json['state'] as String?,
      userId: json['userId'] as String?,
      aboutMe: json['aboutMe'] as String?,
    );

Map<String, dynamic> _$$_UserNodeToJson(_$_UserNode instance) =>
    <String, dynamic>{
      'city': instance.city,
      'active': instance.active,
      'country': instance.country,
      'dateJoined': instance.dateJoined,
      'dob': instance.dob,
      'email': instance.email,
      'firstName': instance.firstName,
      'gender': instance.gender,
      'height': instance.height,
      'id': instance.id,
      'age': instance.age,
      'isActive': instance.isActive,
      'isStaff': instance.isStaff,
      'isSuperuser': instance.isSuperuser,
      'lastLogin': instance.lastLogin,
      'lastName': instance.lastName,
      'level': instance.level,
      'phone': instance.phone,
      'picture': instance.picture,
      'rating': instance.rating,
      'state': instance.state,
      'userId': instance.userId,
      'aboutMe': instance.aboutMe,
    };
