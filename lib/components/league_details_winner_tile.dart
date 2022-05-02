import 'package:flutter/material.dart';

import '../components/profile_pic_avatar.dart';
import '../components/iconic_text_view.dart';
import '../components/stats_tile.dart';
import '../utils/app_colors.dart';

class LeagueDetailsWinnerTile extends StatefulWidget {
  final String? winnerName;
  final String? winnerLocation;
  final int? winnerAge;
  final int? matchesCount;
  final int? wonCount;
  final int? drawCount;
  final int? lostCount;
  final String? rate;
  final String? winnerProfilePic;

  const LeagueDetailsWinnerTile({
    Key? key,
    this.winnerName,
    this.winnerLocation,
    this.winnerProfilePic,
    this.winnerAge,
    this.matchesCount,
    this.wonCount,
    this.drawCount,
    this.lostCount,
    this.rate,
  }) : super(key: key);

  @override
  State<LeagueDetailsWinnerTile> createState() => _LeagueDetailsWinnerTileState();
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
                  'assets/vector_round_winner.png',
                  width: MediaQuery.of(context).size.width,
                ),
              ),
              top: -15,
            ),
            Positioned(
              child: Center(
                child: Image.asset(
                  'assets/winner_cel.png',
                  width: 150.0,
                ),
              ),
              top: 0,
            ),
            Padding(
              padding: EdgeInsets.all(10),
              child: Wrap(
                crossAxisAlignment: WrapCrossAlignment.center,
                alignment: WrapAlignment.center,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ProfilePicAvatar(
                          radius: 40,
                          path: widget.winnerProfilePic,
                        ),
                      ),
                      Text(
                        widget.winnerName ?? '',
                        maxLines: 1,
                        style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: IconicTextView(
                          icon: Icons.location_pin,
                          label: widget.winnerLocation ?? '',
                          align: MainAxisAlignment.end,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        fit: FlexFit.loose,
                        child: IconicTextView(
                            icon: Icons.circle,
                            iconColor: aLightGray,
                            iconSize: 5.0,
                            label: '${widget.winnerAge} years'),
                      ),
                    ],
                  ),
                  Divider(
                    color: aPartGray10,
                    height: 1,
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: StatsTile(
                            title: 'Matches',
                            subtitle: '${widget.matchesCount}',
                            colors: aBlack,
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: StatsTile(
                            title: 'Victories',
                            subtitle: '${widget.wonCount}',
                            colors: aGreen,
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: StatsTile(
                            title: 'Defeats',
                            subtitle: '${widget.lostCount}',
                            colors: aRed,
                          ),
                          flex: 1,
                        ),
                        Expanded(
                          child: StatsTile(
                            title: 'Rating',
                            subtitle: '${widget.rate}',
                            colors: aBlue,
                          ),
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
