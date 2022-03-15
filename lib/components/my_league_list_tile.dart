import 'package:flutter/material.dart';
import '../components/iconic_text_view.dart';
import '../utils/app_colors.dart';

//Created on 20220312
class MyLeagueListTile extends StatefulWidget {
  final String? leagueTitle;
  final String? profileImg;
  final String? leagueDate;
  final String? leagueLocation;
  final String? leagueStatus;

  final Function? onTileClick;
  final Function? onProfileClick;

  const MyLeagueListTile(
      {Key? key,
      this.leagueTitle,
      this.profileImg,
      this.onTileClick,
      this.onProfileClick,
      this.leagueDate,
      this.leagueLocation,
      this.leagueStatus})
      : super(key: key);

  @override
  _MyLeagueListTileState createState() => _MyLeagueListTileState();
}

class _MyLeagueListTileState extends State<MyLeagueListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => widget.onTileClick!(),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 15.0),
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
              child: Padding(
                padding: const EdgeInsets.only(top: 15,right: 5,left: 5,bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    GestureDetector(
                      onTap: () => widget.onProfileClick!(),
                      child: CircleAvatar(
                        backgroundColor: aLightGray,
                        radius: 25,
                        child: CircleAvatar(
                          backgroundImage: AssetImage(widget.profileImg!),
                          radius: 24,
                        ),
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      fit: FlexFit.tight,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 3),
                            child: Text(
                              widget.leagueTitle!,
                              style: TextStyle(
                                color: aBlack,
                                fontSize: 14,
                                fontWeight: (FontWeight.bold),
                              ),
                            ),
                          ),
                          IconicTextView(
                              icon: Icons.location_pin,
                              label: widget.leagueLocation ?? '',
                              labelTextSize: 12.0),
                          IconicTextView(
                            icon: Icons.calendar_today,
                            label: widget.leagueDate ?? '',
                            labelTextSize: 12.0,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
              child: Card(
                elevation: 2.0,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
                color: widget.leagueStatus?.toLowerCase() == 'ongoing'
                    ? aYellow
                    : aGreen,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10.0, vertical: 5.0),
                  child: Text(
                    widget.leagueStatus ?? '',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              right: 15.0)
        ],
      ),
    );
  }
}
