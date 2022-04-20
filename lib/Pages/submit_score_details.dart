import 'dart:convert';
import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../bean/all_league_Applications/all_leagues_applications.dart';
import '../bean/all_users/all_users.dart';
import '../components/app_chips.dart';
import '../components/drop_down_view.dart';
import '../components/edit_text_form_field.dart';
import '../components/elevated_buttons.dart';
import '../components/set_details_list_tile.dart';
import '../components/submit_score_details_header_tile.dart';
import '../providers/league_id_provider.dart';
import '../providers/user_id_provider.dart';
import '../utils/Constants.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/common.dart';
import '../utils/shared_preferences_utils.dart';

//Created on 20220315
class SubmitScoreDetails extends StatefulWidget {
  static const String path = 'submitScoreDetails';

  const SubmitScoreDetails({Key? key}) : super(key: key);

  @override
  _SubmitScoreDetailsState createState() => _SubmitScoreDetailsState();
}

class _SubmitScoreDetailsState extends State<SubmitScoreDetails> {
  ScrollController? _scrollController;
  GlobalKey? _stackKey = GlobalKey();
  GlobalKey? _userKey = GlobalKey();

  // var _scKey = GlobalKey<ScaffoldState>();

  double? _dynamicTotalHeight = 0;
  List<double>? _childWidgetHeights = [];
  var scrollPosition;
  int setListSize = 3;

  late List<Map<String, dynamic>> setList;
  late List<String?> player1Sets;
  late List<String?> player2Sets;
  late List<String?> tie1;
  late List<String?> tie2;

  List<UserNode?> players = [];
  List<bool?> selectedPlayer = [];
  List<String?> displayPlayer = [];

  List<String?> gameType = ['Single', 'Double'];
  List<bool?> selectedGameType = [];

  List<String?> matchStatus = ['Completed', 'Retire', 'Draw'];
  List<bool?> selectedMatchStatus = [];

  late List<Map<String, dynamic>>? passingParam = [];

  // late Future<AllUsersData> _userData;
  late UserNode player1;
  late UserNode player2;
  String? matchDate;
  String? matchTime;
  String? matchCourtName = '';
  String? LeagueId = '';
  String? LeagueName = '';
  String? matchWinnerName = '';
  String? matchWinnerId = '';
  String? matchGameType = '';
  String? matchGameStatus = '';

  List<LeagueEdges>? _leaguesList;

  FocusNode? _chatNode;
  late String? dropDownValue = null;

  bool? isLoaded = false;

  double _getWidgetHeight(GlobalKey? key) {
    final RenderBox renderBoxRed = key?.currentContext?.findRenderObject() as RenderBox;
    return renderBoxRed.size.height;
  }

  // Future<AllUsersData> getAllUserData() async {
  //   return await getLoggedUser()
  //       .then((value) => AllUsersData.fromJson(jsonDecode(value!)));
  // }

