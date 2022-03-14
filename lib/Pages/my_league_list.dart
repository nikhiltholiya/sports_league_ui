import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../bean/all_league_Applications/all_leagues_applications.dart';
import '../components/drop_down_view.dart';
import '../components/my_league_list_tile.dart';
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

  late AllLeaguesApps? allLeaguesApps;
  late List<Edges>? applicantsList;

  @override
  void initState() {
    _scrollController = ScrollController();
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
      appbar: Text( myLeagues,
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
      body: Container(
        color: aWhite,
        child: Query(
          options: QueryOptions(
            document: gql(fetchAllLeagueApplicants),
            variables: {
              'applicant_UserId': '021c2515-e12e-49bd-bc08-744dc64a508c',
              'league_State': 'Oregon',
              'league_City': 'Portland'
            },
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
                            'Portland, OR',
                            'Los Angeles, CA',
                            'Atlanta, CA'
                          ],
                          onValueChange: (value) {
                            print('$value');
                          },
                        ),
                      ),
                    ),
                  ),
                  floating: false,
                  pinned: true,
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => MyLeagueListTile(
                      leagueStatus: applicantsList![index].node!.league!.status,
                      profileImg: 'assets/winner_cup.png',
                      leagueLocation:
                          '${applicantsList![index].node!.league!.city}, ${applicantsList![index].node!.league!.state}, ${applicantsList![index].node!.league!.country}',
                      leagueDate: convertDate(
                          applicantsList?[index].node?.league?.startDate,
                          applicantsList?[index].node?.league?.endDate),
                      leagueTitle: applicantsList![index].node!.league!.name,
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

class SilverDelegates extends SliverPersistentHeaderDelegate {
  final Widget? child;

  SilverDelegates({this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child!;
  }

  @override
  double get maxExtent => 60;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
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
