import 'package:flutter/material.dart';
import 'package:tenniston/components/elevated_buttons.dart';
import 'package:tenniston/components/iconic_text_view.dart';
import 'package:tenniston/components/rate_badges.dart';
import 'package:tenniston/utils/app_colors.dart';

class ChattingListHeaderTile extends StatefulWidget {
  final bool? isSilverCollapsed;
  final String? playerName;
  final String? playerImg;
  final String? playerLocation;
  final String? playerRate;
  final Function? onViewProfile;

  const ChattingListHeaderTile(
      {Key? key,
      this.isSilverCollapsed = false,
      this.playerName = 'appName',
      this.playerImg = 'assets/Ellipse 1.png',
      this.playerLocation = '',
      this.playerRate = '0.0',
        this.onViewProfile})
      : super(key: key);

  @override
  State<ChattingListHeaderTile> createState() => _ChattingListHeaderTileState();
}

class _ChattingListHeaderTileState extends State<ChattingListHeaderTile> {
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(
          horizontal: widget.isSilverCollapsed! ? 0.0 : 10,
          vertical: widget.isSilverCollapsed! ? 0.0 : 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: widget.isSilverCollapsed! ? 0.0 : 3.0,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Wrap(
          direction: Axis.horizontal,
          crossAxisAlignment: WrapCrossAlignment.start,
          alignment: WrapAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: widget.isSilverCollapsed! ? 35.0 : 0.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    backgroundColor: aLightGray,
                    radius: 20,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(widget.playerImg!),
                      //'assets/Ellipse 1.png'
                      radius: 19,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget.playerName!,
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: widget.isSilverCollapsed! ? 15 : 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if (widget.isSilverCollapsed!)
                        IconicTextView(
                          icon: Icons.location_pin,
                          label: widget.playerLocation!,
                          labelTextSize: 12.0,
                        )
                    ],
                  ),
                ),
                RateBadges(
                  rate: widget.playerRate!,
                  textSize: 16.0,
                )
              ],
            ),
            if (!widget.isSilverCollapsed!)

                IconicTextView(
                    icon: Icons.location_pin,
                    iconSize: 16.0,
                    labelTextSize: 10.0,
                    label: widget.playerLocation!),

            if (!widget.isSilverCollapsed!)
              Center(
                child: ElevatedButtons(height: 30.0,label: 'View Profile',fontSize: 10.0,
                onClick: ()=> widget.onViewProfile!(),),
              )

          ],
        ),
      ),
    );
  }
}
