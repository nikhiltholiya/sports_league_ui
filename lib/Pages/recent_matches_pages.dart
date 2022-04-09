import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Pages/base_activity.dart';
import '../components/elevated_buttons.dart';
import '../components/head_to_head_details_list_tile.dart';
import '../utils/app_colors.dart';

//Updated on 20220308
class RecentMatchesPage extends StatefulWidget {
  static const String path = 'recentMarchesPage';

  const RecentMatchesPage({Key? key}) : super(key: key);

  @override
  _RecentMatchesPageState createState() => _RecentMatchesPageState();
}

class _RecentMatchesPageState extends State<RecentMatchesPage> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      appbarHeight: kToolbarHeight,
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
                  player1Img: 'assets/Ellipse 5.png',
                  player1Name: 'Novak J.',
                  player1Active: true,
                  player2matchScore: [1, 2, 3, 4, 5],
                  player2Img: 'assets/Ellipse 2.png',
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
    // return Scaffold(
    //   backgroundColor: Colors.white,
    //   bottomSheet: Container(
    //     width: MediaQuery.of(context).size.width,
    //     color: Color(0xff31A05F),
    //     height: 58,
    //     child: Center(
    //       child: Text("Invite to Play",
    //           textAlign: TextAlign.center,
    //           style: TextStyle(
    //               fontSize: 18,
    //               color: Colors.white,
    //               fontWeight: FontWeight.w500)),
    //     ),
    //   ),
    //   appBar: AppBar(
    //     elevation: 0,
    //     backgroundColor: Colors.white,
    //     centerTitle: true,
    //     iconTheme: IconThemeData(color: Colors.black),
    //     title: Text(
    //       "Recent Matches",
    //       style: GoogleFonts.poppins(
    //           color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
    //     ),
    //   ),
    //   body: Container(
    //     padding: EdgeInsets.all(16),
    //     child: ListView(
    //       children: [
    //         Text(
    //           "Showing 10 Matches",
    //           style: GoogleFonts.poppins(
    //               color: Colors.black,
    //               fontWeight: FontWeight.w500,
    //               fontSize: 16),
    //         ),
    //         for (int i = 0; i < 10; i++)
    //           Padding(
    //             padding: const EdgeInsets.only(top: 12),
    //             // child: MatchCard(
    //             //  scores: widget.recentData!["allMatches"]["edges"][i]["node"]
    //             //      ["matchSet"]["edges"],
    //             //   playerOneName: widget.recentData!["allMatches"]["edges"][i]
    //             //       ["node"]["playerOne"]["firstName"],
    //             //   playerTwoName: widget.recentData!["allMatches"]["edges"][i]
    //             //       ["node"]["playerTwo"]["firstName"],
    //             // ),
    //             child: HeadToHeadDetailsListTile(
    //               title: 'CBS Arena',
    //               date: 'Dec 31st 2021',
    //               onProfileClick: () {},
    //               onTileClick: () {},
    //               player1matchScore: [5, 4, 3, 2, 1],
    //               player1Img: 'assets/Ellipse 5.png',
    //               player1Name: 'Novak J.',
    //               player1Active: true,
    //               player2matchScore: [1, 2, 3, 4, 5],
    //               player2Img: 'assets/Ellipse 2.png',
    //               player2Name: 'Kalpesh T.',
    //               player2Active: false,
    //             ),
    //           ),
    //         SizedBox(
    //           height: 30,
    //         )
    //       ],
    //     ),
    //   ),
    // );
  }
}
