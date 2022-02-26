import 'package:flutter/material.dart';

class ChattingListTile extends StatefulWidget {
  final bool? isMe;
  final String? msg;
  final String? time;

  const ChattingListTile({Key? key, this.isMe, this.msg, this.time})
      : super(key: key);

  @override
  _ChattingListTileState createState() => _ChattingListTileState();
}

class _ChattingListTileState extends State<ChattingListTile> {
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment:
            widget.isMe! ? CrossAxisAlignment.end : CrossAxisAlignment.start,
        mainAxisAlignment:
            widget.isMe! ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          Container(
              margin: EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              padding: EdgeInsets.all(10),
              decoration: ShapeDecoration(
                color: Color(widget.isMe! ?0X1F808080 : 0XFFFFFF),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12.0),
                    side: BorderSide(
                        color: Color(0X1F808080),
                        style: BorderStyle.solid,
                        width: 1.0)),
              ),
              child :Text(widget.msg!),
          ),
          Padding(
            padding: EdgeInsets.only(right: 10,left: 10,bottom: 10),
            child: Text(widget.time!,style: TextStyle(color: Color(0XFF808080),fontSize: 10 ),),
          ),
        ]);
  }
}
