import 'package:freezed_annotation/freezed_annotation.dart';

part 'all_users.g.dart';

part 'all_users.freezed.dart';

@Freezed()
class AllUsersData with _$AllUsersData {
  const factory AllUsersData({required AllUsers? allUsers}) = _AllUsersData;

  factory AllUsersData.fromJson(Map<String, dynamic> Map) =>
      _$AllUsersDataFromJson(Map);
}

@Freezed()
class AllUsers with _$AllUsers {
  const factory AllUsers({required List<UserEdges>? edges}) = _AllUsers;

  factory AllUsers.fromJson(Map<String, dynamic> userMap) =>
      _$AllUsersFromJson(userMap);


}

@Freezed()
class UserEdges with _$UserEdges {
  const factory UserEdges({
    required UserNode? node,
  }) = _UserEdges;

  factory UserEdges.fromJson(Map<String, dynamic> UserEdgesMap) =>
      _$UserEdgesFromJson(UserEdgesMap);
}

@Freezed()
class UserNode with _$UserNode {
  const factory UserNode({
    required String? city,
    required bool? active,
    required String? country,
    required String? dateJoined,
    required String? dob,
    required String? email,
    required String? firstName,
    required String? gender,
    required int? height,
    required String? id,
    required int? age,
    required bool? isActive,
    required bool? isStaff,
    required bool? isSuperuser,
    required String? lastLogin,
    required String? lastName,
    required int? level,
    required String? phone,
    required String? picture,
    required String? rating,
    required String? state,
    required String? userId,
    required String? aboutMe,
  }) = _UserNode;

  factory UserNode.fromJson(Map<String, dynamic> UserNodeMap) =>
      _$UserNodeFromJson(UserNodeMap);

}
