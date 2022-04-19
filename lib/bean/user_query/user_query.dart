import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_query.g.dart';
part 'user_query.freezed.dart';

@Freezed()
class UserQueryData with _$UserQueryData{
  const factory UserQueryData({
    required UserQuery? userQuery
  }) =_UserQueryData;

  factory UserQueryData.fromJson(Map<String, dynamic> queryMap) => _$UserQueryDataFromJson(queryMap);
}

@Freezed()
class UserQuery with _$UserQuery{
  const factory UserQuery({
    required String? createdAt,
    required String? message,
    required String? id,
    required String? updatedAt,
  }) =_UserQuery;

  factory UserQuery.fromJson(Map<String, dynamic> queryMap) => _$UserQueryFromJson(queryMap);
}