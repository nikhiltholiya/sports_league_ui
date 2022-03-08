import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//Created on 20220225
class DashboardMenuItem extends StatelessWidget {
  final menu_image, menu_color, title, subtitle;
  final Function? onMenuClick;

  const DashboardMenuItem(
      {Key? key,
        this.menu_image,
        this.menu_color,
        this.title,
        this.subtitle,
        this.onMenuClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onMenuClick!(),
      child: Container(
        decoration: BoxDecoration(
          color: menu_color,
          borderRadius: BorderRadius.circular(12),
        ),
        child : ClipRRect(
          borderRadius:
          BorderRadius.circular(12.0),
          child: Stack(
            children: [
              Positioned(
                child: Image.asset(
                  'assets/$menu_image',width: 60,
                ),
                top: -25,
                right: -25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      title,
                      style: GoogleFonts.workSans(
                        fontSize: 16,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    subtitle,
                    style: GoogleFonts.workSans(
                      fontSize: 12,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
