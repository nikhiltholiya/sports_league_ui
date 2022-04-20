import 'package:flutter/material.dart';

import '../utils/app_colors.dart';

//Created on 20220315
class AppChip extends StatefulWidget {
  final String? Label;
  final Function? onChipTap;
  final bool? isChipActive;
  final bool? isAvatar;
  final IconData? iconData;

  const AppChip({
    Key? key,
    required this.Label,
    required this.onChipTap,
    required this.isChipActive,
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
      onTap: () => widget.onChipTap!(),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: Chip(
          label: Text(
            widget.Label!,
            style: TextStyle(color: widget.isChipActive! ? aWhite : aLightGray, fontSize: 14.0),
          ),
          padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: widget.isAvatar! ? 10.0 : 8.0),
          backgroundColor: widget.isAvatar!
              ? aWhite
              : widget.isChipActive!
                  ? aGreen
                  : aPartGray10,
          avatar: widget.isAvatar!
              ? Icon(
                  widget.iconData,
                  color: aBlue,
                  size: 20,
                )
              : null,
          elevation: 0.5,
          shape: RoundedRectangleBorder(
              side: widget.isAvatar! ? BorderSide(color: aPartGray30, width: 0.5) : BorderSide.none,
              borderRadius: BorderRadius.circular(20.0)),
        ),
      ),
    );
  }
}
