import 'package:flutter/material.dart';

import '../components/bordered_circle_avatar.dart';
import '../utils/app_colors.dart';

//created on 20220408
class AllMessagesListTile extends StatefulWidget {
  final String? profileImg;
  final String? userName;
  final Function? onTileClick;
  final Function? onProfileClick;

  const AllMessagesListTile(
      {Key? key, required this.profileImg, required this.userName, this.onTileClick, this.onProfileClick})
      : super(key: key);

  @override
  State<AllMessagesListTile> createState() => _AllMessagesListTileState();
}

class _AllMessagesListTileState extends State<AllMessagesListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onTileClick!(),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
        padding: EdgeInsets.all(2),
        decoration: ShapeDecoration(
          color: aPartGray5,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
              side: BorderSide(color: aPartGray10, style: BorderStyle.solid, width: 1.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () => widget.onProfileClick!(),
                child: BorderedCircleAvatar(
                  path: widget.profileImg!,
                  radius: 20,
                ),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.0),
                  child: Text(
                    widget.userName!,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: aBlack,
                      fontSize: 15,
                      fontWeight: (FontWeight.bold),
                    ),
                  ),
                ),
                flex: 4,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
