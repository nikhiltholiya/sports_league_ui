import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/challenges_chat.dart';
import '../bean/league_stat/league_stat.dart';
import '../bean/user_profiles/user_profiles.dart';
import '../components/elevated_buttons.dart';
import '../components/league_detail_tile.dart';
import '../components/league_details_header_tile.dart';
import '../components/league_details_winner_tile.dart';
import '../providers/league_id_provider.dart';
import '../providers/user_id_provider.dart';
import '../utils/Constants.dart' as Constants;
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/common.dart';
import '../utils/shared_preferences_utils.dart';

//Created on 20220222
class LeagueDetails extends StatefulWidget {
  static const String path = 'leagueDetail';

  const LeagueDetails({Key? key}) : super(key: key);

  @override
  _LeagueDetailsState createState() => _LeagueDetailsState();
}

class _LeagueDetailsState extends State<LeagueDetails> {
  ScrollController? _scrollController;
  GlobalKey? _stackKey = GlobalKey();
  GlobalKey? _textTitleKey = GlobalKey();
  GlobalKey? _imgLocationKey = GlobalKey();
  GlobalKey? _imgCalendarKey = GlobalKey();
  GlobalKey? _textDescKey = GlobalKey();
  GlobalKey? _textStatusKey = GlobalKey();
  double? _dynamicTotalHeight;
  List<double>? _childWidgetHeights = [];
  late List<UserStat>? userStat;
  String? currentUserId;

  String fetchLeague = Constants.leagueStatus;
  String fetchUsers = Constants.fetchUserProfiles;

  late LeagueStatData? LeagueData;
  bool? isBuildWidgets = false;

  @override
  void initState() {
    _scrollController = ScrollController();
    super.initState();
  }

  // late Future<bool?> isJoin;

  Future<dynamic> isJoined() async {
    var contain = null;

    // await getUserId().then((value) {
    contain = userStat?.where((element) => element.userId == SharedPreferencesUtils.getUserId);
    // isContain = contain!.length > 1 ;
    // print('$isContain  -${contain.length}-#- $contain');
    // });
    return contain;
  }

  double _getWidgetHeight(GlobalKey? key) {
    final RenderBox renderBoxRed = key?.currentContext?.findRenderObject() as RenderBox;
    return renderBoxRed.size.height;
  }

