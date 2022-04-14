import 'package:flutter/material.dart';

import '../components/bordered_circle_avatar.dart';
import '../utils/app_colors.dart';

//created on 20220414
class DashboardDrawerListTile extends StatelessWidget {
  final IconData? menuIcon;
  final String? menuName;
  final Function? onMenuClick;

  const DashboardDrawerListTile(
      {Key? key, this.menuIcon, this.menuName, this.onMenuClick,})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => onMenuClick!(),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        padding: EdgeInsets.all(2),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [

            CircleAvatar(
              backgroundColor: aPartGray10,
            child:  Padding(
              padding: EdgeInsets.all(5.0),
              child: Icon(menuIcon, size: 25, color: aBlue),
            ),),
            Expanded(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: Text(
                  menuName!,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: aBlack,
                    fontSize: 15,
                    fontWeight: (FontWeight.normal),
                  ),
                ),
              ),
              flex: 4,
            ),
          ],
        ),
      ),
    );
  }
}