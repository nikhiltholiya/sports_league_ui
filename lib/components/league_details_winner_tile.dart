import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenniston/components/decorated_app_header_tile.dart';
import 'package:tenniston/components/iconic_text_view.dart';
import 'package:tenniston/components/stats_tile.dart';
import 'package:tenniston/utils/app_colors.dart';

class LeagueDetailsWinnerTile extends StatefulWidget {


  const LeagueDetailsWinnerTile(
      {Key? key,})
      : super(key: key);

  @override
  State<LeagueDetailsWinnerTile> createState() =>
      _LeagueDetailsWinnerTileState();
}

class _LeagueDetailsWinnerTileState extends State<LeagueDetailsWinnerTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(15.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: 2.0,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12.0),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Positioned(
              child: Center(
                  child: Image.asset(
                      'assets/Vector_round.png')),
              top: -15,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Wrap(
                crossAxisAlignment:
                WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment:
                    CrossAxisAlignment.center,
                    mainAxisAlignment:
                    MainAxisAlignment.center,
                    children: [
                      CircleAvatar(
                        child: Image.asset(
                            'assets/Ellipse 1.png'),
                        backgroundColor:
                        Color(0x808C8C8C),
                        radius: 40,
                      ),
                      Text(
                        'John Snow',
                        maxLines: 1,
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(flex: 1,
                        fit: FlexFit.loose,
                        child: IconicTextView(
                          icon: Icons.location_pin,
                          label: 'Gabriel',
                          align: MainAxisAlignment.end,
                        ),
                      ),
                      Flexible(flex: 1,
                        fit: FlexFit.loose,
                        child: IconicTextView(
                            icon: Icons.circle,
                            iconColor: aLightGray,
                            iconSize: 5.0,
                            label: '32 years'),
                      ),
                    ],
                  ),

                  Divider(
                    color: aPartGray10,
                    height: 1,
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.center,
                      crossAxisAlignment:
                      CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child:
                      StatsTile(title: 'Matches',subtitle: '32',colors: aBlack,),
                          flex: 1,
                        ),
                        Expanded(
                          child:
                          StatsTile(title: 'Victories',subtitle: '16',colors: aGreen,),
                          flex: 1,
                        ),
                        Expanded(
                          child: StatsTile(title: 'Defeats',subtitle: '16',colors: aRed,),
                          flex: 1,
                        ),
                        Expanded(
                          child: StatsTile(title: 'Rating',subtitle: '4.5',colors: aBlue,),
                          flex: 1,
                        ),
                      ],
                    ),
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
