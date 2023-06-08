import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

class ProfilePicAvatar extends StatelessWidget {
  final Color? backColor;
  final double? radius;
  final String? path;

  const ProfilePicAvatar({Key? key, this.backColor = aLightGray, required this.radius, required this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backColor,
      radius: radius,
      child: (path == null || path!.contains('asset') || path!.contains('default.png'))
          ? CircleAvatar(
              backgroundImage: AssetImage(path == null || path!.contains('default.png') ? 'assets/avatar0.png' : path!) ,
              radius: (radius! - 1),
              backgroundColor: aWhite,
            )
          : CircleAvatar(
              backgroundImage: NetworkImage('http://104.238.213.60:8000/${path}'),
              radius: (radius! - 1),
              backgroundColor: aWhite,
            ),
    );
  }
}
