import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../Pages/challenges_chat.dart';
import '../Pages/head_to_head_page.dart';
import '../Pages/profile_page.dart';
import '../Pages/recent_matches_pages.dart';
import '../Pages/submit_score_details.dart';
import '../bean/user_profiles/user_profiles.dart';
import '../components/head_to_head_details_list_tile.dart';
import '../components/head_to_head_list_tile.dart';
import '../components/profile_header_tile.dart';
import '../components/stats_tile.dart';
import '../providers/user_id_provider.dart';
import '../utils/Constants.dart' as Constants;
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';

//Updated on 20220308
class ProfileDetailPage extends StatefulWidget {
  final String? from;

  const ProfileDetailPage({Key? key, required this.from}) : super(key: key);

  @override
  _ProfileDetailPageState createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage> {
  String readRepositories = Constants.fetchUserProfiles;
  var dataRecent;

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

  @override
  void initState() {
    _scrollController = ScrollController();
    // WidgetsBinding.instance?.addPostFrameCallback(_getTotalHeight);
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

    print(_childWidgetHeights);
    setState(() {
      _dynamicTotalHeight = _dynamicTotalHeight! + kToolbarHeight + kToolbarHeight;
    });

    return _dynamicTotalHeight;
  }

  @override
  void dispose() {
    _scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    var size = MediaQuery.of(context).size;
    double? height = (size.height / 2) - 56;
    var scrollPosition;

    print('Profile Details FROM ${widget.from}');

    // if(ModalRoute.of(context)?.settings.arguments != null) {
    //   _userProfiles = ModalRoute
    //       .of(context)
    //       ?.settings
    //       .arguments as UserProfiles;
    //   userId = _userProfiles?.userId;
    // }

    return Consumer<UserIdProvider>(
      builder: (context, userId, child) {
        print(userId.getUserId);
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
                              icon: Icon(Icons.arrow_back)),
                          titleTextStyle:
                              TextStyle(color: height <= scrollPosition ? Colors.black : Colors.transparent),
                          iconTheme: IconThemeData(color: height <= scrollPosition ? Colors.black : Colors.white),
                          flexibleSpace: FlexibleSpaceBar(
                            background: ProfileHeaderTile(
                              playerName: '${newProfile?.firstName} ${newProfile?.lastName}',
                              playerAge: newProfile?.age,
                              playerImg: 'assets/Ellipse 1.png',
                              playerLocation: '${newProfile?.city}, ${newProfile?.state}',
                              stackKey: _stackKey,
                              btnKey: _btnKey,
                              imgLocationKey: _imgLocationKey,
                              playerNameKey: _playerNameKey,
                              profileImgKey: _profileImgKey,
                              btnLeft: widget.from! == ProfilePage.profileMe ? editProfile : chat,
                              btnRight: widget.from! == ProfilePage.profileMe ? messages : submitScore,
                              onLeftBtnClick: () {
                                widget.from! == ProfilePage.profileMe
                                    ? print('EDIT PROFILE')
                                    : Navigator.pushReplacementNamed(context, ChallengesChat.path);
                                // :Navigator.pushNamedAndRemoveUntil(context,ChallengesChat.path,ModalRoute.withName(LeagueDetails.path));
                              },
                              onRightBtnClick: () {
                                widget.from! == ProfilePage.profileMe
                                    ? print('MESSAGES')
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
                                subtitle: "4.5",
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
                      child: Padding(
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
                    ),

                    SliverToBoxAdapter(
                      child: Query(
                        builder: (result, {fetchMore, refetch}) {
                          if (result.hasException) {
                            return Text(result.exception.toString());
                          }

                          if (result.isLoading) {
                            return Text('Loading');
                          }
                          dataRecent = result.data;
                          return Column(
                            children: [
                              for (int i = 0; i < 2; i++)
                                HeadToHeadDetailsListTile(
                                  title: 'CBS Arena',
                                  date: 'Dec 31st 2021',
                                  onProfileClick: () {},
                                  onTileClick: () {},
                                  player1matchScore: [5, 4, 3, 2, 1],
                                  player1Img: 'assets/Ellipse 5.png',
                                  player1Name: result.data!["allMatches"]["edges"][i]["node"]["playerOne"]["firstName"],
                                  player1Active: true,
                                  player2matchScore: [1, 2, 3, 4, 5],
                                  player2Img: 'assets/Ellipse 2.png',
                                  player2Name: result.data!["allMatches"]["edges"][i]["node"]["playerTwo"]["firstName"],
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
                          );
                        },
                        options: QueryOptions(
                          document: gql(Constants.matchesQuery),
                          // this is the query string you just created
                          variables: {
                            'userSearch': userId.getUserId,
                          },
                          pollInterval: Duration(seconds: 100),
                        ),
                      ),
                    ),

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
