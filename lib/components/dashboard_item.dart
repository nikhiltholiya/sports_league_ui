import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardMenu extends StatelessWidget {
  final menu_image, menu_color, title, subtitle;

  const DashboardMenu({
    Key? key,
    this.menu_image,
    this.menu_color,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      decoration: BoxDecoration(
        color: Color(menu_color),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Positioned(
              top: -25,
              right: -25,
              child: Container(
                height: 66,
                width: 66,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/" + menu_image),
                  ),
                ),
              )),
          Positioned(
              top: 12,
              left: 20,
              child: Text(
                title,
                style: GoogleFonts.workSans(
                  fontSize: 15,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              )),
          Positioned(
              top: 35,
              left: 20,
              child: Text(
                subtitle,
                style: GoogleFonts.workSans(
                  fontSize: 11,
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                ),
              )),
        ],
      ),
    );
  }
}