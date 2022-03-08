import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenniston/Pages/head_to_head_details.dart';
import 'package:tenniston/components/head_to_head_list_tile.dart';

//Updated on 20220307
class HeadtoHeadpage extends StatefulWidget {
  final String path = 'profilePage';
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
                child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, HeadToHeadDetails().path);
                    },
                  //Added on 20220304
                    child: HeadToHeadListTile(title: 'CBS Arena, Los Angeles, CA',
                      onProfileClick: (){},onTileClick: (){},
                      profileImg: 'assets/Ellipse 5.png',
                      date: 'Dec 31st 2021',
                      rating: '4.5',
                      userName: 'kalpesh',),
                ),
              )
          ],
        ),
      ),
    );
  }
}
