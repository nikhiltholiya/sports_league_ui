import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/league_details.dart';
import '../Pages/no_internet_page.dart';
import '../bean/all_leagues/all_leagues.dart';
import '../components/drop_down_view.dart';
import '../components/my_league_list_tile.dart';
import '../components/no_data_list_tile.dart';
import '../providers/internet_provider.dart';
import '../providers/league_id_provider.dart';
import '../utils/Constants.dart';
import '../utils/Internet.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/common.dart';
import '../utils/shared_preferences_utils.dart';

//Created on 20220312
class MyLeagueList extends StatefulWidget {
  static const String path = 'myLeague';

  const MyLeagueList({Key? key}) : super(key: key);

  @override
  _MyLeagueListState createState() => _MyLeagueListState();
}

class _MyLeagueListState extends State<MyLeagueList> with isInternetConnection {
  ScrollController? _scrollController;

  late AllLeaguesData? allLeaguesApps;
  late List<LeagueEdges>? applicantsList;
  late String? selectedCity = '';
  late String? selectedState = '';

  Map<String, dynamic> param = {};
  Map<String, dynamic> paramType = {};
  Map<String, dynamic> passVariable = {};

  late String? dropDownValue = null;
  bool? isParams = false;

  var streamController;
  int completed = 0;

  @override
  void initState() {
    _scrollController = ScrollController();

    // param = {
    //   '\$applicant_UserId': 'UUID',
    // };
    // paramType = {
    //   'applicant_UserId': '\$applicant_UserId',
    // };
    // passVariable = {
    //   'applicant_UserId': '${SharedPreferencesUtils.getUserId}'
    // };

    //20230610 Adding New Param and Query.
    param = {'\$orderby': 'String','\$league_State': 'String', '\$league_City': 'String'};
    paramType = {'orderBy': '\$orderby','state': '\$league_State', 'city': '\$league_City'};

    if (SharedPreferencesUtils.getLastCity != null) {
      dropDownValue = SharedPreferencesUtils.getLastCity;
      final split = SharedPreferencesUtils.getLastCity?.split(',');
      selectedCity = split?[0].toString().trim();
      selectedState = split?[1].toString().trim();

      passVariable = {
        'orderBy': '-createdAt',
        'league_State': selectedState ?? '',
        'league_City': selectedCity ?? '',
      };
    } else {
      passVariable = {
        'orderBy': '-createdAt',
        'league_State': '',
        'league_City': '',
      };
    }

    streamController = StreamController<Map<String, dynamic>>();
    streamController.sink.add(passVariable);
    // });
    initInternet(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<InternetProvider>(
      builder: (context, valueNet, child) {
        print(valueNet.isConnectivity);
        if (valueNet.getConnected != ConnectivityResult.none) {
          return BaseWidget(
            appbarHeight: kToolbarHeight,
            appbar: Text(
              myLeagues,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            onBackClick: () => Navigator.pop(context),
            body: Container(
              color: aWhite,
              child: StreamBuilder<Map<String, dynamic>>(
                stream: streamController.stream,
                builder: (context, streamSnapshot) {
                  if (streamSnapshot.hasError) return Text('Error in Stream');

                  // debugPrint('${MyLeagueList.path} * params : $param -- $paramType -- $passVariable');
                  // debugPrint('${MyLeagueList.path} * data :${streamSnapshot.data} *');

                  if (streamSnapshot.hasData) {
                    return Query(
                      options: QueryOptions(
                        document: gql(allLeaguesQuery(param, paramType)),
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

                        allLeaguesApps = AllLeaguesData.fromJson(result.data!);
                        applicantsList = [];
                        applicantsList!.addAll(allLeaguesApps!.allLeagues!.edges!);

                        // completed = 0;
                        // for (var data in allLeaguesApps!.allLeagueApplications!.edges!) {
                        //   if (data.node!.status!.toLowerCase() == 'approved') {
                        //     if (data.node!.league!.status!.toLowerCase() != 'ongoing') {
                        //       if (completed < 5) {
                        //         applicantsList!.add(data);
                        //         completed++;
                        //       }
                        //     } else {
                        //       applicantsList!.add(data);
                        //     }
                        //   }
                        // }

                        return CustomScrollView(
                          controller: _scrollController,
                          physics: const BouncingScrollPhysics(),
                          shrinkWrap: true,
                          slivers: <Widget>[
                            SliverPersistentHeader(
                              delegate: SilverDelegates(
                                child: Container(
                                  width: double.infinity,
                                  color: aWhite,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: DropDownView(
                                      dropList: ['Portland, Oregon', 'Los Angeles, California', 'Atlanta, Georgia'],
                                      hint: joinLeagueByCity,
                                      dropdownValue: dropDownValue,
                                      onValueChange: (value) {
                                        dropDownValue = value;
                                        final split = value.split(',');
                                        selectedCity = split![0].toString().trim();
                                        selectedState = split![1].toString().trim();

                                        // setState(() {
                                        // param = {'\$league_State': 'String!', '\$league_City': 'String!'};
                                        // paramType = {'league_State': '\$league_State', 'league_City': '\$league_City'};
                                        passVariable = {
                                          'league_State': selectedState ?? '',
                                          'league_City': selectedCity ?? '',
                                          'orderBy': '-createdAt',
                                        };

                                        SharedPreferencesUtils.setLastCity(value); //20230608

                                        streamController.sink.add(passVariable);
                                        // });
                                      },
                                    ),
                                  ),
                                ),
                              ),
                              floating: false,
                              pinned: true,
                            ),
                            (applicantsList!.isEmpty)
                                ? SliverToBoxAdapter(
                                    child: NoDataListTile(
                                      onTileClick: () {},
                                      noCaption: myLeaguesNoData,
                                      noMsg: myLeaguesNoDataMsg,
                                    ),
                                  )
                                : SliverList(
                                    delegate: SliverChildBuilderDelegate(
                                      (context, index) => MyLeagueListTile(
                                            leagueStatus: applicantsList![index].node!.status,
                                            profileImg: 'assets/winner_cup.png',
                                            leagueLocation:
                                            '${applicantsList![index].node!.city}, ${applicantsList![index].node!.state}, ${applicantsList![index].node!.country}',
                                            leagueDate: convertDate(applicantsList?[index].node?.startDate,
                                                applicantsList?[index].node?.endDate),
                                            leagueTitle: applicantsList![index].node!.name,
                                            onTileClick: () {
                                              Provider.of<LeagueIdProvider>(context, listen: false)
                                                  .setLeagueId(applicantsList![index].node!.leagueId);
                                              Navigator.pushNamed(
                                                context,
                                                LeagueDetails.path, /*arguments: applicantsList![index].node*/
                                              );
                                            },
                                            onProfileClick: () {},
                                          ),
                                      //     MyLeagueListTile(
                                      //   leagueStatus: applicantsList![index].node!.league!.status,
                                      //   profileImg: 'assets/winner_cup.png',
                                      //   leagueLocation:
                                      //       '${applicantsList![index].node!.league!.city}, ${applicantsList![index].node!.league!.state}, ${applicantsList![index].node!.league!.country}',
                                      //   leagueDate: convertDate(applicantsList?[index].node?.league?.startDate,
                                      //       applicantsList?[index].node?.league?.endDate),
                                      //   leagueTitle: applicantsList![index].node!.league!.name,
                                      //   onTileClick: () {
                                      //     Provider.of<LeagueIdProvider>(context, listen: false)
                                      //         .setLeagueId(applicantsList![index].node!.league!.leagueId);
                                      //     Navigator.pushNamed(
                                      //       context,
                                      //       LeagueDetails.path, /*arguments: applicantsList![index].node*/
                                      //     );
                                      //   },
                                      //   onProfileClick: () {},
                                      // ),
                                      childCount: applicantsList?.length,
                                    ),
                                  )
                          ],
                        );
                      },
                    );
                  }
                  return Center(child: CupertinoActivityIndicator());
                },
              ),
            ),
          );
        } else {
          streamController.close();
          streamController = StreamController<Map<String, dynamic>>();
          streamController.sink.add(passVariable);
          return NoInternetPage(
            onClick: () {},
          );
        }
      },
    );
  }

  @override
  void dispose() {
    streamController.close();
    _scrollController!.dispose();
    disposeInternet();
    super.dispose();
  }
}
