import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/league_details.dart';
import '../bean/all_league_Applications/all_leagues_applications.dart';
import '../components/drop_down_view.dart';
import '../components/my_league_list_tile.dart';
import '../components/my_league_no_data_list_tile.dart';
import '../providers/league_id_provider.dart';
import '../utils/Constants.dart';
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

class _MyLeagueListState extends State<MyLeagueList> {
  ScrollController? _scrollController;

  late AllLeaguesApps? allLeaguesApps;
  late List<LeagueEdges>? applicantsList;
  late String? selectedCity = '';
  late String? selectedState = '';

  Map<String, dynamic> param = {};
  Map<String, dynamic> paramType = {};
  Map<String, dynamic> passVariable = {};

  late String? dropDownValue = null;
  bool? isParams = false;

  final streamController = StreamController<Map<String, dynamic>>();

  @override
  void initState() {
    _scrollController = ScrollController();

    // getUserId().then((value) {
    param = {
      '\$applicant_UserId': 'UUID',
    };
    paramType = {
      'applicant_UserId': '\$applicant_UserId',
    };
    passVariable = {'applicant_UserId': '${SharedPreferencesUtils.getUserId}'};

    streamController.sink.add(passVariable);
    // });

    super.initState();
  }

  @override
  void dispose() {
    streamController.close();
    _scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      appbarHeight: kToolbarHeight,
      appbar: Text(
        myLeagues,
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
      body: Container(
        color: aWhite,
        child: StreamBuilder<Map<String, dynamic>>(
          stream: streamController.stream,
          builder: (context, streamSnapshot) {
            if (streamSnapshot.hasError) return Text('Error in Stream');

            print('$param -- $paramType -- $passVariable');
            print('${streamSnapshot.data} ***');

            if (streamSnapshot.hasData) {
              return Query(
                options: QueryOptions(
                  document: gql(allLeagueApplicationsQuery(param, paramType)),
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

                  allLeaguesApps = AllLeaguesApps.fromJson(result.data!);

                  applicantsList = [];
                  for (var data in allLeaguesApps!.allLeagueApplications!.edges!) {
                    if (data.node!.status!.toLowerCase() == 'approved') {
                      applicantsList!.add(data);
                    }
                  }

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
                                  param = {'\$league_State': 'String!', '\$league_City': 'String!'};
                                  paramType = {'league_State': '\$league_State', 'league_City': '\$league_City'};
                                  passVariable = {
                                    'league_State': selectedState ?? '',
                                    'league_City': selectedCity ?? '',
                                  };

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
                      (applicantsList!.length <= 0)
                          ? SliverToBoxAdapter(
                              child: MyLeagueNoDataListTile(
                              onTileClick: () {},
                            ))
                          : SliverList(
                              delegate: SliverChildBuilderDelegate(
                                (context, index) => MyLeagueListTile(
                                  leagueStatus: applicantsList![index].node!.league!.status,
                                  profileImg: 'assets/winner_cup.png',
                                  leagueLocation:
                                      '${applicantsList![index].node!.league!.city}, ${applicantsList![index].node!.league!.state}, ${applicantsList![index].node!.league!.country}',
                                  leagueDate: convertDate(applicantsList?[index].node?.league?.startDate,
                                      applicantsList?[index].node?.league?.endDate),
                                  leagueTitle: applicantsList![index].node!.league!.name,
                                  onTileClick: () {
                                    Provider.of<LeagueIdProvider>(context, listen: false)
                                        .setLeagueId(applicantsList![index].node!.league!.leagueId);
                                    Navigator.pushNamed(
                                      context,
                                      LeagueDetails.path, /*arguments: applicantsList![index].node*/
                                    );
                                  },
                                  onProfileClick: () {},
                                ),
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
  }
}
