import 'package:flutter/material.dart';

class StatsTile extends StatefulWidget {
  final title, subtitle;
  const StatsTile({Key? key, this.title, this.subtitle}) : super(key: key);

  @override
  _StatsTileState createState() => _StatsTileState();
}

class _StatsTileState extends State<StatsTile> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 82,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.title,
            style: TextStyle(color: Color(0xff808080)),
          ),
          SizedBox(
            height: 16,
          ),
          Text(
            widget.subtitle,
            style: TextStyle(
                color: Color(0xff3E4982),
                fontSize: 28,
                fontWeight: FontWeight.w500),
          ),
        ],
      ),
    );
  }
}
