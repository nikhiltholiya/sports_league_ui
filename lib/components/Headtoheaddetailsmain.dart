import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeadToHeadDetailsMain extends StatelessWidget {
  const HeadToHeadDetailsMain({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  "assets/Ellipse 1.png",
                  height: 63,
                  width: 63,
                  fit: BoxFit.contain,
                ),
                Text(
                  "VS",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 22),
                ),
                Image.asset(
                  "assets/Ellipse 2.png",
                  height: 63,
                  width: 63,
                  fit: BoxFit.contain,
                )
              ],
            ),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [Text("Novak J"), SizedBox(height: 8), ratingBox()],
                ),
                Column(
                  children: [
                    Text(
                      "0",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "0",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "Win",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Colors.green,
                          fontSize: 16),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Loss",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          color: Colors.red,
                          fontSize: 16),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Text(
                      "2",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "2",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w600, fontSize: 18),
                    ),
                  ],
                ),
                Column(
                  children: [Text("John S"), SizedBox(height: 8), ratingBox()],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ratingBox extends StatelessWidget {
  const ratingBox({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
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
    );
  }
}
