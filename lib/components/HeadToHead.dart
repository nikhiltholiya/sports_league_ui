import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './MatchCard.dart';

class HeadToHead extends StatefulWidget {
  const HeadToHead({Key? key}) : super(key: key);

  @override
  _HeadToHeadState createState() => _HeadToHeadState();
}

class _HeadToHeadState extends State<HeadToHead> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 93,
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromRGBO(128, 128, 128, 0.1)),
          borderRadius: BorderRadius.circular(12),
          color: Color.fromRGBO(128, 128, 128, 0.05)),
      child: Column(
        children: [
          headerCard(),
          SizedBox(
            height: 8,
          ),
          Divider(
            height: 1,
            thickness: 2,
            color: Color.fromRGBO(40, 140, 140, 0.1),
          ),
          SizedBox(
            height: 8,
          ),
          headtoheadcardrow(
            isActive: false,
          )
        ],
      ),
    );
    ;
  }
}

class headtoheadcardrow extends StatelessWidget {
  final isActive;
  const headtoheadcardrow({
    Key? key,
    this.isActive,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
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
        Container(
          child: Text(
            "John S",
            style: GoogleFonts.poppins(
                color: Color(0xff263238),
                fontSize: 15,
                fontWeight: FontWeight.w600),
          ),
        ),
        Spacer(),
        Container(
          height: 30,
          width: 35,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4), color: Color(0xff47BA79)),
          child: Text(
            "4.5",
            textAlign: TextAlign.center,
            style: GoogleFonts.poppins(
                color: Colors.white, fontWeight: FontWeight.w600, fontSize: 18),
          ),
        ),
        SizedBox(
          width: 13,
        ),
      ],
    );
  }
}
