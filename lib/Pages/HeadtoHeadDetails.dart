import 'package:flutter/material.dart';
import 'package:tenniston/components/Headtoheaddetailsmain.dart';
import 'package:tenniston/components/MatchCard.dart';

class HeadToHeadDetails extends StatefulWidget {
  const HeadToHeadDetails({Key? key}) : super(key: key);

  @override
  _HeadToHeadDetailsState createState() => _HeadToHeadDetailsState();
}

class _HeadToHeadDetailsState extends State<HeadToHeadDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: 240,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Container(
                  height: 190,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Color(0xff47BA79),
                        Color(0xff47BA79),
                        Color(0xff3E4982)
                      ]),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16))),
                ),
                Positioned(
                    left: 16,
                    right: 16,
                    top: 78,
                    child: Container(child: HeadToHeadDetailsMain())),
              ],
            ),
          ),
          for (int i = 0; i < 3; i++)
            Padding(
              padding: const EdgeInsets.only(top: 12, left: 16, right: 16),
              child: MatchCard(),
            )
        ],
      ),
    );
  }
}
