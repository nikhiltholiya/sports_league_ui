import 'package:flutter/material.dart';
import 'package:tenniston/components/decorated_app_header_tile.dart';
import 'package:tenniston/components/iconic_text_view.dart';
import 'package:tenniston/utils/app_colors.dart';

class LeagueDetailsHeaderTile extends StatefulWidget {
  final String? playerName;
  final String? leagueLocation;
  final String? leagueDate;
  final String? leagueDesc;
  final String? leagueStatus;

  final GlobalKey? stackKey;
  final GlobalKey? textTitleKey;
  final GlobalKey? imgLocationKey;
  final GlobalKey? imgCalendarKey;
  final GlobalKey? textDescKey;
  final GlobalKey? textStatusKey;

  const LeagueDetailsHeaderTile({
    Key? key,
    required this.leagueStatus,
    required this.playerName,
    required this.leagueLocation,
    required this.leagueDate,
    required this.leagueDesc,
     this.stackKey,
     this.textTitleKey,
     this.imgLocationKey,
     this.imgCalendarKey,
     this.textDescKey,
     this.textStatusKey,
  }) : super(key: key);

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
                              widget.playerName ?? 'playerName',
                              maxLines: 1,
                              key: widget.textTitleKey,
                              style: TextStyle(
                                  fontSize: 18, fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              key: widget.imgLocationKey,
                              child: IconicTextView(
                                  icon: Icons.location_pin,
                                  label: widget.leagueLocation?? '',
                                  labelTextSize: 14.0),
                            ),
                            SizedBox(
                              key: widget.imgCalendarKey,
                              child: IconicTextView(
                                icon: Icons.calendar_today,
                                label: widget.leagueDate ??  '',
                                labelTextSize: 14.0,
                              ),
                            ),
                            SizedBox(
                              key: widget.textDescKey,
                              child: Text(
                                widget.leagueDesc ??  '',
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
                  top: 10.0,
                  left: 25.0)
            ],
          ),
        ),
      ],
    );
  }
}
