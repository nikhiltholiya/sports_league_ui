import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenniston/components/HeadToHead.dart';
import 'package:tenniston/components/MatchCard.dart';

class HeadtoHeadpage extends StatefulWidget {
  const HeadtoHeadpage({Key? key}) : super(key: key);

  @override
  _HeadtoHeadpageState createState() => _HeadtoHeadpageState();
}

class _HeadtoHeadpageState extends State<HeadtoHeadpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "Head to Head",
          style: GoogleFonts.poppins(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.w600),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: ListView(
          children: [
            Text(
              "Played with 23 Players",
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
            for (int i = 0; i < 10; i++)
              Padding(
                padding: const EdgeInsets.only(top: 12),
                child: HeadToHead(),
              )
          ],
        ),
      ),
    );
  }
}
