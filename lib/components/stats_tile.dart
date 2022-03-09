import 'package:flutter/material.dart';
import 'package:tenniston/utils/app_colors.dart';

//Updated on 20220307
class StatsTile extends StatefulWidget {
  final String? title;
  final String? subtitle;
  final Color? colors;

  const StatsTile({Key? key, this.title, this.subtitle, this.colors = aBlue})
      : super(key: key);

  @override
  _StatsTileState createState() => _StatsTileState();
}

class _StatsTileState extends State<StatsTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            widget.title!,
            textAlign: TextAlign.center,
            style: TextStyle(
                color: aLightGray,
                fontSize: 12.0,
                fontWeight: (FontWeight.normal)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4.0),
          child: Text(
            widget.subtitle!,
            textAlign: TextAlign.center,
            style: TextStyle(
              color: widget.colors,
              fontSize: 18,
              fontWeight: (FontWeight.bold),
            ),
          ),
        ),
      ],
    );
  }
}
