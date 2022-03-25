import 'package:flutter/material.dart';
import '../components/bordered_circle_avatar.dart';
import '../components/decorated_app_header_tile.dart';
import '../utils/app_labels.dart';
import '../components/elevated_buttons.dart';
import '../components/iconic_text_view.dart';
import '../components/rate_badges.dart';
import '../utils/app_colors.dart';

class ChattingListHeaderTile extends StatefulWidget {
  final String? playerName;
  final String? playerImg;
  final String? playerLocation;
  final String? playerRate;
  final Function? onViewProfile;
  final Function? onSubmitScore;

  final GlobalKey? stackKey;
  final GlobalKey? textTitleKey;

  const ChattingListHeaderTile({
    Key? key,
    this.playerName = 'appName',
    this.playerImg = 'assets/Ellipse 1.png',
    this.playerLocation = '',
    this.playerRate = '0.0',
    this.onViewProfile,
    this.onSubmitScore,
    required this.stackKey,
    required this.textTitleKey,
  }) : super(key: key);

  @override
  State<ChattingListHeaderTile> createState() => _ChattingListHeaderTileState();
}

class _ChattingListHeaderTileState extends State<ChattingListHeaderTile> {
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
          child: Card(
            margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12.0),
            ),
            elevation: 3.0,
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Wrap(
                children: [
                  Stack(
                    children: [
                      Column(
                        key: widget.textTitleKey,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: BorderedCircleAvatar(radius: 30, path: 'assets/Ellipse 1.png'),
                          ),
                          Text(
                            widget.playerName!,
                            maxLines: 1,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          IconicTextView(
                              align: MainAxisAlignment.center,
                              icon: Icons.location_pin,
                              label: widget.playerLocation!),


                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.loose,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButtons(
                                      borderColor: aLightGray,
                                      buttonColor: aWhite,
                                      labelColor: aLightGray,
                                      label: viewProfile,
                                      onClick: () => widget.onViewProfile!(),
                                    ),
                                  ),
                                ),
                                Flexible(
                                  flex: 1,
                                  fit: FlexFit.loose,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: ElevatedButtons(
                                      borderColor: aGreen,
                                      buttonColor: aGreen,
                                      labelColor: aWhite,
                                      onClick: () => widget.onSubmitScore!(),
                                      label: submitScore,
                                    ),
                                  ),
                                ),
                              ],
                            ),

                        ],
                      ),
                      Positioned(
                        top: 10,
                        right: 15,
                        child: RateBadges(
                          rate: widget.playerRate!,
                          textSize: 16.0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
