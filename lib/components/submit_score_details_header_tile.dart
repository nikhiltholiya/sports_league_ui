import 'package:flutter/material.dart';

import '../components/profile_pic_avatar.dart';
import '../components/decorated_app_header_tile.dart';

//Created on 20220315
class SubmitScoreDetailsHeaderTile extends StatefulWidget {
  final String? player1Name;
  final String? player1ProfileImg;
  final GlobalKey? userKey;
  final GlobalKey? stackKey;

  final String? player2Name;
  final String? player2ProfileImg;

  const SubmitScoreDetailsHeaderTile({
    Key? key,
    this.player1Name,
    this.player1ProfileImg,
    this.player2Name,
    this.player2ProfileImg,
    required this.userKey,
    required this.stackKey,
  }) : super(key: key);

  @override
  State<SubmitScoreDetailsHeaderTile> createState() =>
      _SubmitScoreDetailsHeaderTileState();
}

class _SubmitScoreDetailsHeaderTileState
    extends State<SubmitScoreDetailsHeaderTile> {
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
                  Row(
                    key: widget.userKey,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        flex: 2,
                        child: UserDetails(
                          userName: widget.player1Name!,
                          imgUrl: widget.player1ProfileImg!,
                        ),
                      ),
                      Text(
                        'VS',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Expanded(
                        flex: 2,
                        child: UserDetails(
                          userName: widget.player2Name!,
                          imgUrl: widget.player2ProfileImg!,
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

class UserDetails extends StatefulWidget {
  final String? imgUrl;
  final String? userName;

  const UserDetails({Key? key, this.imgUrl, this.userName}) : super(key: key);

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: ProfilePicAvatar(
            path: widget.imgUrl!,
            radius: 31,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 3.0, bottom: 8.0),
          child: Text(
            widget.userName!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 14,
            ),
          ),
        ),
      ],
    );
  }
}