  _getTotalHeight(_) {
    _dynamicTotalHeight = 0;
    _childWidgetHeights = [];

    _childWidgetHeights?.add(_getWidgetHeight(_textTitleKey));
    _childWidgetHeights?.add(_getWidgetHeight(_imgLocationKey));
    _childWidgetHeights?.add(_getWidgetHeight(_imgCalendarKey));
    _childWidgetHeights?.add(_getWidgetHeight(_textDescKey));
    _childWidgetHeights?.add(_getWidgetHeight(_textStatusKey));
    _childWidgetHeights?.add(_getWidgetHeight(_stackKey));

    for (double height in _childWidgetHeights!) {
      _dynamicTotalHeight = height + _dynamicTotalHeight!;
    }
    print(_childWidgetHeights);

    setState(() {
      _dynamicTotalHeight = _dynamicTotalHeight! + kToolbarHeight;
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
    var size = MediaQuery.of(context).size;
    double? height = (size.height / 2) - 56;
    var scrollPosition;

    // var PassData = ModalRoute.of(context)?.settings.arguments as Node;

    return BaseWidget(
      appbar: AppBar(
        centerTitle: true,
        title: Text(''),
        toolbarHeight: 0,
      ),
      body: Container(
        color: aWhite,
        child: Consumer<LeagueIdProvider>(
          builder: (context, value, child) {
            print(value.leagueId);
            return Query(
              options: QueryOptions(
                document: gql(fetchLeague),
                // this is the query string you just created
                variables: {
                  'leagueId': '${value.leagueId}',
                },
                pollInterval: Duration(seconds: 100),
              ),
              builder: (result, {fetchMore, refetch}) {
                if (result.hasException) {
                  return Text(result.exception.toString());
                }

                if (result.isLoading && result.data == null) {
                  return const Center(child: CupertinoActivityIndicator());
                }

                try {
                  LeagueData = LeagueStatData.fromJson(result.data!);
                  userStat = [];
                  userStat = LeagueData?.leagueStat?.userStat;

                  // getUserId().then((value) {
                  //   var contain = userStat?.where((element) => element.userId == value);
                  // });

                  if (!isBuildWidgets!) {
                    isBuildWidgets = true;
                    WidgetsBinding.instance?.addPostFrameCallback(_getTotalHeight);
                  }
                } catch (e) {
                  debugPrint('Exception -- $e');
                }

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: CustomScrollView(
                          controller: _scrollController,
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          slivers: <Widget>[
                            SliverLayoutBuilder(
                              builder: (context, constraints) {
                                scrollPosition = constraints.scrollOffset + kToolbarHeight;
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
                                  iconTheme:
                                      IconThemeData(color: height <= scrollPosition ? Colors.black : Colors.white),
                                  flexibleSpace: FlexibleSpaceBar(
                                    background: LeagueDetailsHeaderTile(
                                      playerName: LeagueData!.leagueStat!.name,
                                      leagueStatus: LeagueData?.leagueStat?.status,
                                      leagueDate: convertDate(
                                          LeagueData?.leagueStat?.startDate, LeagueData?.leagueStat?.endDate),
                                      leagueDesc: LeagueData?.leagueStat?.description,
                                      leagueLocation:
                                          '${LeagueData?.leagueStat?.city}, ${LeagueData?.leagueStat?.state}, ${LeagueData?.leagueStat?.country}',
                                      stackKey: _stackKey,
                                      textTitleKey: _textTitleKey,
                                      imgLocationKey: _imgLocationKey,
                                      imgCalendarKey: _imgCalendarKey,
                                      textDescKey: _textDescKey,
                                      textStatusKey: _textStatusKey,
                                    ),
                                    centerTitle: true,
                                    // title: size.height / 2 <= constraints.scrollOffset ? Text('Participating Players') : SizedBox(),
                                    title: height <= scrollPosition ? Text(participatingPlayer) : SizedBox(),
                                  ),
                                  expandedHeight: _dynamicTotalHeight,
                                  backgroundColor: Colors.white,
                                );
                              },
                            ),
                            if (LeagueData!.leagueStat!.status != null &&
                                LeagueData!.leagueStat!.status!.toString() != 'ongoing')
                              SliverToBoxAdapter(
                                child: Query(
                                  options: QueryOptions(
                                    document: gql(fetchUsers),
                                    // this is the query string you just created
                                    variables: {
                                      'userId': '${LeagueData!.leagueStat!.winnerOneId}',
                                      // 'userId': '${LeagueData!.leagueStat!.winnerOneId}',
                                    },
                                    pollInterval: Duration(seconds: 100),
                                  ),
                                  builder: (winnerResult, {fetchMore, refetch}) {
                                    late UserProfiles? profile;
                                    if (winnerResult.hasException) {
                                      return Text(winnerResult.exception.toString());
                                    }

                                    if (winnerResult.isLoading) {
                                      return Center(child: CupertinoActivityIndicator());
                                    }

                                    profile = UserProfileData.fromJson(winnerResult.data!).userProfiles!;

                                    return Column(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.all(8.0),
                                          child: Text(leagueWinner),
                                        ),

                                        LeagueDetailsWinnerTile(
                                          winnerName: '${profile.firstName} ${profile.lastName} ',
                                          winnerLocation: '${profile.city}, ${profile.state}',
                                          winnerAge: profile.age,
                                          drawCount: profile.drawCount,
                                          wonCount: profile.wonCount,
                                          matchesCount: profile.matchesCount,
                                          lostCount: profile.lostCount,
                                        ),
                                        // try {
                                        // LeagueData = LeagueStatData.fromJson(result.data!);
                                        // userStat = [];
                                        // userStat = LeagueData?.leagueStat?.userStat;
                                        // } catch (e) {
                                        // debugPrint('Exception -- $e');
                                        // }

                                        // }
                                      ],
                                    );
                                  },
                                ),
                              ),
                            const SliverToBoxAdapter(
                              child: Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(participatingPlayer),
                              ),
                            ),
                            SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (context, index) {
                                  return LeagueDetailTile(
                                    name: userStat![index].userName,
                                    games: userStat![index].total,
                                    loss: userStat![index].loss,
                                    win: userStat![index].won,
                                    profileImg: 'assets/Ellipse 3.png',
                                    onTileClick: () {
                                      if (LeagueData!.leagueStat!.status!.toLowerCase() == 'ongoing') {
                                        Provider.of<UserIdProvider>(context, listen: false)
                                            .setUserId(userStat![index].userId);
                                        Navigator.pushNamed(context, ChallengesChat.path);
                                      }
                                    },
                                    onProfileClick: () {},
                                  );
                                },
                                childCount: userStat!.length,
                              ),
                            )
                          ],
                        ),
                        flex: 1),
                    FutureBuilder<dynamic>(
                      future: isJoined(),
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          // print('snapshot.data - ${snapshot.data} -- ${snapshot.data.length}');
                          if (LeagueData!.leagueStat!.status != null &&
                              LeagueData!.leagueStat!.status!.toString() == 'ongoing' &&
                              snapshot.data.length == 0) {
                            return ElevatedButtons(
                              width: double.infinity,
                              label: joinNow,
                              fontSize: 25,
                              radius: 0.0,
                              onClick: () {},
                              borderColor: aGreen,
                              buttonColor: aGreen,
                              labelColor: aWhite,
                            );
                          } else {
                            return SizedBox(
                              height: 0.0,
                            );
                          }
                        }
                        return CupertinoActivityIndicator();
                      },
                    )
                  ],
                );
              },
            );
          },
        ),
      ),
    );
  }
}
