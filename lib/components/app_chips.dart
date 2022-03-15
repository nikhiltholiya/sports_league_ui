import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

//Created on 20220315
class AppChip extends StatefulWidget {
  final String? Label;
  final Function? onChipTap;
  final bool? isChipSelected;
  final bool? isAvatar;
  final IconData? iconData;

  const AppChip({
    Key? key,
    this.Label,
    this.onChipTap,
    this.isChipSelected,
    this.isAvatar = false,
    this.iconData,
  }) : super(key: key);

  @override
  State<AppChip> createState() => _AppChipState();
}

class _AppChipState extends State<AppChip> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Chip(
          label: Text(
            widget.Label!,
            style: TextStyle(
                color: widget.isChipSelected! ? aWhite : aLightGray,
                fontSize: 14.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
          backgroundColor: widget.isAvatar!? aWhite : widget.isChipSelected! ? aGreen : aPartGray10,
          avatar: widget.isAvatar!
              ? Icon(
                  widget.iconData,
                  color: aBlue,
                  size: 20,
                )
              : null,
          elevation: 0.5,
          shape: RoundedRectangleBorder(
              side:  widget.isAvatar!? BorderSide(color: aLightGray) : BorderSide.none,
              borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
  }
}
