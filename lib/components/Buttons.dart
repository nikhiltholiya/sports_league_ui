import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileButtons extends StatefulWidget {
  final primary, text;
  const ProfileButtons({Key? key, this.primary, this.text}) : super(key: key);

  @override
  _ProfileButtonsState createState() => _ProfileButtonsState();
}

class _ProfileButtonsState extends State<ProfileButtons> {
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: MediaQuery.of(context).size.width * 0.35,
      height: 44,
      onPressed: () {},
      color: widget.primary ? Color(0xff31A05F) : Colors.white,
      child: Text(
        widget.text,
        style: GoogleFonts.poppins(
            fontSize: 15,
            fontWeight: FontWeight.w500,
            color: widget.primary ? Colors.white : Color(0xff8C8C8C)),
      ),
      shape: RoundedRectangleBorder(
          side: BorderSide(color: Color.fromRGBO(140, 140, 140, 0.5)),
          borderRadius: BorderRadius.circular(40)),
    );
  }
}
