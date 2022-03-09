import 'package:flutter/material.dart';
import 'package:tenniston/components/rate_badges.dart';
import 'package:tenniston/utils/app_colors.dart';

//Created on 20220303
class HeadToHeadDetailsHeaderTile extends StatefulWidget {
  final String? player1Name;
  final String? player1Img;
  final String? player1Score;
  final String? player1win;
  final String? player1Loss;

  final String? player2Name;
  final String? player2Img;
  final String? player2Score;
  final String? player2win;
  final String? player2Loss;

  const HeadToHeadDetailsHeaderTile(
      {Key? key,
      this.player1Name,
      this.player1Img,
      this.player1Score,
      this.player1win,
      this.player1Loss,
      this.player2Name,
      this.player2Img,
      this.player2Score,
      this.player2win,
      this.player2Loss})
      : super(key: key);

  @override
  State<HeadToHeadDetailsHeaderTile> createState() =>
      _HeadToHeadDetailsHeaderTileState();
}

class _HeadToHeadDetailsHeaderTileState
    extends State<HeadToHeadDetailsHeaderTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 3.0,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: HeadUsers(
                userName: widget.player1Name!,// Novak J.
                imgUrl:  widget.player1Img!, //'assets/Ellipse 1.png',
                userRate: widget.player1Score!//'4.5',
              ),
            ),
            Expanded(
              flex: 3,
              child: Table(
                // columnWidths: {
                //   0: FlexColumnWidth(1),
                //   1: FlexColumnWidth(4),
                //   2: FlexColumnWidth(4),
                // },
                defaultColumnWidth: IntrinsicColumnWidth(),
                defaultVerticalAlignment: TableCellVerticalAlignment.middle,
                children: [
                  TableRow(
                    children: [
                      SizedBox(),
                      ScoreText(
                        statusName: 'VS',
                        fontSize: 20,
                        fWeight: FontWeight.bold,
                      ),
                      SizedBox(),
                    ],
                  ),

                  TableRow(children: [
                    ScoreText(statusName: widget.player1win!, align: TextAlign.start),
                    ScoreText(
                      statusName: 'Win',
                      fWeight: FontWeight.bold,
                      color: aGreen,
                      fontSize: 15,
                    ),
                    ScoreText(
                      statusName: widget.player2win!,
                      align: TextAlign.end,
                    )
                  ]),
                  TableRow(children: [
                    ScoreText(statusName: widget.player1Loss!, align: TextAlign.start),
                    ScoreText(
                        statusName: 'Loss',
                        fWeight: FontWeight.bold,
                        color: aRed,
                        fontSize: 15),
                    ScoreText(
                      statusName:  widget.player2Loss!,
                      align: TextAlign.end,
                    )
                  ]),
                ],
              ),
            ),
            Expanded(
              flex: 2,
              child: HeadUsers(
                userName:  widget.player2Name!, //'Kalpesh t.',
                imgUrl:  widget.player2Img!, //'assets/Ellipse 5.png',
                userRate:  widget.player2Score!, //'4.5',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ScoreText extends StatefulWidget {
  final String? statusName;
  final Color? color;
  final FontWeight? fWeight;
  final TextAlign? align;
  final double? fontSize;

  const ScoreText(
      {Key? key,
      this.statusName,
      this.align = TextAlign.center,
      this.color = aBlack,
      this.fWeight = FontWeight.bold,
      this.fontSize = 16})
      : super(key: key);

  @override
  State<ScoreText> createState() => _ScoreTextState();
}

class _ScoreTextState extends State<ScoreText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Text(
        widget.statusName!,
        maxLines: 1,
        textAlign: widget.align!,
        style: TextStyle(
          fontSize: widget.fontSize!,
          fontWeight: widget.fWeight!,
          color: widget.color!,
        ),
      ),
    );
  }
}

class HeadUsers extends StatefulWidget {
  final String? imgUrl;
  final String? userName;
  final String? userRate;

  const HeadUsers({Key? key, this.imgUrl, this.userName, this.userRate})
      : super(key: key);

  @override
  State<HeadUsers> createState() => _HeadUsersState();
}

class _HeadUsersState extends State<HeadUsers> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: CircleAvatar(
            child: CircleAvatar(
              backgroundImage: AssetImage(widget.imgUrl!),
              radius: 30,
            ),
            backgroundColor: aLightGray,
            radius: 31,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3.0, bottom: 8.0),
          child: Text(
            widget.userName!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
        RateBadges(
          textSize: 16,
          rate: widget.userRate,
        ),
      ],
    );
  }
}
