import 'package:flutter/material.dart';

import '../components/bordered_circle_avatar.dart';
import '../components/rate_badges.dart';
import '../utils/app_colors.dart';

//created on 20220303
class HeadToHeadListTile extends StatefulWidget {
  final String? title;
  final String? date;
  final String? profileImg;
  final String? userName;
  final String? rating;
  final Function? onTileClick;
  final Function? onProfileClick;

  const HeadToHeadListTile(
      {Key? key,
      required this.title,
      required this.date,
      required this.profileImg,
      required this.userName,
      required this.rating,
      this.onTileClick,
      this.onProfileClick})
      : super(key: key);

  @override
  State<HeadToHeadListTile> createState() => _HeadToHeadListTileState();
}

class _HeadToHeadListTileState extends State<HeadToHeadListTile> {
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Text(
                      widget.title!,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        color: aLightGray,
                        fontSize: 12,
                        fontWeight: (FontWeight.normal),
                      ),
                    ),
                    flex: 3,
                  ),
                  Expanded(
                    child: Text(
                      widget.date!,
                      textAlign: TextAlign.end,
                      style: TextStyle(
                        color: aLightGray,
                        fontSize: 12,
                        fontWeight: (FontWeight.normal),
                      ),
                    ),
                    flex: 2,
                  ),
                ],
              ),
            ),
            Divider(
              color: aPartGray10,
              height: 1,
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => widget.onProfileClick!(),
                      child: BorderedCircleAvatar(
                        radius: 25,
                        path: widget.profileImg!,
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text(
                        widget.userName!,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          color: aBlack,
                          fontSize: 15,
                          fontWeight: (FontWeight.normal),
                        ),
                      ),
                    ),
                    flex: 4,
                  ),
                  RateBadges(
                    rate: widget.rating!,
                    textSize: 12,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
