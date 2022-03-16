import 'package:flutter/material.dart';
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
                            child: CircleAvatar(
                              backgroundColor: aLightGray,
                              radius: 30,
                              child: CircleAvatar(
                                backgroundImage: AssetImage(widget.playerImg!),
                                //'assets/Ellipse 1.png'
                                radius: 29,
                              ),
                            ),
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
                              iconSize: 16.0,
                              labelTextSize: 10.0,
                              label: widget.playerLocation!),
                          Wrap(
                            // key: widget.btnKey,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            direction: Axis.horizontal,
                            alignment: WrapAlignment.spaceEvenly,
                            spacing: 10.0,
                            children: [
                              ElevatedButtons(
                                height: 30.0,
                                label: viewProfile,
                                fontSize: 12.0,
                                width: 100,
                                onClick: () => widget.onViewProfile!(),
                              ),
                              ElevatedButtons(
                                width: 100,
                                height: 30.0,
                                label: submitScore,
                                fontSize: 12.0,
                                onClick: () => widget.onSubmitScore!(),
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
