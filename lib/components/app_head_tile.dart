import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../components/decorated_app_header_tile.dart';
import '../components/profile_pic_avatar.dart';
import '../utils/app_colors.dart';

class AppHeadTile extends StatelessWidget {
  final String? name;
  final String? userImage;
  final Function? onMenuClick;
  final bool? isDashboard;

  const AppHeadTile({Key? key, this.name = 'user', this.userImage, this.onMenuClick, this.isDashboard = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DecoratedAppHeader(height: 200),
        Positioned(
          top: 10,
          left: 20,
          child: CircleAvatar(
            backgroundColor: isDashboard! ? aWhite : aTransparent,
            child: IconButton(
              onPressed: () => onMenuClick!(),
              icon: isDashboard!
                  ? Icon(Icons.menu_outlined, color: aGreen)
                  : Icon(
                      kIsWeb
                          ? Icons.arrow_back
                          : Platform.isIOS
                              ? Icons.arrow_back_ios
                              : Icons.arrow_back,
                      color: aWhite),
            ),
          ),
        ),
        Positioned(
          top: 60,
          left: 20,
          child: RichText(
              text: TextSpan(children: <TextSpan>[
            TextSpan(
              text: "Hello,\n",
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: aWhite,
              ),
            ),
            TextSpan(
              text: name,
              style: GoogleFonts.poppins(
                fontSize: 26,
                color: aWhite,
              ),
            ),
          ])),
        ),
        Positioned(
          top: 50,
          right: 20,
          child: ProfilePicAvatar(radius: 40, path: userImage),
        )
      ],
    );
  }
}
