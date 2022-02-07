import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenniston/components/UpcomingMatchCard.dart';

class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: [
          headerWidget(),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 12),
            child: Text(
              "Upcoming Matches",
              style: GoogleFonts.poppins(
                  color: Color(0xff8C8C8C),
                  fontWeight: FontWeight.w500,
                  fontSize: 16),
            ),
          ),
          for (int i = 0; i < 10; i++)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: UpComingMatchCard(),
            )
        ],
      ),
    );
  }
}

class headerWidget extends StatelessWidget {
  const headerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Color(0xff47BA79),
            Color(0xff47BA79),
            Color(0xff3E4982)
          ]),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("assets/tennis.png"),
            colorFilter: new ColorFilter.mode(
                Colors.black.withOpacity(0.19), BlendMode.dstATop),
          ),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16))),
      child: Padding(
        padding: const EdgeInsets.fromLTRB(32, 24, 0, 0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 4,
            ),
            Text(
              "Look for someone who is up for challenge",
              style: GoogleFonts.poppins(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),
            SizedBox(
              height: 12,
            ),
            Container(
              height: 46,
              width: MediaQuery.of(context).size.width - 62,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30))),
              child: Row(
                children: [
                  SizedBox(
                    width: 16,
                  ),
                  Image.asset("assets/search.png"),
                  SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Search Challenges",
                    style: GoogleFonts.poppins(
                        color: Color(0xff6C6C6C), fontSize: 16),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 22,
            )
          ],
        ),
      ),
    );
  }
}
