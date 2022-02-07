import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MatchCard extends StatefulWidget {
  const MatchCard({Key? key}) : super(key: key);

  @override
  _MatchCardState createState() => _MatchCardState();
}

class _MatchCardState extends State<MatchCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromRGBO(128, 128, 128, 0.1)),
          borderRadius: BorderRadius.circular(12),
          color: Color.fromRGBO(128, 128, 128, 0.05)),
      child: Column(
        children: [
          headerCard(),
          Divider(
            height: 1,
            color: Color.fromRGBO(40, 140, 140, 0.1),
          ),
          SizedBox(
            height: 16,
          ),
          matchCardPlayer(
            isActive: true,
          ),
          matchCardPlayer(
            isActive: false,
          )
        ],
      ),
    );
  }
}

class matchCardPlayer extends StatelessWidget {
  final isActive;
  const matchCardPlayer({
    Key? key,
    this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.green,
          height: 54,
          width: isActive ? 4 : 0,
        ),
        SizedBox(
          width: isActive ? 6 : 10,
        ),
        Image.asset(
          isActive ? "assets/Ellipse 1.png" : "assets/Ellipse 2.png",
          height: 38,
          width: 38,
          fit: BoxFit.fill,
        ),
        SizedBox(
          width: 12,
        ),
        Text(
          "John S",
          style: GoogleFonts.poppins(
              color: Color(0xff263238),
              fontSize: 15,
              fontWeight: FontWeight.w600),
        ),
        Spacer(),
        for (int i = 0; i < 5; i++)
          Padding(
            padding: EdgeInsets.only(left: 10),
            child: Text(
              (i + 5).toString(),
              style: GoogleFonts.poppins(
                  color: Color(0xff263238),
                  fontWeight: FontWeight.w600,
                  fontSize: 18),
            ),
          ),
        SizedBox(
          width: 13,
        ),
      ],
    );
  }
}

class headerCard extends StatelessWidget {
  const headerCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 14, left: 14),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "CBS Arena",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff808080)),
          ),
          Text(
            "Dec 31st 2021",
            style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
                color: Color(0xff808080)),
          )
        ],
      ),
    );
  }
}
