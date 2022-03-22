import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

class BorderedCircleAvatar extends StatelessWidget {
  final Color? backColor;
  final double? radius;
  final String? path;

  const BorderedCircleAvatar(
      {Key? key,
      this.backColor = aLightGray,
      required this.radius,
      required this.path})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backColor,
      radius: radius,
      child: CircleAvatar(
        backgroundImage: AssetImage(path!),
        // NetworkImage(
        //     'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
        radius: (radius! - 1),
      ),
    );
  }
}
