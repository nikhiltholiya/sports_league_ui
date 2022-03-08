import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenniston/components/decorated_app_header_tile.dart';
import 'package:tenniston/components/iconic_text_view.dart';
import 'package:tenniston/utils/app_colors.dart';

class LeagueDetailsHeaderTile extends StatefulWidget {
  final GlobalKey? stackKey;
  final GlobalKey? textTitleKey;
  final GlobalKey? imgLocationKey;
  final GlobalKey? imgCalendarKey;
  final GlobalKey? textDescKey;
  final GlobalKey? textStatusKey;
  final int? leagueStatus;


  const LeagueDetailsHeaderTile(
      {Key? key,
      required this.stackKey,
      required this.textTitleKey,
      required this.imgLocationKey,
      required this.imgCalendarKey,
      required this.textDescKey,
      required this.textStatusKey, this.leagueStatus})
      : super(key: key);

  @override
  State<LeagueDetailsHeaderTile> createState() =>
      _LeagueDetailsHeaderTileState();
}

class _LeagueDetailsHeaderTileState extends State<LeagueDetailsHeaderTile> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          key: widget.stackKey,
          child: DecoratedAppHeader(),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Stack(
            alignment: Alignment.topLeft,
            fit: StackFit.loose,
            children: [
              Card(
                margin: EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                elevation: 2.0,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Stack(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, left: 10.0, right: 10.0, bottom: 10),
                        child: Wrap(
                          runAlignment: WrapAlignment.spaceBetween,
                          alignment: WrapAlignment.start,
                          direction: Axis.horizontal,
                          crossAxisAlignment: WrapCrossAlignment.start,
                          children: [
                            Text(
                              'Coventry Tennis League',
                              maxLines: 1,
                              key: widget.textTitleKey,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              key: widget.imgLocationKey,
                              child: IconicTextView(
                                  icon: Icons.location_pin,
                                  label: 'CBS Arena, Los Angeles, CA',
                                  labelTextSize: 14.0),
                            ),
                            SizedBox(
                              key: widget.imgCalendarKey,
                              child: IconicTextView(
                                icon: Icons.calendar_today,
                                label:
                                    'Sat 21st Jan 2022  -  Sat 20th Feb 2022',
                                labelTextSize: 14.0,
                              ),
                            ),
                            SizedBox(
                              key: widget.textDescKey,
                              child: Text(
                                'Friendly, competitive tennis on Coventry\'s public courts.\nLocal Tennis Leagues is for anyone, no matter your tennis experience. Play YOUR way.',
                                maxLines: 4,
                                softWrap: true,
                                textAlign: TextAlign.start,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: aLightGray,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        child: Image.asset(
                          'assets/green_tennis_ball_icon_green.png',
                        ),
                        top: -25,
                        right: -25,
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                  child: Card(
                    key: widget.textStatusKey,
                    elevation: 2.0,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    color: widget.leagueStatus == 0 ? aYellow : aGreen,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10.0, vertical: 5.0),
                      child: Text(
                        widget.leagueStatus == 0 ? 'Ongoing' : 'Completed',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  top: 10.0,
                  left: 25.0)
            ],
          ),
        ),
      ],
    );
  }
}
