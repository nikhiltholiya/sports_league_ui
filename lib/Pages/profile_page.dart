import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/profile_detail_page.dart';
import '../providers/user_id_provider.dart';
import '../utils/shared_preferences_utils.dart';

//Updated on 20220307
class ProfilePage extends StatefulWidget {
  static const String path = 'profilePage';
  static const String profileUser = 'user';
  static const String profileMe = 'me';

  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  // late Future<String?> _futureUserId;

  // Future<String?> getUserIds() async {
  //   return await getUserId().then((value) {
  //     return value;
  //   });
  // }

  @override
  void initState() {
    // _futureUserId = getUserId();
    super.initState();
  }

  var dataRecent;

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      appbar: AppBar(
        centerTitle: true,
        title: Text(''),
        toolbarHeight: 0.0,
      ),
      body: Consumer<UserIdProvider>(
        builder: (context, userId, child) {
          return ProfileDetailPage(
            from:
                userId.getUserId == SharedPreferencesUtils.getUserId ? ProfilePage.profileMe : ProfilePage.profileUser,
          );
        },
      ),
    );
  }
}
