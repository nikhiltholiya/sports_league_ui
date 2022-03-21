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
  const factory AllUsers({required List<Edges>? edges}) = _AllUsers;

  factory AllUsers.fromJson(Map<String, dynamic> userMap) =>
      _$AllUsersFromJson(userMap);


}

@Freezed()
class Edges with _$Edges {
  const factory Edges({
    required Node? node,
  }) = _Edges;

  factory Edges.fromJson(Map<String, dynamic> edgesMap) =>
      _$EdgesFromJson(edgesMap);
}

@Freezed()
class Node with _$Node {
  const factory Node({
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
    required double? rating,
    required String? state,
    required String? userId,
    required String? aboutMe,
  }) = _Node;

  factory Node.fromJson(Map<String, dynamic> nodeMap) =>
      _$NodeFromJson(nodeMap);

}
