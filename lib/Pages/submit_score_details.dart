import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tenniston/bean/all_users/all_users.dart';
import 'package:tenniston/providers/user_id_provider.dart';
import 'package:tenniston/utils/Constants.dart';
import 'package:tenniston/utils/shared_preferences_utils.dart';
import '../components/date_picker.dart';
import '../components/edit_text_form_field.dart';
import '../utils/common.dart';

import '../Pages/base_activity.dart';
import '../components/app_chips.dart';
import '../components/drop_down_view.dart';
import '../components/elevated_buttons.dart';
import '../components/set_details_list_tile.dart';
import '../components/submit_score_details_header_tile.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';

//Created on 20220315
class SubmitScoreDetails extends StatefulWidget {
  static const String path = 'submitScoreDetails';

  const SubmitScoreDetails({Key? key}) : super(key: key);

  @override
  _SubmitScoreDetailsState createState() => _SubmitScoreDetailsState();
}

class _SubmitScoreDetailsState extends State<SubmitScoreDetails>
    with SharedPrefUtils {
  ScrollController? _scrollController;
  GlobalKey? _stackKey = GlobalKey();
  GlobalKey? _userKey = GlobalKey();

  double? _dynamicTotalHeight = 0;
  List<double>? _childWidgetHeights = [];
  var scrollPosition;
  int setListSize = 3;

  late List<Map<String, dynamic>> setList;
  late List<String?> player1Sets;
  late List<String?> player2Sets;
  late List<String?> tie1;
  late List<String?> tie2;

  List<String?> players = [];
  List<bool?> selectedPlayer = [];

  List<String?> matchTypes = ['Single', 'Double'];
  List<bool?> selectedMatchType = [];

  List<String?> matchStatus = ['Completed', 'Retire', 'Tie'];
  List<bool?> selectedMatchStatus = [];

  late Future<AllUsersData> _userData;
  late AllUsersData player1;
  late AllUsersData player2;
  String? matchDate;
  String? matchTime;

  FocusNode? _chatNode;
  late String? dropDownValue = null;

  bool? isLoaded = false;

  double _getWidgetHeight(GlobalKey? key) {
    final RenderBox renderBoxRed =
        key?.currentContext?.findRenderObject() as RenderBox;
    return renderBoxRed.size.height;
  }

  Future<AllUsersData> getAllUserData() async {
    return await getLoggedUser()
        .then((value) => AllUsersData.fromJson(jsonDecode(value!)));
  }

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

  @override
  void initState() {
    _userData = getAllUserData();
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
    return BaseWidget(
      appbarHeight: 0,
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
            Map<String, dynamic> passVariable = {
              'userId': '${value.getUserId}'
            };

            return FutureBuilder<AllUsersData>(
              future: _userData,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  player1 = snapshot.data!;
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
                        return const Center(
                            child: CupertinoActivityIndicator());
                      }

                      player2 = AllUsersData.fromJson(result.data!);

                      if (!isLoaded!) {
                        isLoaded = true;
                        WidgetsBinding.instance
                            ?.addPostFrameCallback(_getTotalHeight);

                        players = [];
                        selectedPlayer = [];
                        players.add(
                            player1.allUsers?.edges?.first.node?.firstName);
                        players.add(
                            player2.allUsers?.edges?.first.node?.firstName);
                        for (int i = 0; i < players.length; i++)
                          selectedPlayer.add(false);

                        selectedMatchType = [];
                        for (int i = 0; i < matchTypes.length; i++)
                          selectedMatchType.add(false);

                        selectedMatchStatus = [];
                        for (int i = 0; i < matchStatus.length; i++)
                          selectedMatchStatus.add(false);
                      }
                      return CustomScrollView(
                        controller: _scrollController,
                        physics: const BouncingScrollPhysics(),
                        shrinkWrap: true,
                        slivers: <Widget>[
                          SliverLayoutBuilder(
                            builder: (context, constraints) {
                              scrollPosition =
                                  constraints.scrollOffset + kToolbarHeight;
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
                                titleTextStyle: TextStyle(
                                    color:
                                        _dynamicTotalHeight! <= scrollPosition
                                            ? Colors.black
                                            : Colors.transparent),
                                iconTheme: IconThemeData(
                                    color:
                                        _dynamicTotalHeight! <= scrollPosition
                                            ? Colors.black
                                            : Colors.white),
                                flexibleSpace: FlexibleSpaceBar(
                                  background: SubmitScoreDetailsHeaderTile(
                                    stackKey: _stackKey,
                                    userKey: _userKey,
                                    player1Img: 'assets/Ellipse 3.png',
                                    player1Name: player1
                                        .allUsers?.edges?.first.node?.firstName,
                                    player2Img: 'assets/Ellipse 1.png',
                                    player2Name: player2
                                        .allUsers?.edges?.first.node?.firstName,
                                  ),
                                  centerTitle: true,
                                  // title: size.height / 2 <= constraints.scrollOffset ? Text('Participating Players') : SizedBox(),
                                  title: _dynamicTotalHeight! <= scrollPosition
                                      ? Text(submitScore)
                                      : SizedBox(),
                                ),
                                expandedHeight: _dynamicTotalHeight,
                                backgroundColor: Colors.white,
                              );
                            },
                          ),
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  vertical: 5, horizontal: 10),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                children: [
                                  Text(
                                    gameDetail,
                                    style: TextStyle(
                                        color: aLightGray,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 16.0),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 5),
                                    child: Text(
                                      matchWinner,
                                      style: TextStyle(
                                          color: aLightGray,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  chips(players, selectedPlayer),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 5),
                                    child: Text(
                                      matchDateTime,
                                      style: TextStyle(
                                          color: aLightGray,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  Wrap(
                                    crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                    alignment: WrapAlignment.start,
                                    children: [
                                      AppChip(
                                        iconData: Icons.calendar_today,
                                        isAvatar: true,
                                        isChipActive: false,
                                        Label: convertDate(
                                            matchDate ??
                                                DateTime.now().toString(),
                                            null),
                                        onChipTap: () {
                                          DatePicker.showDatePicker(
                                            context,
                                            theme: DatePickerTheme(
                                              backgroundColor: aWhite,
                                              itemStyle:
                                                  TextStyle(color: aLightGray),
                                            ),
                                            showTitleActions: true,
                                            minTime: DateTime(
                                                DateTime.now().year - 5,
                                                DateTime.now().month,
                                                DateTime.now().day),
                                            maxTime: DateTime.now(),
                                            onChanged: (date) {
                                              print('change $date');
                                            },
                                            onConfirm: (date) {
                                              matchDate = date.toString();
                                              setState(() {});
                                              print('confirm $date');
                                            },
                                            currentTime: datePickerDate(
                                                matchDate ??
                                                    DateTime.now().toString()),
                                          );
                                        },
                                      ),
                                      AppChip(
                                        iconData: Icons.access_time,
                                        isAvatar: true,
                                        isChipActive: false,
                                        Label: convertTime(
                                            matchTime ??
                                                DateTime.now().toString(),
                                            null),
                                        onChipTap: () {
                                          DatePicker.showTime12hPicker(
                                            context,
                                            theme: DatePickerTheme(
                                              backgroundColor: aWhite,
                                              itemStyle:
                                                  TextStyle(color: aLightGray),
                                            ),
                                            showTitleActions: true,
                                            onChanged: (date) {
                                              print('change $date');
                                            },
                                            onConfirm: (date) {
                                              matchTime = date.toString();
                                              setState(() {});
                                              print('confirm $date');
                                            },
                                            currentTime: datePickerTime(
                                                matchTime ??
                                                    DateTime.now().toString()),
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 5),
                                    child: Text(
                                      matchCourt,
                                      style: TextStyle(
                                          color: aLightGray,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
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
                                    },

                                    suffixIcon: Icon(Icons.arrow_drop_down_sharp),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 5),
                                    child: Text(
                                      gameType,
                                      style: TextStyle(
                                          color: aLightGray,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  chips(matchTypes, selectedMatchType),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 5),
                                    child: Text(
                                      status,
                                      style: TextStyle(
                                          color: aLightGray,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                  chips(matchStatus, selectedMatchStatus),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, bottom: 5),
                                    child: Text(
                                      leagueOpt,
                                      style: TextStyle(
                                          color: aLightGray,
                                          fontSize: 12.0,
                                          fontWeight: FontWeight.bold),
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

                                  EditTextFormField(

                                    onTap: () {},
                                    hint: leagueOpt,
                                    onTextChange: (value) {
                                    },

                                    suffixIcon: Icon(Icons.arrow_drop_down_sharp),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 30, bottom: 10),
                                    child: Text(
                                      setDetails,
                                      style: TextStyle(
                                          color: aLightGray,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16.0),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SliverPadding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 5, horizontal: 10),
                            sliver: SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (context, index) => SetDetailsListTile(
                                  setName: 'Set ${index + 1}',
                                  player1Name: player1.allUsers?.edges?.first.node?.firstName,
                                  player2Name: player2.allUsers?.edges?.first.node?.firstName,
                                  player1Score: (value) {
                                    player1Sets.setAll(index, [value]);
                                    print('$index - $value');
                                  },
                                  player1Controller: TextEditingController(
                                      text: player1Sets[index]),


                                  player2Score: (value) {
                                    player2Sets.setAll(index, [value]);
                                    print('$index - $value');
                                  },
                                  player2Controller: TextEditingController(
                                      text: player2Sets[index]),


                                  tieBreak1: (value) {
                                    tie1.setAll(index, [value]);
                                    print('$index - $value');
                                  },
                                  tie1Controller:
                                      TextEditingController(text: tie1[index]),
                                  tieBreak2: (value) {
                                    tie2.setAll(index, [value]);
                                    print('$index - $value');
                                  },
                                  tie2Controller:
                                      TextEditingController(text: tie2[index]),
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
                                          primary: false,
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
                                ElevatedButtons(
                                  fontSize: 16,
                                  primary: true,
                                  onClick: () {
                                    print(
                                        'player1Sets $player1Sets ** player2Sets $player2Sets ** tie1 $tie1 ** tie2 $tie2');
                                  },
                                  label: submit,
                                  width: double.infinity,
                                  radius: 0.0,
                                )
                              ],
                            ),
                          ),
                        ],
                      );
                    },
                  );
                }

                return const Center(child: CupertinoActivityIndicator());
              },
            );
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
              for (int j = 0; j < isChipSelected.length; j++)
                isChipSelected.setAll(j, [false]);

              isChipSelected.setAll(i, [true]);
              setState(() {});
            },
          ),
      ],
    );
  }
}
