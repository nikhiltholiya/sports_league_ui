import 'package:flutter/material.dart';

class UpComingMatchCard extends StatefulWidget {
  const UpComingMatchCard({Key? key}) : super(key: key);

  @override
  _UpComingMatchCardState createState() => _UpComingMatchCardState();
}

class _UpComingMatchCardState extends State<UpComingMatchCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 155,
      decoration: BoxDecoration(
          border: Border.all(color: Color.fromRGBO(128, 128, 128, 0.1)),
          borderRadius: BorderRadius.circular(12),
          color: Color.fromRGBO(128, 128, 128, 0.05)),
      child: Column(
        children: [
          headerCard(),
          SizedBox(
            height: 10,
          ),
          rowCard(
            img: "assets/Vector (1).png",
            text: "CBS Arena, Los Angeles, CA",
          ),
          SizedBox(
            height: 10,
          ),
          rowCard(
            img: "assets/Vector (4).png",
            text: "Saturday 21st Jan",
          ),
          SizedBox(
            height: 10,
          ),
          rowCard(
            img: "assets/Subtract.png",
            text: "Single",
          )
        ],
      ),
    );
  }
}

class rowCard extends StatelessWidget {
  final img, text;
  const rowCard({
    Key? key,
    this.img,
    this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 15,
        ),
        Image.asset(img),
        SizedBox(
          width: 10,
        ),
        Text(text)
      ],
    );
  }
}

class headerCard extends StatelessWidget {
  const headerCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, right: 14, left: 14),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/Ellipse 1.png",
            height: 42,
            width: 42,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            "John S.",
            style: TextStyle(
                fontSize: 18, fontWeight: FontWeight.w600, color: Colors.black),
          ),
          Text(
            "vs Novak J.",
            style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Color(0xff808080)),
          ),
          Spacer(),
          Text("Open")
        ],
      ),
    );
  }
}
