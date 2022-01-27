import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenniston/components/Buttons.dart';

class ProfileCard extends StatefulWidget {
  final name, location, age;
  const ProfileCard({Key? key, this.name, this.location, this.age})
      : super(key: key);

  @override
  _ProfileCardState createState() => _ProfileCardState();
}

class _ProfileCardState extends State<ProfileCard> {
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 5,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        child: Column(
          children: [
            SizedBox(
              height: 24,
            ),
            Image.asset("assets/Ellipse 1.png"),
            SizedBox(
              height: 8,
            ),
            Text(
              widget.name,
              style: GoogleFonts.poppins(
                  color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            SizedBox(
              height: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/Vector (1).png"),
                SizedBox(
                  width: 5,
                ),
                Text(
                  "${widget.location} \u2022  ${widget.age}Yrs",
                  style: GoogleFonts.poppins(
                      color: Color(0xff263238),
                      fontSize: 14,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
            SizedBox(
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ProfileButtons(primary: false, text: "Chat"),
                SizedBox(width: 20),
                ProfileButtons(primary: true, text: "Invite to Play")
              ],
            )
          ],
        ),
      ),
    );
  }
}
