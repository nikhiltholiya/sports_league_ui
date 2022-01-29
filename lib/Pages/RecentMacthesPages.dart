import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenniston/components/MatchCard.dart';

class RecentMatchesPage extends StatefulWidget {
  const RecentMatchesPage({Key? key}) : super(key: key);

  @override
  _RecentMatchesPageState createState() => _RecentMatchesPageState();
}

class _RecentMatchesPageState extends State<RecentMatchesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        color: Color(0xff31A05F),
        height: 58,
        child: Center(
          child: Text("Invite to Play",
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.white,
                  fontWeight: FontWeight.w500)),
        ),
      ),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Recent Matches",
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Text(
              "Showing 10 Matches",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            for (int i = 0; i < 10; i++)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: MatchCard(),
              )
          ],
        ),
      ),
    );
  }
}
