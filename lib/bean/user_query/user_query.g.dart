// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_query.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserQueryData _$$_UserQueryDataFromJson(Map<String, dynamic> json) =>
    _$_UserQueryData(
      userQuery: json['userQuery'] == null
          ? null
          : UserQuery.fromJson(json['userQuery'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserQueryDataToJson(_$_UserQueryData instance) =>
    <String, dynamic>{
      'userQuery': instance.userQuery,
    };

_$_UserQuery _$$_UserQueryFromJson(Map<String, dynamic> json) => _$_UserQuery(
      createdAt: json['createdAt'] as String?,
      message: json['message'] as String?,
      id: json['id'] as String?,
      updatedAt: json['updatedAt'] as String?,
    );

Map<String, dynamic> _$$_UserQueryToJson(_$_UserQuery instance) =>
    <String, dynamic>{
      'createdAt': instance.createdAt,
      'message': instance.message,
      'id': instance.id,
      'updatedAt': instance.updatedAt,
    };
