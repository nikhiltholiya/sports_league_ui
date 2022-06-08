import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../Pages/all_messaging_list_page.dart';
import '../Pages/challenges_chat.dart';
import '../Pages/edit_profile_page.dart';
import '../Pages/head_to_head_page.dart';
import '../Pages/no_internet_page.dart';
import '../Pages/profile_page.dart';
import '../Pages/recent_matches_pages.dart';
import '../Pages/submit_score_details.dart';
import '../bean/all_matches/all_matches.dart';
import '../bean/user_profiles/user_profiles.dart';
import '../components/head_to_head_details_list_tile.dart';
import '../components/head_to_head_list_tile.dart';
import '../components/profile_header_tile.dart';
import '../components/stats_tile.dart';
import '../providers/internet_provider.dart';
import '../providers/user_id_provider.dart';
import '../utils/Constants.dart';
import '../utils/Constants.dart' as Constants;
import '../utils/Internet.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/common.dart';

//Updated on 20220308
class ProfileDetailPage extends StatefulWidget {
  final String? from;

  const ProfileDetailPage({Key? key, required this.from}) : super(key: key);

  @override
  _ProfileDetailPageState createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage> with isInternetConnection {
  String readRepositories = Constants.fetchUserProfiles;

  ScrollController? _scrollController;
  GlobalKey? _stackKey = GlobalKey();
  GlobalKey? _profileImgKey = GlobalKey();
  GlobalKey? _playerNameKey = GlobalKey();
  GlobalKey? _imgLocationKey = GlobalKey();
  GlobalKey? _btnKey = GlobalKey();

  double? _dynamicTotalHeight;
  List<double>? _childWidgetHeights = [];
  bool? isLoaded = false;
  String? userId;
  late AllMatchesData _allMatchesData;

  Map<String, dynamic> param = {};
  Map<String, dynamic> paramType = {};

  @override
  void initState() {
    initInternet(context);
    _scrollController = ScrollController();
    // WidgetsBinding.instance?.addPostFrameCallback(_getTotalHeight);

    param = {'\$userSearch': 'String!'};
    paramType = {'userSearch': '\$userSearch'};

    super.initState();
  }

  double _getWidgetHeight(GlobalKey? key) {
    final RenderBox renderBoxRed = key?.currentContext?.findRenderObject() as RenderBox;
    return renderBoxRed.size.height;
  }

  _getTotalHeight(_) {
    _dynamicTotalHeight = 0;
    _childWidgetHeights = [];

    // _childWidgetHeights!.add(_getWidgetHeight(_stackKey));
    _childWidgetHeights!.add(_getWidgetHeight(_profileImgKey));
    _childWidgetHeights!.add(_getWidgetHeight(_playerNameKey));
    _childWidgetHeights!.add(_getWidgetHeight(_imgLocationKey));
    _childWidgetHeights!.add(_getWidgetHeight(_btnKey));

    for (double height in _childWidgetHeights!) {
      _dynamicTotalHeight = height + _dynamicTotalHeight!;
    }

    // print(_childWidgetHeights);
    setState(() {
      _dynamicTotalHeight = _dynamicTotalHeight! + kToolbarHeight + kToolbarHeight;
    });

    return _dynamicTotalHeight;
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    var size = MediaQuery.of(context).size;
    double? height = (size.height / 2) - 56;
    var scrollPosition;

    debugPrint('Profile Details FROM ${widget.from}');

    // if(ModalRoute.of(context)?.settings.arguments != null) {
    //   _userProfiles = ModalRoute
    //       .of(context)
    //       ?.settings
    //       .arguments as UserProfiles;
    //   userId = _userProfiles?.userId;
    // }

    return Consumer<InternetProvider>(
      builder: (context, valueNet, child) {
        print(valueNet.isConnectivity);
        if (valueNet.getConnected != ConnectivityResult.none) {
          return Consumer<UserIdProvider>(
            builder: (context, userId, child) {
              debugPrint('ProfileDetails * UserId: ${userId.getUserId}');
              return Container(
                  height: mq.height,
                  child: Query(
                    options: QueryOptions(
                      document: gql(readRepositories),
                      // this is the query string you just created
                      variables: {
                        'userId': '${userId.getUserId}',
                      },
                      pollInterval: Duration(seconds: 100),
                    ),
                    builder: (userResult, {fetchMore, refetch}) {
                      late UserProfiles? newProfile;

                      debugPrint('ProfileDetailPage --resp -$userResult');

                      if (userResult.hasException) {
                        return Text(userResult.exception.toString());
                      }

                      if (userResult.isLoading && userResult.data == null) {
                        return const Center(child: CupertinoActivityIndicator());
                      } else {
                        if (!isLoaded!) {
                          isLoaded = true;
                          WidgetsBinding.instance?.addPostFrameCallback(_getTotalHeight);
                        }
                      }

                      try {
                        newProfile = UserProfileData.fromJson(userResult.data!).userProfiles!;
                      } catch (e) {
                        debugPrint('Exception -- $e');
                      }

                      return CustomScrollView(
                        controller: _scrollController,
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        slivers: <Widget>[
                          SliverLayoutBuilder(
                            builder: (context, constraints) {
                              scrollPosition = constraints.scrollOffset + 56;
                              return SliverAppBar(
                                elevation: 0,
                                snap: false,
                                pinned: true,
                                floating: false,
                                stretch: true,
                                centerTitle: true,
                                leading: IconButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  icon: Icon(kIsWeb
                                      ? Icons.arrow_back
                                      : Platform.isIOS
                                          ? Icons.arrow_back_ios
                                          : Icons.arrow_back),
                                ),
                                titleTextStyle:
                                    TextStyle(color: height <= scrollPosition ? Colors.black : Colors.transparent),
                                iconTheme: IconThemeData(color: height <= scrollPosition ? Colors.black : Colors.white),
                                flexibleSpace: FlexibleSpaceBar(
                                  background: ProfileHeaderTile(
                                    playerName: '${newProfile?.firstName} ${newProfile?.lastName}',
                                    playerAge: newProfile?.age,
                                    playerImg: newProfile?.picture,
                                    playerLocation: '${newProfile?.city}, ${newProfile?.state}',
                                    stackKey: _stackKey,
                                    btnKey: _btnKey,
                                    imgLocationKey: _imgLocationKey,
                                    playerNameKey: _playerNameKey,
                                    profileImgKey: _profileImgKey,
                                    btnLeft: widget.from! == ProfilePage.profileMe ? editProfile : chat,
                                    btnRight: widget.from! == ProfilePage.profileMe ? messages : submitScore,
                                    onLeftBtnClick: () {
                                      // Provider.of<ProfilePicProvider>(context, listen: false).setXFile(null);

                                      widget.from! == ProfilePage.profileMe
                                          ? Navigator.pushNamed(context, EditProfilePage.path) // 'EDIT PROFILE'
                                          : Navigator.pushReplacementNamed(context, ChallengesChat.path);
                                      // :Navigator.pushNamedAndRemoveUntil(context,ChallengesChat.path,ModalRoute.withName(LeagueDetails.path));
                                    },
                                    onRightBtnClick: () {
                                      widget.from! == ProfilePage.profileMe
                                          ? Navigator.pushNamed(context, AllMessagesListPage.path) // 'MESSAGES'
                                          :
                                          // Navigator.pushNamedAndRemoveUntil(context,LeagueDetails.path,ModalRoute.withName(DashboardPage.path));
                                          Navigator.pushNamed(context, SubmitScoreDetails.path);
                                    },
                                  ),
                                  centerTitle: true,
                                  // title: size.height / 2 <= constraints.scrollOffset ? Text('Participating Players') : SizedBox(),
                                  title: height <= scrollPosition
                                      ? Text(
                                          '${newProfile?.firstName} ${newProfile?.lastName}',
                                        )
                                      : SizedBox(),
                                ),
                                expandedHeight: _dynamicTotalHeight,
                                // backgroundColor: Colors.white,
                              );
                            },
                          ),

                          // SliverPersistentHeader(delegate: Delegate(aBlack, 'Hello'),pinned: true,),
                          SliverPersistentHeader(
                            pinned: true,
                            floating: false,
                            delegate: Delegate(
                              child: Container(
                                color: aWhite,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    StatsTile(
                                      title: "Matches",
                                      subtitle: '${newProfile?.matchesCount}',
                                    ),
                                    StatsTile(title: "Victories", subtitle: '${newProfile?.wonCount}'),
                                    StatsTile(title: "Defeats", subtitle: '${newProfile?.lostCount}'),
                                    StatsTile(
                                      title: "Rating",
                                      subtitle: '${newProfile?.rating}',
                                    )
                                  ],
                                ),
                              ),
                            ),
                          ),

                          const SliverToBoxAdapter(
                            child: Divider(
                              height: 10,
                              endIndent: 10.0,
                              indent: 10.0,
                              thickness: 0.5,
                              color: aLightGray,
                            ),
                          ),

                          SliverToBoxAdapter(
                            child: Query(
                              options: QueryOptions(
                                document: gql(allMatches(param, paramType)),
                                // this is the query string you just created
                                variables: {
                                  'userSearch': userId.getUserId,
                                  // 'userSearch': '021c2515-e12e-49bd-bc08-744dc64a508c',
                                },
                                pollInterval: Duration(seconds: 100),
                              ),
                              builder: (result, {fetchMore, refetch}) {
                                if (result.hasException) {
                                  return Text(result.exception.toString());
                                }

                                if (result.isLoading) {
                                  return Center(
                                    child: CupertinoActivityIndicator(),
                                  );
                                }

                                _allMatchesData = AllMatchesData.fromJson(result.data!);

                                List<MatchesEdges>? tempMatches = [];
                                if (_allMatchesData.allMatches!.edges!.length > 0) {
                                  tempMatches.add(_allMatchesData.allMatches!.edges![0]);
                                }

                                if (_allMatchesData.allMatches!.edges!.length > 1) {
                                  tempMatches.add(_allMatchesData.allMatches!.edges![1]);
                                }

                                return tempMatches.length > 0
                                    ? Column(
                                        children: [
                                          Padding(
                                            padding: const EdgeInsets.only(left: 16.0, right: 16),
                                            child: Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              children: [
                                                Text(
                                                  "Recent Matches",
                                                  style: GoogleFonts.poppins(fontSize: 16, color: Color(0xff263238)),
                                                ),
                                                GestureDetector(
                                                    onTap: () {
                                                      Navigator.pushNamed(context, RecentMatchesPage.path);
                                                    },
                                                    child: Text("See All"))
                                              ],
                                            ),
                                          ),
                                          for (int i = 0; i < 2; i++)
                                            HeadToHeadDetailsListTile(
                                              title: tempMatches[i].node?.court,
                                              date: convertDate(tempMatches[i].node?.startDate, null),
                                              onProfileClick: () {},
                                              onTileClick: () {},
                                              player1matchScore: [5, 4, 3, 2, 1],
                                              player1Img: tempMatches[i].node?.playerOne?.picture,
                                              player1Name: tempMatches[i].node?.playerOne?.firstName,
                                              player1Active: true,
                                              player2matchScore: [1, 2, 3, 4, 5],
                                              player2Img: tempMatches[i].node?.playerTwo?.picture,
                                              player2Name: tempMatches[i].node?.playerTwo?.firstName,
                                              player2Active: false,
                                            )
                                          // Padding(
                                          //   padding: const EdgeInsets.only(
                                          //       left: 16.0, right: 16, top: 10),
                                          //   child: MatchCard(
                                          //     scores: result.data!["allMatches"]
                                          //     ["edges"][i]["node"]["matchSet"]
                                          //     ["edges"],
                                          //     playerOneName: result.data!["allMatches"]
                                          //     ["edges"][i]["node"]["playerOne"]
                                          //     ["firstName"],
                                          //     playerTwoName: result.data!["allMatches"]
                                          //     ["edges"][i]["node"]["playerTwo"]
                                          //     ["firstName"],
                                          //   ),
                                          // ),
                                        ],
                                      )
                                    : SizedBox();
                              },
                            ),
                          ),

                          //TODO API REMAINS
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: const EdgeInsets.only(left: 16.0, right: 16),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "Head to Heads",
                                    style: GoogleFonts.poppins(fontSize: 16, color: Color(0xff263238)),
                                  ),
                                  GestureDetector(
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (_) => HeadtoHeadpage()));
                                      },
                                      child: Text("See All"))
                                ],
                              ),
                            ),
                          ),

                          for (int i = 0; i <= 5; i++)
                            SliverToBoxAdapter(
                              child: Padding(
                                padding: const EdgeInsets.only(top: 10),
                                child: HeadToHeadListTile(
                                  onTileClick: (){},
                                    onProfileClick: (){},
                                    title: 'CBS Arena',
                                    date: 'Dec 31st 2021',
                                    profileImg: 'assets/Ellipse 5.png',
                                    userName: 'Novak J.',
                                    rating: '4.5'),
                              ),
                            ),
                        ],
                      );
                    },
                  ));
            },
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
    _scrollController!.dispose();
    disposeInternet();
    super.dispose();
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  final Widget? child;

  Delegate({this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child!;
  }

  @override
  double get maxExtent => 90;

  @override
  double get minExtent => 80;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
