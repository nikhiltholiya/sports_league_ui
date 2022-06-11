import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/no_internet_page.dart';
import '../bean/all_matches/all_matches.dart';
import '../components/head_to_head_details_list_tile.dart';
import '../components/no_data_list_tile.dart';
import '../providers/internet_provider.dart';
import '../utils/Constants.dart';
import '../utils/Internet.dart';
import '../utils/app_labels.dart';
import '../utils/common.dart';

//Created on 20220608
class LatestScorePage extends StatefulWidget {
  static const String path = 'latestScorePage';

  const LatestScorePage({Key? key}) : super(key: key);

  @override
  _LatestScorePageState createState() => _LatestScorePageState();
}

class _LatestScorePageState extends State<LatestScorePage> with isInternetConnection {
  Map<String, dynamic> param = {};
  Map<String, dynamic> paramType = {};
  late AllMatchesData _allMatchesData;

  @override
  void initState() {
    initInternet(context);
    param = {'\$orderby': 'String', '\$first': 'Int'};
    paramType = {'orderBy': '\$orderby', 'first': '\$first'};
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
              latestScoreTitle,
              style: GoogleFonts.poppins(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
            ),
            body: Query(
              options: QueryOptions(
                document: gql(allMatches(param, paramType)),
                // this is the query string you just created
                variables: {'orderby': '-createdAt', 'first': 10},
                pollInterval: Duration(seconds: 100),
              ),
              builder: (result, {fetchMore, refetch}) {
                // print(passVariable);
                if (result.hasException) {
                  print('Exception -- $result');
                  return Text(result.exception.toString());
                }

                if (result.isLoading && result.data == null) {
                  return const Center(child: CupertinoActivityIndicator());
                }

                debugPrint('RESULT :: ${result.data!}');

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
                                'Showing ${allMatches.length > 10 ? 10 : allMatches.length} Matches',
                                style:
                                    GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
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
                              itemCount: allMatches.length > 10 ? 10 : allMatches.length,
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
    disposeInternet();
    super.dispose();
  }
}
