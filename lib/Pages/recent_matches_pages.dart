import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../Pages/no_internet_page.dart';
import '../providers/internet_provider.dart';

import '../Pages/base_activity.dart';
import '../components/elevated_buttons.dart';
import '../components/head_to_head_details_list_tile.dart';
import '../utils/Internet.dart';
import '../utils/app_colors.dart';

//Updated on 20220308
class RecentMatchesPage extends StatefulWidget {
  static const String path = 'recentMarchesPage';

  const RecentMatchesPage({Key? key}) : super(key: key);

  @override
  _RecentMatchesPageState createState() => _RecentMatchesPageState();
}

class _RecentMatchesPageState extends State<RecentMatchesPage> with isInternetConnection {
  @override
  void initState() {
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
            onBackClick: () => Navigator.pop(context),
            appbar: Text(
              "Recent Matches",
              style: GoogleFonts.poppins(color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
            ),
            body: ListView.builder(
              itemBuilder: (context, index) {
                return index == 0
                    ? Text(
                        "Showing 10 Matches",
                        style: GoogleFonts.poppins(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 16),
                      )
                    : HeadToHeadDetailsListTile(
                        title: 'CBS Arena',
                        date: 'Dec 31st 2021',
                        onProfileClick: () {},
                        onTileClick: () {},
                        player1matchScore: [5, 4, 3, 2, 1],
                        player1Img: 'default.png',
                        player1Name: 'Novak J.',
                        player1Active: true,
                        player2matchScore: [1, 2, 3, 4, 5],
                        player2Img: 'default.png',
                        player2Name: 'Kalpesh T.',
                        player2Active: false,
                      );
              },
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: 10,
            ),
            bottomBar: ElevatedButtons(
              width: double.infinity,
              fontSize: 18.0,
              onClick: () {},
              borderColor: aGreen,
              buttonColor: aGreen,
              labelColor: aWhite,
              label: 'Invite To Play',
              radius: 0.0,
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
