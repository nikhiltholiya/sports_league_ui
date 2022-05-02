import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../Pages/base_activity.dart';
import '../bean/all_matches/all_matches.dart';
import '../components/head_to_head_details_list_tile.dart';
import '../utils/Constants.dart';
import '../utils/app_labels.dart';
import '../utils/common.dart';

//Updated on 20220425
class AllMatchesPage extends StatefulWidget {
  static const String path = 'allMatchesPage';

  const AllMatchesPage({Key? key}) : super(key: key);

  @override
  _AllMatchesPageState createState() => _AllMatchesPageState();
}

class _AllMatchesPageState extends State<AllMatchesPage> {
  Map<String, dynamic> param = {};
  Map<String, dynamic> paramType = {};
  late AllMatchesData _allMatchesData;

  @override
  void initState() {
    super.initState();
    param = {'\$orderby': 'String', '\$first': 'Int'};
    paramType = {'orderBy': '\$orderby', 'first': '\$first'};
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      appbarHeight: kToolbarHeight,
      onBackClick: () => Navigator.pop(context),
      appbar: Text(
        allMatchesTitle,
        style: GoogleFonts.poppins(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
      ),
      body: Query(
        options: QueryOptions(
          document: gql(allMatches(param, paramType)),
          // this is the query string you just created
          variables: {'orderby': 'createdAt', 'first': 10},
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

          _allMatchesData = AllMatchesData.fromJson(result.data!);

          List<MatchesEdges>? allMatches = [];
          if (_allMatchesData.allMatches!.edges!.length > 0) {
            allMatches = _allMatchesData.allMatches!.edges;
          }

          return ListView.builder(
            itemBuilder: (context, index) {
              return index == 0
                  ? Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        show10Matches,
                        style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
                      ),
                    )
                  : HeadToHeadDetailsListTile(
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
            itemCount: 10,
          );
        },
      ),
    );
  }
}
