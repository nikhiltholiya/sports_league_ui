import 'package:flutter/material.dart';
import 'package:tenniston/utils/app_colors.dart';

//Created on 20220222
class LeagueDetailTile extends StatefulWidget {
  final String? name;
  final String? profileImg;
  final int? games;
  final int? win;
  final int? loss;
  final Function? onTileClick;
  final Function? onProfileClick;

  const LeagueDetailTile(
      {Key? key, this.name, this.profileImg, this.games, this.win, this.loss, this.onTileClick,this.onProfileClick})
      : super(key: key);

  @override
  _LeagueDetailTileState createState() => _LeagueDetailTileState();
}

class _LeagueDetailTileState extends State<LeagueDetailTile> {
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
              side: BorderSide(
                  color: aPartGray10,
                  style: BorderStyle.solid,
                  width: 1.0)),
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
                  Expanded(
                    child: SizedBox(),
                    flex: 3,
                  ),
                  Expanded(
                    child: Text(
                      'Games',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: aLightGray,
                        fontSize: 14,
                        fontWeight: (FontWeight.normal),
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Text(
                      'Win',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: aLightGray,
                        fontSize: 14,
                        fontWeight: (FontWeight.normal),
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Text(
                      'Loss',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: aLightGray,
                        fontSize: 14,
                        fontWeight: (FontWeight.normal),
                      ),
                    ),
                    flex: 1,
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
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () => widget.onProfileClick!(),
                      child: CircleAvatar(
                        backgroundColor: aLightGray,
                        radius: 30,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(widget.profileImg!),
                          radius: 29,
                        ),
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Text(
                      widget.name!,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: aBlack,
                        fontSize: 14,
                        fontWeight: (FontWeight.bold),
                      ),
                    ),
                    flex: 2,
                  ),
                  Expanded(
                    child: Text(
                      '${widget.games}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: aBlack,
                        fontSize: 14,
                        fontWeight: (FontWeight.bold),
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Text(
                      '${widget.win}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: aGreen,
                        fontSize: 14,
                        fontWeight: (FontWeight.bold),
                      ),
                    ),
                    flex: 1,
                  ),
                  Expanded(
                    child: Text(
                      '${widget.loss}',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: aRed,
                        fontSize: 14,
                        fontWeight: (FontWeight.bold),
                      ),
                    ),
                    flex: 1,
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