  _getTotalHeight(_) {
    _dynamicTotalHeight = 0;
    _childWidgetHeights = [];

    _childWidgetHeights?.add(_getWidgetHeight(_userKey));
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

  Map<String, dynamic> paramSubmitScore = {
    '\$passParam': 'MatchInput!',
  };
  Map<String, dynamic> paramTypeSubmitScore = {
    'submitScore': '\$passParam',
  };
  Map<String, dynamic> passVariableSubmitScore = {};

  @override
  void initState() {
    // _userData = getAllUserData();
    _chatNode = FocusNode();
    _scrollController = ScrollController();

    player1Sets = [];
    player2Sets = [];
    tie1 = [];
    tie2 = [];
    for (int i = 0; i < setListSize; i++) {
      player1Sets.add('0');
      player2Sets.add('0');
      tie1.add('0');
      tie2.add('0');
    }

    player1 = UserNode.fromJson(jsonDecode(SharedPreferencesUtils.getUserData!));

    debugPrint('${SubmitScoreDetails.path} * Player 1 - $player1');
    super.initState();
  }

  @override
  void dispose() {
    _chatNode?.dispose();
    _scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('${SubmitScoreDetails.path} * matchGameType -- ${matchGameType} -- $selectedGameType');
    return BaseWidget(
      // key: _scKey,
      appbarHeight: 0.0,
      appbar: Text(
        submitScore,
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
      body: Container(
        color: aWhite,
        child: Consumer<UserIdProvider>(
          builder: (context, value, child) {
            Map<String, dynamic> param = {
              '\$userId': 'UUID',
            };
            Map<String, dynamic> paramType = {
              'userId': '\$userId',
            };

            Map<String, dynamic> passVariable = {'userId': '${value.getUserId}'};

            return Query(
              options: QueryOptions(
                document: gql(allUsers(param, paramType)),
                // this is the query string you just created
                variables: passVariable,
                pollInterval: Duration(seconds: 100),
              ),
              builder: (result, {fetchMore, refetch}) {
                if (result.hasException) {
                  return Text(result.exception.toString());
                }

                if (result.isLoading && result.data == null) {
                  return const Center(child: CupertinoActivityIndicator());
                }

                // player2 = UserNode.fromJson(jsonDecode(data));
                player2 = AllUsersData.fromJson(result.data!).allUsers!.edges!.first.node!;

                if (!isLoaded!) {
                  isLoaded = true;
                  WidgetsBinding.instance?.addPostFrameCallback(_getTotalHeight);

                  players = [];
                  selectedPlayer = [];
                  displayPlayer = [];
                  players.add(player1);
                  players.add(player2);

                  for (var data in players) displayPlayer.add(data?.firstName);

                  // players.add(
                  //     player1.allUsers?.edges?.first.node?.firstName);
                  // players.add(
                  //     player2.allUsers?.edges?.first.node?.firstName);
                  for (int i = 0; i < players.length; i++) selectedPlayer.add(false);

                  selectedGameType = [];
                  for (int i = 0; i < gameType.length; i++) selectedGameType.add(false);

                  selectedMatchStatus = [];
                  for (int i = 0; i < matchStatus.length; i++) selectedMatchStatus.add(false);
                }
                return CustomScrollView(
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
                            icon: Icon(kIsWeb
                                ? Icons.arrow_back
                                : Platform.isIOS
                                    ? Icons.arrow_back_ios
                                    : Icons.arrow_back),
                          ),
                          titleTextStyle: TextStyle(
                              color: _dynamicTotalHeight! <= scrollPosition ? Colors.black : Colors.transparent),
                          iconTheme: IconThemeData(
                              color: _dynamicTotalHeight! <= scrollPosition ? Colors.black : Colors.white),
                          flexibleSpace: FlexibleSpaceBar(
                            background: SubmitScoreDetailsHeaderTile(
                              stackKey: _stackKey,
                              userKey: _userKey,
                              player1Img: 'assets/Ellipse 3.png',
                              player1Name: player1.firstName,
                              player2Img: 'assets/Ellipse 1.png',
                              player2Name: player2.firstName,
                            ),
                            centerTitle: true,
                            // title: size.height / 2 <= constraints.scrollOffset ? Text('Participating Players') : SizedBox(),
                            title: _dynamicTotalHeight! <= scrollPosition ? Text(submitScore) : SizedBox(),
                          ),
                          expandedHeight: _dynamicTotalHeight,
                          backgroundColor: Colors.white,
                        );
                      },
                    ),
                    SliverToBoxAdapter(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Text(
                              gameDetail,
                              style: TextStyle(color: aLightGray, fontWeight: FontWeight.bold, fontSize: 16.0),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, bottom: 5),
                              child: Text(
                                matchWinner,
                                style: TextStyle(color: aLightGray, fontSize: 12.0, fontWeight: FontWeight.bold),
                              ),
                            ),

                            chips(displayPlayer, selectedPlayer),

                            Padding(
                              padding: const EdgeInsets.only(top: 20, bottom: 5),
                              child: Text(
                                matchDateTime,
                                style: TextStyle(color: aLightGray, fontSize: 12.0, fontWeight: FontWeight.bold),
                              ),
                            ),
                            Wrap(
                              crossAxisAlignment: WrapCrossAlignment.center,
                              alignment: WrapAlignment.start,
                              children: [
                                AppChip(
                                  iconData: Icons.calendar_today,
                                  isAvatar: true,
                                  isChipActive: false,
                                  Label: convertDate(matchDate ?? DateTime.now().toString(), null),
                                  onChipTap: () {
                                    DatePicker.showDatePicker(
                                      context,
                                      theme: DatePickerTheme(
                                        backgroundColor: aWhite,
                                        itemStyle: TextStyle(color: aLightGray),
                                      ),
                                      showTitleActions: true,
                                      minTime:
                                          DateTime(DateTime.now().year - 5, DateTime.now().month, DateTime.now().day),
                                      maxTime: DateTime.now(),
                                      onChanged: (date) {
                                        debugPrint('${SubmitScoreDetails.path}  * change $date');
                                      },
                                      onConfirm: (date) {
                                        matchDate = date.toString();
                                        setState(() {});
                                        debugPrint('${SubmitScoreDetails.path}  * confirm $date');
                                      },
                                      currentTime: datePickerDate(matchDate ?? DateTime.now().toString()),
                                    );
                                  },
                                ),
                                AppChip(
                                  iconData: Icons.access_time,
                                  isAvatar: true,
                                  isChipActive: false,
                                  Label: convertTime(matchTime ?? DateTime.now().toString(), null),
                                  onChipTap: () {
                                    DatePicker.showTime12hPicker(
                                      context,
                                      theme: DatePickerTheme(
                                        backgroundColor: aWhite,
                                        itemStyle: TextStyle(color: aLightGray),
                                      ),
                                      showTitleActions: true,
                                      onChanged: (date) {
                                        debugPrint('${SubmitScoreDetails.path}  * changeTime $date');
                                      },
                                      onConfirm: (date) {
                                        matchTime = date.toString();
                                        setState(() {});
                                        debugPrint('${SubmitScoreDetails.path}  * confirmTime $date');
                                      },
                                      currentTime: datePickerTime(matchTime ?? DateTime.now().toString()),
                                    );
                                  },
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, bottom: 5),
                              child: Text(
                                matchCourt,
                                style: TextStyle(color: aLightGray, fontSize: 12.0, fontWeight: FontWeight.bold),
                              ),
                            ),
                            // DropDownView(
                            //   cityList: [
                            //     'Portland, Oregon',
                            //     'Los Angeles, California',
                            //     'Atlanta, Georgia'
                            //   ],
                            //   hint: matchCourt,
                            //   dropdownValue: dropDownValue,
                            //   onValueChange: (value) {
                            //     dropDownValue = value;
                            //     // final split = value.split(',');
                            //     // selectedCity = split![0].toString().trim();
                            //     // selectedState = split![1].toString().trim();
                            //   },
                            // ),

                            EditTextFormField(
                              onTap: () {},
                              hint: matchCourt,
                              onTextChange: (value) {
                                matchCourtName = value;
                              },
                              suffixIcon: Icon(Icons.arrow_drop_down_sharp),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, bottom: 5),
                              child: Text(
                                gameTypeLabel,
                                style: TextStyle(color: aLightGray, fontSize: 12.0, fontWeight: FontWeight.bold),
                              ),
                            ),
                            chips(gameType, selectedGameType),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, bottom: 5),
                              child: Text(
                                status,
                                style: TextStyle(color: aLightGray, fontSize: 12.0, fontWeight: FontWeight.bold),
                              ),
                            ),
                            chips(matchStatus, selectedMatchStatus),
                            Padding(
                              padding: const EdgeInsets.only(top: 20, bottom: 5),
                              child: Text(
                                leagueOpt,
                                style: TextStyle(color: aLightGray, fontSize: 12.0, fontWeight: FontWeight.bold),
                              ),
                            ),

                            // DropDownView(
                            //   cityList: [],
                            //   hint: leagueOpt,
                            //   dropdownValue: dropDownValue,
                            //   onValueChange: (value) {
                            //     dropDownValue = value;
                            //     // final split = value.split(',');
                            //     // selectedCity = split![0].toString().trim();
                            //     // selectedState = split![1].toString().trim();
                            //   },
                            // ),

                            Query(
                              options: QueryOptions(
                                document: gql(
                                  allLeagueApplicationsQuery({
                                    '\$applicant_UserId': 'UUID',
                                    '\$status': 'String!',
                                    '\$league_Status': 'String!',
                                  }, {
                                    'applicant_UserId': '\$applicant_UserId',
                                    'status': '\$status',
                                    'league_Status': '\$league_Status',
                                  }),
                                ),
                                variables: {
                                  'applicant_UserId': '${player1.userId}',
                                  'status': 'approved',
                                  'league_Status': 'ongoing',
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

                                AllLeaguesApps allLeaguesApps = AllLeaguesApps.fromJson(result.data!);

                                _leaguesList = [];
                                _leaguesList = allLeaguesApps.allLeagueApplications?.edges;

                                List<String>? leagueListTemp = [];
                                for (var data in _leaguesList!) {
                                  leagueListTemp.add(data.node!.league!.name!);
                                }

                                var exist = _leaguesList!.where((LeagueEdges) =>
                                    _leaguesList?.first.node?.league?.leagueId! ==
                                    Provider.of<LeagueIdProvider>(context, listen: false).getLeagueId);

                                return Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 5),
                                  child: DropDownView(
                                    dropList: leagueListTemp,
                                    hint: exist.isEmpty ? leagueOptHint : exist.first.node!.league!.name!,
                                    dropdownValue: dropDownValue,
                                    onValueChange: (value) {
                                      dropDownValue = value;

                                      var data = _leaguesList!.where((element) => element.node?.league?.name == value);
                                      // print('Selected -- $data');
                                      // print('Selected -- ${data.first.node?.league?.leagueId}');

                                      Provider.of<LeagueIdProvider>(context, listen: false)
                                          .setLeagueId(data.first.node?.league?.leagueId);

                                      // final split = value.split(',');
                                      // selectedCity = split![0].toString().trim();
                                      // selectedState = split![1].toString().trim();
                                    },
                                  ),
                                );
                              },
                            ),

                            // Query(
                            //   options: QueryOptions(
                            //     document: gql(fetChCourts),
                            //     pollInterval: Duration(seconds: 100),
                            //   ),
                            //   builder: (resultLeague,
                            //       {fetchMore, refetch}) {
                            //     if (resultLeague.hasException) {
                            //       return Text(
                            //           resultLeague.exception.toString());
                            //     }
                            //
                            //     if (resultLeague.isLoading &&
                            //         resultLeague.data == null) {
                            //       return const Center(
                            //           child:
                            //               CupertinoActivityIndicator());
                            //     }
                            //     print(resultLeague.data!);
                            //
                            //     AllLeaguesData leagueData =
                            //         AllLeaguesData.fromJson(
                            //             resultLeague.data!);
                            //
                            //     _leaguesList = [];
                            //     _leaguesList =
                            //         leagueData.allLeagues!.edges!;
                            //
                            //     List<String>? leagueListTemp = [];
                            //     for (var data in _leaguesList!) {
                            //       leagueListTemp.add(data.node!.name!);
                            //     }
                            //
                            //     var exist = _leaguesList!.where(
                            //         (LeagueEdges) =>
                            //             _leaguesList
                            //                 ?.first.node?.leagueId! ==
                            //             Provider.of<LeagueIdProvider>(
                            //                     context,
                            //                     listen: false)
                            //                 .getLeagueId);
                            //
                            //     return Padding(
                            //       padding: const EdgeInsets.symmetric(
                            //           horizontal: 5),
                            //       child: DropDownView(
                            //         dropList: leagueListTemp,
                            //         hint: exist.isEmpty
                            //             ? leagueOptHint
                            //             : exist.first.node!.name,
                            //         dropdownValue: dropDownValue,
                            //         onValueChange: (value) {
                            //           dropDownValue = value;
                            //
                            //           var data = _leaguesList!.where(
                            //               (element) =>
                            //                   element.node?.name ==
                            //                   value);
                            //           print('Selected -- $data');
                            //           print(
                            //               'Selected -- ${data.first.node?.leagueId}');
                            //
                            //           Provider.of<LeagueIdProvider>(
                            //                   context,
                            //                   listen: false)
                            //               .setLeagueId(
                            //                   data.first.node?.leagueId);
                            //
                            //           // final split = value.split(',');
                            //           // selectedCity = split![0].toString().trim();
                            //           // selectedState = split![1].toString().trim();
                            //         },
                            //       ),
                            //     );
                            //
                            //     // return AutoCompleteEditField(
                            //     //   listOptions: leagueListTemp,
                            //     //   hint: exist.isEmpty
                            //     //       ? leagueOptHint
                            //     //       : exist.first.node!.name,
                            //     //   onSelection: (value, pos) {
                            //     //     Provider.of<LeagueIdProvider>(context,
                            //     //             listen: false)
                            //     //         .setLeagueId(_leaguesList![pos]
                            //     //             .node!
                            //     //             .leagueId);
                            //     //   },
                            //     // );
                            //   },
                            // ),

                            Padding(
                              padding: const EdgeInsets.only(top: 30, bottom: 10),
                              child: Text(
                                setDetails,
                                style: TextStyle(color: aLightGray, fontWeight: FontWeight.bold, fontSize: 16.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SliverPadding(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      sliver: SliverList(
                        delegate: SliverChildBuilderDelegate(
                          (context, index) => SetDetailsListTile(
                            setName: 'Set ${index + 1}',
                            player1Name: player1.firstName,
                            player2Name: player2.firstName,
                            player1Score: (value) {
                              player1Sets.setAll(index, [value]);
                              // print('$index - $value');
                            },
                            player1Controller: TextEditingController(text: player1Sets[index]),
                            player2Score: (value) {
                              player2Sets.setAll(index, [value]);
                              // print('$index - $value');
                            },
                            player2Controller: TextEditingController(text: player2Sets[index]),
                            tieBreak1: (value) {
                              tie1.setAll(index, [value]);
                              // print('$index - $value');
                            },
                            tie1Controller: TextEditingController(text: tie1[index]),
                            tieBreak2: (value) {
                              tie2.setAll(index, [value]);
                              // print('$index - $value');
                            },
                            tie2Controller: TextEditingController(text: tie2[index]),
                          ),
                          childCount: setListSize,
                        ),
                      ),
                    ),
                    SliverToBoxAdapter(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          player1Sets.length < 5
                              ? Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButtons(
                                    fontSize: 14,
                                    borderColor: aLightGray,
                                    buttonColor: aWhite,
                                    labelColor: aLightGray,
                                    onClick: () {
                                      if (player1Sets.length < 5) {
                                        setState(() {
                                          player1Sets.add('0');
                                          player2Sets.add('0');
                                          tie1.add('0');
                                          tie2.add('0');
                                          setListSize = setListSize + 1;
                                        });
                                      }
                                    },
                                    label: addMoreSets,
                                  ),
                                )
                              : SizedBox(),

                          // Map<String, dynamic> param = {
                          //   '\$submitScore': 'MatchInput!',
                          // };
                          // Map<String, dynamic> paramType = {
                          //   '$submitScore': '\$passParam',
                          // };
                          // Map<String, dynamic> passVariable = {'passParam': passMap};
                          Mutation(
                            options: MutationOptions(
                              document: gql(SubmitScore(paramSubmitScore, paramTypeSubmitScore)),
                              // update: update,
                              onError: (OperationException? error) {
                                debugPrint('${SubmitScoreDetails.path}  * erroR -- $error');
                                // Text('$error');
                              },
                              // _simpleAlert(context, error.toString()),
                              onCompleted: (dynamic resultData) {
                                // Text('Thanks for your star!');
                                debugPrint('${SubmitScoreDetails.path}  * Result -- $resultData');

                                _showMyDialog(submitSuccess);
                              },
                              // 'Sorry you changed your mind!',
                            ),
                            builder: (RunMutation _submitScore, QueryResult? addResult) {
                              final submitScoreApi = (result) {
                                _submitScore(result);
                              };

                              final anyLoading = addResult!.isLoading;

                              return ElevatedButtons(
                                borderColor: aGreen,
                                buttonColor: aGreen,
                                labelColor: aWhite,
                                fontSize: 16,
                                onClick: () {
                                  matchGameStatus = selectedMatchStatus.contains(true)
                                      ? matchStatus[selectedMatchStatus.indexOf(true)].toString().trim().toLowerCase()
                                      : '';
                                  matchWinnerName = selectedPlayer.contains(true)
                                      ? displayPlayer[selectedPlayer.indexOf(true)].toString().trim().toLowerCase()
                                      : '';
                                  matchGameType = selectedGameType.contains(true)
                                      ? gameType[selectedGameType.indexOf(true)].toString().trim().toLowerCase()
                                      : '';

                                  debugPrint(
                                      '${SubmitScoreDetails.path}  * matchGameStatus : $matchGameStatus ** matchWinnerName : $matchWinnerName ** matchGameType : $matchGameType');

                                  if (matchGameStatus!.isEmpty)
                                    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                      content: Text(errStatus),
                                    ));

                                  if (matchGameStatus != 'draw' && matchWinnerName!.isEmpty) {
                                    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                      content: Text(errPlayer),
                                    ));
                                  }

                                  if (matchGameType!.isEmpty)
                                    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                      content: Text(errGame),
                                    ));

                                  if (Provider.of<LeagueIdProvider>(context, listen: false).getLeagueId! == '')
                                    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                                      content: Text(errLeague),
                                    ));

                                  Map<String, dynamic> passMap = {
                                    'court': matchCourtName ?? '',
                                    'endDate': convertDateYYYYMMDD(matchDate ?? DateTime.now().toString(), null),
                                    'startDate': convertDateYYYYMMDD(matchDate ?? DateTime.now().toString(), null),
                                    'league': Provider.of<LeagueIdProvider>(context, listen: false).getLeagueId,
                                    'matchStatus': matchGameStatus,
                                    'format': matchGameType,
                                    'playerOneId': player1.userId ?? '',
                                    'playerTwoId': player2.userId ?? '',
                                    'winnerOne':
                                        matchGameStatus != 'draw' ? players[selectedPlayer.indexOf(true)]?.userId : '',
                                    for (int i = 0; i < player1Sets.length; i++)
                                      'set${i + 1}': {
                                        'playerOneScore': int.parse(player1Sets[i] ?? '0'),
                                        'playerOneTbScore': int.parse(tie1[i] ?? '0'),
                                        'playerTwoScore': int.parse(player2Sets[i] ?? '0'),
                                        'playerTwoTbScore': int.parse(tie2[i] ?? '0')
                                      }
                                  };

                                  // var resBody = {};
                                  // resBody['passParam'] = passMap;

                                  passVariableSubmitScore = {'passParam': passMap};

                                  debugPrint('${SubmitScoreDetails.path}  * passMap $passMap');
                                  submitScoreApi(passVariableSubmitScore);
                                },
                                label: anyLoading ? 'wait' : submit,
                                width: double.infinity,
                                radius: 0.0,
                              );
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            );
            // FutureBuilder<AllUsersData>(
            //   future: _userData,
            //   builder: (context, snapshot) {
            //     if (snapshot.hasData) {
            //       player1 = snapshot.data!;
            //
            //       return ;
            //     }
            //
            //     return const Center(child: CupertinoActivityIndicator());
            //   },
            // );
          },
        ),
      ),
    );
  }

  Widget chips(List<String?> chipLabel, List<bool?> isChipSelected) {
    return Wrap(
      verticalDirection: VerticalDirection.down,
      crossAxisAlignment: WrapCrossAlignment.start,
      children: [
        for (int i = 0; i < isChipSelected.length; i++)
          AppChip(
            isChipActive: isChipSelected[i],
            Label: chipLabel[i],
            onChipTap: () {
              for (int j = 0; j < isChipSelected.length; j++) isChipSelected.setAll(j, [false]);

              isChipSelected.setAll(i, [true]);
              setState(() {});
            },
          ),
      ],
    );
  }

  Future<void> _showMyDialog(String? content) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text(submitScore),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(content!),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text(submitLabel),
              onPressed: () {
                Navigator.of(context).pop();
                Navigator.pop(context);
                // Navigator.pushNamedAndRemoveUntil(context, newRouteName, (route) => false)
              },
            ),
          ],
        );
      },
    );
  }
}
