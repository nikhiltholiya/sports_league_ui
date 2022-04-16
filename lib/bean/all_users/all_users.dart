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
    required String? userId,
    required String? aboutMe,
    required bool? active,
    required String? city,
    required String? country,
    required String? dateJoined,
    required bool? deleted,
    required String? email,
    required String? dob,
    required String? firstName,
    required String? gender,
    required bool? isActive,
    required String? id,
    required bool? isStaff,
    required String? lastLogin,
    required String? lastName,
    required String? phone,
    required String? picture,
    required String? rating,
    required String? state,

  }) = _UserNode;

  factory UserNode.fromJson(Map<String, dynamic> UserNodeMap) =>
      _$UserNodeFromJson(UserNodeMap);

}
