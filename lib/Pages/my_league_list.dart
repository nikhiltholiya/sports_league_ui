import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../bean/all_league_Applications/all_leagues_applications.dart';
import '../components/drop_down_view.dart';
import '../components/my_league_list_tile.dart';
import '../components/my_league_no_data_list_tile.dart';
import '../Pages/base_activity.dart';
import '../Pages/league_details.dart';
import '../utils/Constants.dart' as Constants;
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/common.dart';

//Created on 20220312
class MyLeagueList extends StatefulWidget {
  static const String path = 'myLeague';

  const MyLeagueList({Key? key}) : super(key: key);

  @override
  _MyLeagueListState createState() => _MyLeagueListState();
}

class _MyLeagueListState extends State<MyLeagueList> {
  ScrollController? _scrollController;

  String fetchAllLeagueApplicants = Constants.allLeagueApplications;
  String fetchAllLeagueCities = Constants.allLCitiesStates;

  // String? temp = Constants.allQ(param, variable);

  late AllLeaguesApps? allLeaguesApps;
  late List<Edges>? applicantsList;
  late String? selectedCity = '';
  late String? selectedState = '';

  Map<String, dynamic> param = {};
  Map<String, dynamic> paramType = {};
  Map<String, dynamic> passVariable = {};
  late String? dropDownValue = null;

  @override
  void initState() {
    _scrollController = ScrollController();

    param = {
      '\$applicant_UserId': 'UUID',
    };
    paramType = {
      'applicant_UserId': '\$applicant_UserId',
    };
    passVariable = {'applicant_UserId': '021c2515-e12e-49bd-bc08-744dc64a508c'};

    super.initState();
  }

  @override
  void dispose() {
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
        child: Query(
          options: QueryOptions(
            document: gql(Constants.allLeagueApplicationsQuery(param, paramType).toString()),
            variables: passVariable,
            pollInterval: Duration(seconds: 100),
          ),
          builder: (result, {fetchMore, refetch}) {
            if (result.hasException) {
              return Text(result.exception.toString());
            }

            if (result.isLoading) {
              return Center(child: CupertinoActivityIndicator());
            }

            allLeaguesApps = AllLeaguesApps.fromJson(result.data!);

            applicantsList = [];
            for (var data in allLeaguesApps!.allLeagueApplications!.edges!) {
              if (data.node!.status!.toLowerCase() == 'approved')
                applicantsList = allLeaguesApps!.allLeagueApplications!.edges;
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
                          cityList: [
                            'Portland, Oregon',
                            'Los Angeles, California',
                            'Atlanta, Georgia'
                          ],
                          hint: joinLeagueByCity,
                          dropdownValue: dropDownValue,
                          onValueChange: (value) {
                            dropDownValue = value;
                            final split = value.split(',');
                            selectedCity = split![0].toString().trim();
                            selectedState = split![1].toString().trim();

                            setState(() {
                              param = {
                                '\$league_State': 'String!',
                                '\$league_City': 'String!'
                              };
                              paramType = {
                                'league_State': '\$league_State',
                                'league_City': '\$league_City'
                              };
                              passVariable = {
                                'league_State': selectedState ?? '',
                                'league_City': selectedCity ?? '',
                              };
                            });
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
                            leagueStatus:
                                applicantsList![index].node!.league!.status,
                            profileImg: 'assets/winner_cup.png',
                            leagueLocation:
                                '${applicantsList![index].node!.league!.city}, ${applicantsList![index].node!.league!.state}, ${applicantsList![index].node!.league!.country}',
                            leagueDate: convertDate(
                                applicantsList?[index].node?.league?.startDate,
                                applicantsList?[index].node?.league?.endDate),
                            leagueTitle:
                                applicantsList![index].node!.league!.name,
                            onTileClick: () {
                              Navigator.pushNamed(context, LeagueDetails.path,
                                  arguments: applicantsList![index].node);
                            },
                            onProfileClick: () {},
                          ),
                          childCount: applicantsList?.length,
                        ),
                      )
              ],
            );
          },
        ),
      ),
    );
  }
}


////Query For City and State
// Query(
//   options: QueryOptions(
//     document: gql(fetchAllLeagueCities),
//     variables: {
//       'league_State': 'Oregon',
//       'league_City': 'Portland'
//     },
//     pollInterval: Duration(seconds: 100),
//   ),
//   builder: (result, {fetchMore, refetch}) {
//     print('CITY');
//     if (result.hasException) {
//       return Text(result.exception.toString());
//     }
//
//     if (result.isLoading) {
//       return Center(child: CupertinoActivityIndicator());
//     }
//
//     allLeaguesApps = AllLeaguesApps.fromJson(result.data!);
//     for (var data
//         in allLeaguesApps!.allLeagueApplications!.edges!) {
//       print('${data.node!.id} -- ${data.node!.status}');
//     }
//     return Text('${result.data}');
//   },
// ),
