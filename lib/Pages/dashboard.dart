import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import '../components/bordered_circle_avatar.dart';

import '../Pages/base_activity.dart';
import '../Pages/my_league_list.dart';
import '../Pages/profile_page.dart';
import '../Pages/submit_score_list.dart';
import '../bean/all_users/all_users.dart';
import '../components/dashboard_menu_item.dart';
import '../components/decorated_app_header_tile.dart';
import '../providers/user_id_provider.dart';
import '../utils/Constants.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/shared_preferences_utils.dart';

//Changes on 20220225
class DashboardPage extends StatefulWidget {
  static const String path = 'dashboard';

  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> with SharedPrefUtils {
  var scKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    setUserId('021c2515-e12e-49bd-bc08-744dc64a508c');
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
          path: ''),
    ];

    Map<String, dynamic> param = {
      '\$userId': 'UUID',
    };
    Map<String, dynamic> paramType = {
      'userId': '\$userId',
    };
    Map<String, dynamic> passVariable = {'userId': '021c2515-e12e-49bd-bc08-744dc64a508c'};


    return BaseWidget(
      scaffoldKey: scKey,
      appbar: AppBar(),
      appbarHeight: 0.0,
      body: Query(
        options: QueryOptions(
          document: gql(allUsers(param, paramType)),
          // this is the query string you just created
          variables:passVariable,
          pollInterval: Duration(seconds: 100),
        ),
        builder: (result, {fetchMore, refetch}) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          if (result.isLoading && result.data == null) {
            return const Center(child: CupertinoActivityIndicator());
          }

          // setLoggedUser(AllUsersData.fromJson(result.data!).allUsers?.edges?.first.node?.toJson().toString());
          setLoggedUser(jsonEncode(AllUsersData.fromJson(result.data!)));

          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              dashboardHeader(name: AllUsersData.fromJson(result.data!).allUsers?.edges?.first.node?.firstName,),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 10),
                child: Text(
                  explore,
                  style: TextStyle(color: aLightGray, fontSize: 16),
                ),
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
                        maxCrossAxisExtent: 200,
                        childAspectRatio: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10),
                    itemCount: dashBoardMenuItems.length,
                    itemBuilder: (BuildContext ctx, index) {
                      return DashboardMenuItem(
                        menu_color: dashBoardMenuItems[index].color,
                        menu_image: dashBoardMenuItems[index].image,
                        subtitle: dashBoardMenuItems[index].subtitle,
                        title: dashBoardMenuItems[index].title,
                        onMenuClick: () {
                          getUserId().then((value) => Provider.of<UserIdProvider>(context,listen: false).setUserId(value));

                          if (dashBoardMenuItems[index].path!.isNotEmpty)
                            Navigator.pushNamed(
                                context, dashBoardMenuItems[index].path ?? '');
                        },
                      );
                    },
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}

class dashboardHeader extends StatelessWidget {
  final String? name;
  final String? userImage;
  const dashboardHeader({Key? key, this.name, this.userImage}) : super(key: key);

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
