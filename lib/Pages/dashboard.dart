import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../Pages/all_messaging_list_page.dart';
import '../Pages/base_activity.dart';
import '../Pages/contact_us_page.dart';
import '../Pages/my_league_list.dart';
import '../Pages/password_change_page.dart';
import '../Pages/profile_page.dart';
import '../Pages/submit_score_list.dart';
import '../bean/token_auth/token_auth.dart';
import '../components/bordered_circle_avatar.dart';
import '../components/dashboard_menu_item.dart';
import '../components/decorated_app_header_tile.dart';
import '../providers/league_id_provider.dart';
import '../providers/user_id_provider.dart';
import '../utils/app_colors.dart';
import '../utils/shared_preferences_utils.dart';

//Changes on 20220225
class DashboardPage extends StatefulWidget {
  static const String path = 'dashboard';

  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  var scKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<MenuItems>? dashBoardMenuItems = [
      MenuItems(
          title: 'My Leagues',
          image: 'transperent_tennis_ball_icon_green.png',
          subtitle: 'Check league status',
          color: Color(0xff31a05f),
          path: MyLeagueList.path),
      // path: LeagueDetails.path),// MenuItems
      MenuItems(
          title: 'Submit Score',
          image: 'transperent_tennis_ball_icon_indigo.png',
          subtitle: 'Submit your score',
          color: Color(0xff3e4982),
          path: SubmitScoreList.path),
      MenuItems(
          title: 'Matches',
          image: 'transperent_tennis_ball_icon_blue.png',
          subtitle: 'Challenge for match',
          color: Color(0xff345891),
          path: ''),
      MenuItems(
          title: 'My Profile',
          image: 'transperent_tennis_ball_icon_red.png',
          subtitle: 'Check / edit profile',
          color: Color(0xffeb5945),
          path: ProfilePage.path),
      MenuItems(
          title: 'Latest Scores',
          image: 'transperent_tennis_ball_icon_yellow.png',
          subtitle: 'Check latest scores',
          color: Color(0xffd99726),
          path: ''),
      MenuItems(
          title: 'Contact Us',
          image: 'transperent_tennis_ball_icon_black.png',
          subtitle: 'Contact support team',
          color: Color(0xff263238),
          path: ContactUsPage.path),

      MenuItems(
          title: 'Messages',
          image: 'transperent_tennis_ball_icon_green.png',
          subtitle: 'Check latest messages',
          color: Color(0xff31a05f),
          path: AllMessagesListPage.path),

      MenuItems(
          title: 'Change Password',
          image: 'transperent_tennis_ball_icon_red.png',
          subtitle: 'User can able to change password from here',
          color: Color(0xffeb5945),
          path: PasswordChangePage.path),
    ];

    // Map<String, dynamic> param = {
    //   '\$userId': 'UUID',
    // };
    // Map<String, dynamic> paramType = {
    //   'userId': '\$userId',
    // };
    // Map<String, dynamic> passVariable = {'userId': '${SharedPreferencesUtils.getUserId!}'};

    var data = LoggedUser.fromJson(jsonDecode(SharedPreferencesUtils.getUserData.toString()));

    return BaseWidget(
      scaffoldKey: scKey,
      appbar: AppBar(),
      isLeading: false,
      appbarHeight: 0.0,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          dashboardHeader(
            name: data.firstName,
          ),
          Flexible(
            fit: FlexFit.loose,
            flex: 1,
            child: Container(
              color: aWhite,
              child: GridView.builder(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.all(10.0),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200, childAspectRatio: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
                itemCount: dashBoardMenuItems.length,
                itemBuilder: (BuildContext ctx, index) {
                  return DashboardMenuItem(
                    menu_color: dashBoardMenuItems[index].color,
                    menu_image: dashBoardMenuItems[index].image,
                    subtitle: dashBoardMenuItems[index].subtitle,
                    title: dashBoardMenuItems[index].title,
                    onMenuClick: () {
                      Provider.of<UserIdProvider>(context, listen: false).setUserId(SharedPreferencesUtils.getUserId);
                      Provider.of<LeagueIdProvider>(context, listen: false).setLeagueId('');

                      if (dashBoardMenuItems[index].path!.isNotEmpty)
                        Navigator.pushNamed(context, dashBoardMenuItems[index].path ?? '');
                    },
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class dashboardHeader extends StatelessWidget {
  final String? name;
  final String? userImage;

  const dashboardHeader({Key? key, this.name = 'user', this.userImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DecoratedAppHeader(height: 200),
        Positioned(
          top: 50,
          left: 20,
          child: RichText(
              text: TextSpan(children: <TextSpan>[
            TextSpan(
              text: "Hello,\n",
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: aWhite,
              ),
            ),
            TextSpan(
              text: name,
              style: GoogleFonts.poppins(
                fontSize: 26,
                color: aWhite,
              ),
            ),
          ])),
        ),
        Positioned(
          top: 50,
          right: 20,
          child: BorderedCircleAvatar(radius: 40, path: 'assets/Ellipse 5.png'),
        )
      ],
    );
  }
}

class MenuItems {
  final String? title;
  final String? image;
  final String? subtitle;
  final Color? color;
  final String? path;

  MenuItems({this.title, this.image, this.subtitle, this.color, this.path});
}
