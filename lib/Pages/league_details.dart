import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/challenges_chat.dart';
import '../Pages/no_internet_page.dart';
import '../bean/league_stat/league_stat.dart';
import '../bean/user_profiles/user_profiles.dart';
import '../components/app_dialog.dart';
import '../components/elevated_buttons.dart';
import '../components/league_detail_tile.dart';
import '../components/league_details_header_tile.dart';
import '../components/league_details_winner_tile.dart';
import '../providers/internet_provider.dart';
import '../providers/league_id_provider.dart';
import '../providers/user_id_provider.dart';
import '../utils/Constants.dart';
import '../utils/Constants.dart' as Constants;
import '../utils/Internet.dart';
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

class _LeagueDetailsState extends State<LeagueDetails>
    with isInternetConnection {
  ScrollController? _scrollController;
  GlobalKey? _stackKey = GlobalKey();
  GlobalKey? _textTitleKey = GlobalKey();
  GlobalKey? _imgLocationKey = GlobalKey();
  GlobalKey? _imgCalendarKey = GlobalKey();
  GlobalKey? _textDescKey = GlobalKey();
  GlobalKey? _textStatusKey = GlobalKey();
  double? _dynamicTotalHeight;
  List<double>? _childWidgetHeights = [];
  List<UserStat>? userStat = [];
  List<String>? errorList;
  String? currentUserId;

  String fetchLeague = Constants.leagueStatus;
  String fetchUsers = Constants.fetchUserProfiles;

  late LeagueStatData? LeagueData;
  bool? isBuildWidgets = false;

  Map<String, dynamic> paramSignIn = {};
  Map<String, dynamic> paramTypeSignIn = {};

  @override
  void initState() {
    initInternet(context);
    _scrollController = ScrollController();
    paramSignIn = {'\$leagueId': 'String', '\$userId': 'String'};
    paramTypeSignIn = {'leagueId': '\$leagueId', 'userId': '\$userId'};

    super.initState();
  }

  Future<dynamic> isJoined() async {
    var contain = null;

    // await getUserId().then((value) {
    contain = userStat?.where(
        (element) => element.userId == SharedPreferencesUtils.getUserId);
    // isContain = contain!.length > 1 ;
    // print('$isContain  -${contain.length}-#- $contain');
    // });
    return contain;
  }

  double _getWidgetHeight(GlobalKey? key) {
    final RenderBox renderBoxRed =
        key?.currentContext?.findRenderObject() as RenderBox;
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
    debugPrint(
        '${LeagueDetails.path} * _childWidgetHeights - $_childWidgetHeights');

    setState(() {
      _dynamicTotalHeight = _dynamicTotalHeight! + kToolbarHeight;
    });

    return _dynamicTotalHeight;
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double? height = (size.height / 2) - 56;
    var scrollPosition;

    // var PassData = ModalRoute.of(context)?.settings.arguments as Node;

    return Consumer<InternetProvider>(
      builder: (context, valueNet, child) {
        print(valueNet.isConnectivity);
        if (valueNet.getConnected != ConnectivityResult.none) {
          return BaseWidget(
            appbar: AppBar(
              centerTitle: true,
              title: Text(''),
              toolbarHeight: 0.0,
            ),
            body: Container(
              color: aWhite,
              child: Consumer<LeagueIdProvider>(
                builder: (context, value, child) {
                  debugPrint(
                      '${LeagueDetails.path} * LeagueId : ${value.leagueId}');
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
                        return const Center(
                            child: CupertinoActivityIndicator());
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
                          WidgetsBinding.instance
                              .addPostFrameCallback(_getTotalHeight);
                        }
                      } catch (e) {
                        debugPrint('${LeagueDetails.path} - Exception -- $e');
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
                                      scrollPosition =
                                          constraints.scrollOffset +
                                              kToolbarHeight;
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
                                        titleTextStyle: TextStyle(
                                            color: height <= scrollPosition
                                                ? Colors.black
                                                : Colors.transparent),
                                        iconTheme: IconThemeData(
                                            color: height <= scrollPosition
                                                ? Colors.black
                                                : Colors.white),
                                        flexibleSpace: FlexibleSpaceBar(
                                          background: LeagueDetailsHeaderTile(
                                            leagueName:
                                                LeagueData!.leagueStat!.name,
                                            leagueStatus:
                                                LeagueData?.leagueStat?.status,
                                            leagueDate: convertDate(
                                                LeagueData
                                                    ?.leagueStat?.startDate,
                                                LeagueData
                                                    ?.leagueStat?.endDate),
                                            leagueDesc: LeagueData
                                                ?.leagueStat?.description,
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
                                          title: height <= scrollPosition
                                              ? Text(participatingPlayer)
                                              : SizedBox(),
                                        ),
                                        expandedHeight: _dynamicTotalHeight,
                                        backgroundColor: Colors.white,
                                      );
                                    },
                                  ),
                                  if (LeagueData!.leagueStat!.status != null &&
                                      LeagueData!.leagueStat!.status!
                                              .toString() !=
                                          'ongoing')
                                    SliverToBoxAdapter(
                                      child: Query(
                                        options: QueryOptions(
                                          document: gql(fetchUsers),
                                          // this is the query string you just created
                                          variables: {
                                            'userId':
                                                '${LeagueData!.leagueStat!.winnerOneId}',
                                            // 'userId': '${LeagueData!.leagueStat!.winnerOneId}',
                                          },
                                          pollInterval: Duration(seconds: 100),
                                        ),
                                        builder: (winnerResult,
                                            {fetchMore, refetch}) {
                                          late UserProfiles? profile;
                                          if (winnerResult.hasException) {
                                            return Text(winnerResult.exception
                                                .toString());
                                          }

                                          if (winnerResult.isLoading) {
                                            return Center(
                                                child:
                                                    CupertinoActivityIndicator());
                                          }

                                          profile = UserProfileData.fromJson(
                                                  winnerResult.data!)
                                              .userProfiles!;

                                          return Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.all(8.0),
                                                child: Text(leagueWinner),
                                              ),

                                              LeagueDetailsWinnerTile(
                                                winnerName:
                                                    '${profile.firstName} ${profile.lastName} ',
                                                winnerLocation:
                                                    '${profile.city}, ${profile.state}',
                                                winnerAge: profile.age,
                                                drawCount: profile.drawCount,
                                                wonCount: profile.wonCount,
                                                matchesCount:
                                                    profile.matchesCount,
                                                lostCount: profile.lostCount,
                                                rate: profile.rating,
                                                winnerProfilePic:
                                                    profile.picture,
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
                                          profileImg: userStat![index].picture,
                                          onTileClick: () {
                                            if (LeagueData!.leagueStat!.status!
                                                    .toLowerCase() ==
                                                'ongoing') {
                                              Provider.of<UserIdProvider>(
                                                      context,
                                                      listen: false)
                                                  .setUserId(
                                                      userStat![index].userId);
                                              Navigator.pushNamed(
                                                  context, ChallengesChat.path);
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
                        ],
                      );
                    },
                  );
                },
              ),
            ),
            bottomBar: FutureBuilder<dynamic>(
              future: isJoined(),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  // print('snapshot.data - ${snapshot.data} -- ${snapshot.data.length}');
                  if (LeagueData!.leagueStat!.status != null &&
                      LeagueData!.leagueStat!.status!.toString() == 'ongoing' &&
                      snapshot.data.length == 0) {
                    return Mutation(
                      options: MutationOptions(
                        document: gql(
                            leagueApplication(paramSignIn, paramTypeSignIn)),
                        // update: update,
                        onError: (OperationException? error) {
                          debugPrint('${LeagueDetails.path} * erroR -- $error');
                          // Text('$error');
                        },
                        // _simpleAlert(context, error.toString()),
                        onCompleted: (dynamic resultData) async {
                          // Text('Thanks for your star!');

                          debugPrint(
                              '${LeagueDetails.path} * Result -- $resultData');

                          if (resultData != null) {
                            var message = resultData['leagueApplication']
                                ['leagueApplication']['message'];

                            errorList = [];
                            errorList!.add(message);
                            _showAlert(LeagueData!.leagueStat!.name!);
                          }
                          // if (resultData != null) {
                          //   _tokenAuthData = TokenAuthData.fromJson(resultData);
                          //   debugPrint('${LeagueDetails.path} * SUCCESS -- ${_tokenAuthData?.tokenAuth?.success}');
                          //   errorList = [];
                          //   if (_tokenAuthData!.tokenAuth!.success!) {
                          //     SharedPreferencesUtils.setEmail(_tokenAuthData?.tokenAuth?.user?.email);
                          //     SharedPreferencesUtils.setToken(_tokenAuthData?.tokenAuth?.token);
                          //     SharedPreferencesUtils.setRefreshToken(_tokenAuthData?.tokenAuth?.refreshToken);
                          //     SharedPreferencesUtils.setUserData(jsonEncode(_tokenAuthData!.tokenAuth?.user));
                          //     SharedPreferencesUtils.setUserId(_tokenAuthData?.tokenAuth?.user?.userId);
                          //
                          //     // Provider.of<TokenProvider>(context, listen: false).setToken(_tokenAuthData?.tokenAuth?.token);
                          //
                          //     if (_tokenAuthData!.tokenAuth!.user!.firstName.toString().isNotEmpty) {
                          //       Navigator.pushNamedAndRemoveUntil(context, DashboardPage.path, (route) => false);
                          //     } else {
                          //       Navigator.pushNamed(context, CreateProfilePage.path);
                          //     }
                          //     // Navigator.pushNamed(context, CreateProfilePage.path);
                          //   } else {
                          //     for (var errData in _tokenAuthData!.tokenAuth!.errors!.nonFieldErrors!) {
                          //       if (errData.message != null) errorList!.add(errData.message);
                          //     }
                          //
                          //     _showAlert();
                          //   }
                          // } else {
                          //   // errorList = [];
                          //   // errorList!.add('Result is Null');
                          //   // _showAlert();
                          // }
                        },
                      ),
                      builder: (RunMutation _signIn, QueryResult? addResult) {
                        final doSignIn = (result) {
                          _signIn(result);
                        };

                        bool? anyLoading = addResult!.isLoading;

                        return ElevatedButtons(
                          width: double.infinity,
                          label: anyLoading ? 'wait' : joinNow,
                          fontSize: 25,
                          radius: 0.0,
                          onClick: () {
                            Map<String, dynamic> passVariable = {
                              'leagueId': Provider.of<LeagueIdProvider>(context,
                                      listen: false)
                                  .leagueId,
                              'userId': SharedPreferencesUtils.getUserId
                            };

                            debugPrint(
                                '${LeagueDetails.path} * param -- $paramSignIn * Type -- $paramTypeSignIn -- Variable -- $passVariable');

                            doSignIn(passVariable);
                          },
                          borderColor: aGreen,
                          buttonColor: aGreen,
                          labelColor: aWhite,
                        );
                      },
                    );
                  } else {
                    return SizedBox(
                      height: 0.0,
                    );
                  }
                }
                return CupertinoActivityIndicator();
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
    _scrollController!.dispose();
    disposeInternet();
    super.dispose();
  }

  _showAlert(String title) async {
    return await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AppDialog(
            title: title,
            body: [
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(errorList![index].toString()),
                  );
                },
                itemCount: errorList!.length,
              )
            ],
            isBtnPositiveAvail: false,
            btnPositiveText: '',
            btnNegativeText: dialogDismiss,
            onNegativeClick: () {
              Navigator.pop(context);
            },
            onPositiveClick: () {
              Navigator.of(context).pop();
            },
          );
        });
  }
}
