import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

//Created on 20220303
class RateBadges extends StatefulWidget {
  final String? rate;
  final double? textSize;
  const RateBadges({Key? key, this.rate, this.textSize = 15}) : super(key: key);

  @override
  State<RateBadges> createState() => _RateBadgesState();
}

class _RateBadgesState extends State<RateBadges> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
              side: BorderSide.none),
          color: aGreen),
      padding: EdgeInsets.all(5.0),
      child: Text(
        widget.rate!,
        maxLines: 1,
        style: TextStyle(
          letterSpacing: 1.0,
            fontSize: widget.textSize!,
            fontWeight: FontWeight.bold,
            color: Colors.white),
      ),
    );
  }
}
