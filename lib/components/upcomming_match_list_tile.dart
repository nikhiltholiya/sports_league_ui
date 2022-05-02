import 'package:flutter/material.dart';

import '../components/profile_pic_avatar.dart';
import '../components/iconic_text_view.dart';
import '../utils/app_colors.dart';

//Created on 20220304
class UpcommingMatchListTile extends StatefulWidget {
  final String? playerName;
  final String? profileImg;
  final String? rivalName;
  final String? location;
  final String? date;
  final String? time;
  final String? gameType;
  final String? matchStatus;
  final Function? onTileClick;
  final Function? onProfileClick;

  const UpcommingMatchListTile(
      {Key? key,
      required this.playerName,
      required this.profileImg,
      required this.rivalName,
      required this.location,
      required this.date,
      required this.time,
      required this.gameType,
      required this.matchStatus,
      this.onTileClick,
      this.onProfileClick})
      : super(key: key);

  @override
  _UpcommingMatchListTileState createState() => _UpcommingMatchListTileState();
}

class _UpcommingMatchListTileState extends State<UpcommingMatchListTile> {
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
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => widget.onProfileClick!(),
                    child: ProfilePicAvatar(
                      path: widget.profileImg!,
                      radius: 20,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      widget.playerName!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: aBlack,
                        fontSize: 18,
                        fontWeight: (FontWeight.bold),
                      ),
                    ),
                  ),
                  Text(
                    'vs',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: aLightGray,
                      fontSize: 12,
                      fontWeight: (FontWeight.normal),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5.0),
                    child: Text(
                      widget.rivalName!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: aLightGray,
                        fontSize: 12,
                        fontWeight: (FontWeight.normal),
                      ),
                    ),
                  ),
                  Flexible(
                    child: SizedBox(),
                    flex: 1,
                    fit: FlexFit.tight,
                  ),

                  Flexible(
                    flex: 1,
                    fit: FlexFit.loose,
                    child: IconicTextView(
                        icon: Icons.circle,
                        iconSize: 10.0,
                        iconColor: widget.matchStatus!.toLowerCase() == 'open' ? aGreen : aYellow,
                        label: widget.matchStatus!),
                  ),
                  // Padding(
                  //   padding: EdgeInsets.all(5.0),
                  //   child: Icon(Icons.circle,
                  //       size: 10.0,
                  //       color: widget.matchStatus!.toLowerCase() == 'open'
                  //           ? aGreen
                  //           : aYellow),
                  //   // child: Image.asset('assets/Vector (1).png',color: Color(0xFF3E4982),fit: BoxFit.none),
                  // ),
                  // Text(
                  //   widget.matchStatus!,
                  //   textAlign: TextAlign.center,
                  //   style: TextStyle(
                  //     color: aLightGray,
                  //     fontSize: 12,
                  //     fontWeight: (FontWeight.bold),
                  //   ),
                  // ),
                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconicTextView(icon: Icons.location_pin, label: widget.location!),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: IconicTextView(icon: Icons.calendar_today, label: widget.date!),
                    ),
                    Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: IconicTextView(icon: Icons.circle, iconSize: 5.0, label: widget.time!)),
                  ],
                ),
                IconicTextView(icon: Icons.circle, label: widget.gameType),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
