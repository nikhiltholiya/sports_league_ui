import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../Pages/all_matches_pages.dart';
import '../Pages/all_messaging_list_page.dart';
import '../Pages/base_activity.dart';
import '../Pages/contact_us_page.dart';
import '../Pages/home_page.dart';
import '../Pages/latest_score_pages.dart';
import '../Pages/my_league_list.dart';
import '../Pages/no_internet_page.dart';
import '../Pages/password_change_page.dart';
import '../Pages/profile_page.dart';
import '../Pages/submit_score_list.dart';
import '../bean/all_users/all_users.dart';
import '../components/app_head_tile.dart';
import '../components/dashboard_drawer_list_tile.dart';
import '../components/dashboard_grid_item.dart';
import '../providers/internet_provider.dart';
import '../providers/league_id_provider.dart';
import '../providers/user_id_provider.dart';
import '../utils/Constants.dart';
import '../utils/Internet.dart';
import '../utils/app_colors.dart';
import '../utils/shared_preferences_utils.dart';

//Changes on 20220225
class DashboardPage extends StatefulWidget {
  static const String path = 'dashboard';

  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage>
    with isInternetConnection {
  Map<String, dynamic> paramRevoke = {};
  Map<String, dynamic> paramTypeRevoke = {};
  var _scKey = GlobalKey<ScaffoldState>();

  // TODO GHOST #
  late RunMutation ghost;
  // var _revokeToken = GlobalKey<MutationState>();

  @override
  void initState() {
    initInternet(context);
    paramRevoke = {'\$refreshToken': 'String!'};
    paramTypeRevoke = {'refreshToken': '\$refreshToken'};
    // SharedPreferencesUtils.setUserId('f44760f3-ce87-41a7-a3ca-e4f5bc3f449a');
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> slidingDrawerItems = [
      {'null': null},
      {'Contact Us': Icons.phone_outlined},
      {'Communication Settings': Icons.settings_outlined},
      {'Sign out': Icons.logout_outlined},
    ];

    List<GridMenuItems>? dashBoardMenuItems = [
      GridMenuItems(
          title: 'My Leagues',
          image: 'transperent_tennis_ball_icon_green.png',
          subtitle: 'Check league status',
          color: Color(0xff31a05f),
          path: MyLeagueList.path),
      // path: LeagueDetails.path),// MenuItems
      GridMenuItems(
          title: 'Submit Score',
          image: 'transperent_tennis_ball_icon_indigo.png',
          subtitle: 'Submit your score',
          color: Color(0xff3e4982),
          path: SubmitScoreList.path),
      GridMenuItems(
          title: 'Matches',
          image: 'transperent_tennis_ball_icon_blue.png',
          subtitle: 'Challenge for match',
          color: Color(0xff345891),
          path: AllMatchesPage.path),
      GridMenuItems(
          title: 'My Profile',
          image: 'transperent_tennis_ball_icon_red.png',
          subtitle: 'Check / edit profile',
          color: Color(0xffeb5945),
          path: ProfilePage.path),
      GridMenuItems(
          title: 'Latest Scores',
          image: 'transperent_tennis_ball_icon_yellow.png',
          subtitle: 'Check latest scores',
          color: Color(0xffd99726),
          path: LatestScorePage.path),
      GridMenuItems(
          title: 'Contact Us',
          image: 'transperent_tennis_ball_icon_black.png',
          subtitle: 'Contact support team',
          color: Color(0xff263238),
          path: ContactUsPage.path),
      GridMenuItems(
          title: 'Messages',
          image: 'transperent_tennis_ball_icon_green.png',
          subtitle: 'Check latest messages',
          color: Color(0xff31a05f),
          path: AllMessagesListPage.path),

      GridMenuItems(
          title: 'Change Password',
          image: 'transperent_tennis_ball_icon_red.png',
          subtitle: 'Change password from here',
          color: Color(0xffeb5945),
          path: PasswordChangePage.path),
    ];

    Map<String, dynamic> param = {
      '\$userId': 'UUID',
    };
    Map<String, dynamic> paramType = {
      'userId': '\$userId',
    };
    Map<String, dynamic> passVariable = {
      'userId': '${SharedPreferencesUtils.getUserId!}'
    };

    // var data = LoggedUser.fromJson(jsonDecode(SharedPreferencesUtils.getUserData.toString()));

    return Consumer<InternetProvider>(
      builder: (context, valueNet, child) {
        print(valueNet.isConnectivity);
        if (valueNet.getConnected != ConnectivityResult.none) {
          return BaseWidget(
            scKey: _scKey,
            appbar: AppBar(),
            isLeading: false,
            appbarHeight: 0.0,
            drawer: slidingDrawer(slidingDrawerItems),
            body: Query(
              options: QueryOptions(
                document: gql(allUsers(param, paramType)),
                // this is the query string you just created
                variables: passVariable,
                pollInterval: Duration(seconds: 100),
              ),
              builder: (result, {fetchMore, refetch}) {
                // print(passVariable);
                if (result.hasException) {
                  return Text(result.exception.toString());
                }

                if (result.isLoading && result.data == null) {
                  return const Center(child: CupertinoActivityIndicator());
                }

                // setLoggedUser(AllUsersData.fromJson(result.data!).allUsers?.edges?.first.node?.toJson().toString());
                // setLoggedUser(jsonEncode(AllUsersData.fromJson(result.data!).allUsers.));

                SharedPreferencesUtils.setUserData(jsonEncode(
                    AllUsersData.fromJson(result.data!)
                        .allUsers
                        ?.edges
                        ?.first
                        .node));

                // print('USER DATA ${SharedPreferencesUtils.getUserData}');
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppHeadTile(
                      isDashboard: true,
                      name: AllUsersData.fromJson(result.data!)
                          .allUsers
                          ?.edges
                          ?.first
                          .node
                          ?.firstName,
                      onMenuClick: () {
                        _scKey.currentState?.openDrawer();
                      },
                      userImage: AllUsersData.fromJson(result.data!)
                          .allUsers
                          ?.edges
                          ?.first
                          .node
                          ?.picture,

                      // onMenuClick: (){
                      //   scKey.currentState?.openEndDrawer();
                      // },
                    ),

                    Flexible(
                      fit: FlexFit.loose,
                      flex: 1,
                      child: Container(
                        color: aWhite,
                        child: GridView.builder(
                          physics: BouncingScrollPhysics(),
                          padding: EdgeInsets.all(10.0),
                          gridDelegate:
                              SliverGridDelegateWithMaxCrossAxisExtent(
                                  maxCrossAxisExtent: 200,
                                  childAspectRatio: 2,
                                  crossAxisSpacing: 10,
                                  mainAxisSpacing: 10),
                          itemCount: dashBoardMenuItems.length,
                          itemBuilder: (BuildContext ctx, index) {
                            return DashboardMenuItem(
                              key: ValueKey(index),
                              menu_color: dashBoardMenuItems[index].color,
                              menu_image: dashBoardMenuItems[index].image,
                              subtitle: dashBoardMenuItems[index].subtitle,
                              title: dashBoardMenuItems[index].title,
                              onMenuClick: () {
                                Provider.of<UserIdProvider>(context,
                                        listen: false)
                                    .setUserId(
                                        SharedPreferencesUtils.getUserId);
                                Provider.of<LeagueIdProvider>(context,
                                        listen: false)
                                    .setLeagueId('');

                                if (dashBoardMenuItems[index].path!.isNotEmpty)
                                  Navigator.pushNamed(context,
                                      dashBoardMenuItems[index].path ?? '');
                              },
                            );
                          },
                        ),
                      ),
                    ),

                    //LOGOUT
                    Mutation(
                      // TODO GHOST #
                      // key: _revokeToken,
                      options: MutationOptions(
                        document:
                            gql(revokeToken(paramRevoke, paramTypeRevoke)),
                        // update: update,
                        onError: (OperationException? error) {
                          debugPrint('${DashboardPage.path} * erroR -- $error');
                          // Text('$error');
                        },
                        // _simpleAlert(context, error.toString()),
                        onCompleted: (dynamic resultData) async {
                          // Text('Thanks for your star!');
                          debugPrint(
                              '${DashboardPage.path} * Result -- $resultData');

                          if (resultData != null) {
                            var data = resultData['revokeToken']['success'];

                            if (data) {
                              SharedPreferencesUtils.dataClear();
                              Navigator.pushNamedAndRemoveUntil(context, HomePage.path,(route) => false,);
                            }
                          } else {
                            // errorList = [];
                            // errorList!.add('Result is Null');
                            // _showAlert();
                          }
                        },
                        // 'Sorry you changed your mind!',
                      ),
                      builder: (RunMutation _signIn, QueryResult? addResult) {
                        ghost = _signIn;
                        final doSignIn = (result) {
                          _signIn(result);
                        };
                        return SizedBox();
                      },
                    )
                  ],
                );
              },
            ),
          );
        } else {
          return NoInternetPage(
            onClick: () {},
          );
        }
      },
    );
  }

  @override
  void dispose() {
    disposeInternet();
    super.dispose();
  }

  Widget slidingDrawer(List<Map<String, dynamic>> slidingDrawerItems) {
    return Drawer(
      backgroundColor: aWhite,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return Divider(
            height: 1,
            color: aPartGray10,
            indent: 10,
            endIndent: 10,
            thickness: 1,
          );
        },
        itemBuilder: (context, index) {
          return index == 0
              ? Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Image.asset('assets/tennis_toon_logo.png',
                      height: 40, alignment: Alignment.centerLeft),
                )
              : DashboardDrawerListTile(
                  onMenuClick: () {
                    switch (index) {
                      case 1:
                        Navigator.popAndPushNamed(context, ContactUsPage.path);
                        break;
                      case 2:
                        Navigator.pop(context);
                        break;
                      case 3:
                        Map<String, dynamic> passVars = {
                          'refreshToken':
                              '${SharedPreferencesUtils.getRefreshToken}'
                        };

                        print(
                            'revoke -$paramRevoke :: $paramTypeRevoke :: $passVars');
                        // TODO GHOST #
                        ghost(passVars);
                        // _revokeToken.currentState?.runMutation(passVars);
                        break;
                    }
                  },
                  menuIcon: slidingDrawerItems[index].values.first,
                  menuName: slidingDrawerItems[index].keys.first,
                );
        },
        itemCount: slidingDrawerItems.length,
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
      ),
      elevation: 10.0,
    );
  }
}

class GridMenuItems {
  final String? title;
  final String? image;
  final String? subtitle;
  final Color? color;
  final String? path;

  GridMenuItems({this.title, this.image, this.subtitle, this.color, this.path});
}
