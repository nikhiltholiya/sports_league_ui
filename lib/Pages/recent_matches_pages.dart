import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/no_internet_page.dart';
import '../bean/all_matches/all_matches.dart';
import '../components/elevated_buttons.dart';
import '../components/head_to_head_details_list_tile.dart';
import '../components/no_data_list_tile.dart';
import '../providers/internet_provider.dart';
import '../providers/user_id_provider.dart';
import '../utils/Constants.dart';
import '../utils/Internet.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/common.dart';

//Api added on 20220610
class RecentMatchesPage extends StatefulWidget {
  static const String path = 'recentMarchesPage';

  const RecentMatchesPage({Key? key}) : super(key: key);

  @override
  _RecentMatchesPageState createState() => _RecentMatchesPageState();
}

class _RecentMatchesPageState extends State<RecentMatchesPage> with isInternetConnection {
  late AllMatchesData _allMatchesData;
  Map<String, dynamic> param = {};
  Map<String, dynamic> paramType = {};
  @override
  void initState() {
    initInternet(context);
    param = {'\$orderby': 'String', '\$userSearch': 'String'};
    paramType = {'orderBy': '\$orderby', 'userSearch': '\$userSearch'};
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
            onBackClick: () => Navigator.pop(context),
            appbar: Text(
              "Recent Matches",
              style: GoogleFonts.poppins(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
            ),
            body: Consumer<UserIdProvider>(
              builder: (context, value, child) {
                return Query(
                  options: QueryOptions(
                    document: gql(allMatches(param, paramType)),
                    // this is the query string you just created
                    variables: {'orderby': '-createdAt', 'userSearch': '${value.getUserId}'},
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

                    List<MatchesEdges>? allMatches = [];
                    if (_allMatchesData.allMatches!.edges != null) {
                      if (_allMatchesData.allMatches!.edges!.length > 0) {
                        allMatches = _allMatchesData.allMatches!.edges;
                      }
                    }

                    return allMatches!.length > 0
                        ? SingleChildScrollView(
                            physics: BouncingScrollPhysics(),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Text(
                                    'Showing ${allMatches.length} Matches',
                                    style: GoogleFonts.poppins(
                                        color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
                                  ),
                                ),
                                ListView.builder(
                                  itemBuilder: (context, index) {
                                    return HeadToHeadDetailsListTile(
                                      title: allMatches?[index].node?.court,
                                      date: convertDate(allMatches?[index].node?.startDate, null),
                                      onProfileClick: () {},
                                      onTileClick: () {},
                                      player1matchScore: [5, 4, 3, 2, 1],
                                      player1Img: allMatches?[index].node?.playerOne?.picture,
                                      player1Name: allMatches?[index].node?.playerOne?.firstName,
                                      player1Active: true,
                                      player2matchScore: [1, 2, 3, 4, 5],
                                      player2Img: allMatches?[index].node?.playerTwo?.picture,
                                      player2Name: allMatches?[index].node?.playerTwo?.firstName,
                                      player2Active: false,
                                    );
                                  },
                                  shrinkWrap: true,
                                  physics: BouncingScrollPhysics(),
                                  itemCount: allMatches.length,
                                ),
                              ],
                            ))
                        : Wrap(
                            children: [
                              SizedBox(
                                width: double.infinity,
                                child: NoDataListTile(
                                  onTileClick: () {},
                                  noCaption: noMatchesFound,
                                  noMsg: '',
                                ),
                              ),
                            ],
                          );
                  },
                );
              },
            ),
            // bottomBar: ElevatedButtons(
            //   width: double.infinity,
            //   fontSize: 18.0,
            //   onClick: () {},
            //   borderColor: aGreen,
            //   buttonColor: aGreen,
            //   labelColor: aWhite,
            //   label: 'Invite To Play',
            //   radius: 0.0,
            // ),
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
    disposeInternet();
    super.dispose();
  }
}
