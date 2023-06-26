import 'package:flutter/material.dart';

import '../components/profile_pic_avatar.dart';
import '../components/iconic_text_view.dart';
import '../components/rate_badges.dart';
import '../utils/app_colors.dart';

//created on 20220315
//20230626 -- Change design of Submit score List tile
class SubmitScoreListTile extends StatefulWidget {
  final String? profileImg;
  final String? userName;
  final String? rating;
  final String? playerLocation;
  final Function? onTileClick;
  final Function? onProfileClick;

  const SubmitScoreListTile(
      {Key? key,
      required this.profileImg,
      required this.userName,
      required this.rating,
      this.onTileClick,
      this.onProfileClick,
      this.playerLocation})
      : super(key: key);

  @override
  State<SubmitScoreListTile> createState() => _SubmitScoreListTileState();
}

class _SubmitScoreListTileState extends State<SubmitScoreListTile> {
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
              side: BorderSide(color: aPartGray10, style: BorderStyle.solid, width: 1.0)),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(
              fit: FlexFit.tight,
              flex: 1,
              child: Padding(
                padding: const EdgeInsets.all(5.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () => widget.onProfileClick!(),
                          child: ProfilePicAvatar(
                            path: widget.profileImg,
                            radius: 20,
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 5.0),
                            child: Wrap(
                              children: [
                                Text(
                                  widget.userName!,
                                  textAlign: TextAlign.start,
                                  style: TextStyle(
                                    color: aBlack,
                                    fontSize: 15,
                                    fontWeight: (FontWeight.bold),
                                  ),
                                ),
                                IconicTextView(
                                  icon: Icons.location_pin,
                                  label: widget.playerLocation!,
                                  labelTextColor: aLightGray,
                                )
                              ],
                            ),
                          ),
                          flex: 4,
                        ),
                      ],
                    ),

                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: RateBadges(
                rate: widget.rating!,
                textSize: 16,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
