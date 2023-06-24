import 'package:flutter/material.dart';

import '../components/profile_pic_avatar.dart';
import '../utils/app_colors.dart';

//created on 20220408
class AllMessagesListTile extends StatefulWidget {
  final String? profileImg;
  final String? userName;
  final String? address;
  final Function? onTileClick;
  final Function? onProfileClick;
  final bool? isRead;

  const AllMessagesListTile(
      {Key? key,
      required this.profileImg,
      required this.userName,
      required this.address,
      this.isRead = false,
      this.onTileClick,
      this.onProfileClick})
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
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Row(
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
                  child: Text(
                    widget.userName!,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      color: widget.isRead! ? aLightGray : aBlack,
                      fontSize: 15,
                      fontWeight: (FontWeight.bold),
                    ),
                  ),
                ),
                flex: 4,
              ),

              //20230624 Adding city Name in address.
              Container(
                padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
                decoration: ShapeDecoration(
                  color: aPartGray5,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    side: BorderSide(color: aGreen20, style: BorderStyle.solid, width: 1.0),
                  ),
                ),
                child: Text(widget.address!, style: TextStyle(fontSize: 10)),
              )
            ],
          ),
        ),
      ),
    );
  }
}
