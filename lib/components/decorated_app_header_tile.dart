import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

//created on 20220307
class DecoratedAppHeader extends StatelessWidget {
  final double? height;

  const DecoratedAppHeader({Key? key, this.height = 170}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(12),
          bottomRight: Radius.circular(12),
        ),
        gradient: LinearGradient(colors: [
          // Color(0xff47BA79),
          // Color(0xff47BA79),
          // Color(0xff3E4982)
          aGreen,
          aGreen,
          aBlue
        ]),
        image: DecorationImage(
          image: AssetImage(
            'assets/tennis.png',
          ),
          fit: BoxFit.fill,
          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.20), BlendMode.dstATop),
        ),
      ),
    );
  }
}
