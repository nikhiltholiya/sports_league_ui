import 'package:flutter/material.dart';

import '../components/bordered_circle_avatar.dart';
import '../utils/app_colors.dart';

//Created on 20220304
class HeadToHeadDetailsListTile extends StatefulWidget {
  final String? title;
  final String? date;
  final String? player1Img;
  final String? player1Name;
  final List<int>? player1matchScore;
  final String? player2Img;
  final String? player2Name;
  final List<int>? player2matchScore;
  final Function? onTileClick;
  final Function? onProfileClick;
  final bool? player2Active;
  final bool? player1Active;

  const HeadToHeadDetailsListTile({
    Key? key,
    this.title,
    this.date,
    this.player1Img,
    this.player1Name,
    this.player1matchScore,
    this.player2Img,
    this.player2Name,
    this.player2matchScore,
    this.onTileClick,
    this.onProfileClick,
    this.player2Active,
    this.player1Active,
  }) : super(key: key);

  @override
  State<HeadToHeadDetailsListTile> createState() => _HeadToHeadDetailsListTileState();
}

class _HeadToHeadDetailsListTileState extends State<HeadToHeadDetailsListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onTileClick!(),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
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
              UserStats(
                userName: widget.player1Name,
                profileImg: widget.player1Img,
                onProfileClick: (String? name) => widget.onProfileClick!(name),
                isActive: widget.player1Active!,
                matchScore: widget.player1matchScore,
              ),
              Divider(
                color: aPartGray10,
                height: 1,
                thickness: 1,
              ),
              UserStats(
                userName: widget.player2Name,
                profileImg: widget.player2Img,
                onProfileClick: (String? name) => widget.onProfileClick!(name),
                isActive: widget.player2Active!,
                matchScore: widget.player2matchScore,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class UserStats extends StatefulWidget {
  final Function? onProfileClick;
  final String? userName;
  final String? profileImg;
  final bool? isActive;
  final List<int>? matchScore;

  const UserStats({Key? key, this.onProfileClick, this.userName, this.profileImg, this.isActive, this.matchScore})
      : super(key: key);

  @override
  State<UserStats> createState() => _UserStatsState();
}

class _UserStatsState extends State<UserStats> {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
      Container(
        height: 30,
        width: 2,
        color: widget.isActive! ? aGreen : aTransparent,
      ),
      Expanded(
        flex: 1,
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: GestureDetector(
                  onTap: () => widget.onProfileClick!(widget.userName!),
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
                      fontWeight: widget.isActive! ? (FontWeight.bold) : (FontWeight.normal),
                    ),
                  ),
                ),
                flex: 4,
              ),
              for (var data in widget.matchScore!)
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(
                    '$data',
                    maxLines: 1,
                    style: TextStyle(fontSize: 16, fontWeight: widget.isActive! ? FontWeight.bold : FontWeight.normal),
                  ),
                )
            ],
          ),
        ),
      ),
    ]);
  }
}
