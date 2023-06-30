import 'package:flutter/material.dart';

import '../components/profile_pic_avatar.dart';
import '../utils/app_colors.dart';
import 'iconic_text_view.dart';

//created on 20220315
//20230626 -- Change design of All Messages List tile
class AllMessagesListTile extends StatefulWidget {
  final String? profileImg;
  final String? userName;
  final String? playerLocation;
  final Function? onTileClick;
  final Function? onProfileClick;
  final bool? isRead;

  const AllMessagesListTile(
      {Key? key,
      required this.profileImg,
      required this.userName,
      this.isRead,
      this.onTileClick,
      this.onProfileClick,
      this.playerLocation})
      : super(key: key);

  @override
  State<AllMessagesListTile> createState() => _AllMessagesListTileState();
}

class _AllMessagesListTileState extends State<AllMessagesListTile> {
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
                                    color: widget.isRead! ? aLightGray : aBlack,
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
          ],
        ),
      ),
    );
  }
}
