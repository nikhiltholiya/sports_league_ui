import 'package:flutter/cupertino.dart';

import '../utils/app_colors.dart';

//Created on 20220304
class IconicTextView extends StatefulWidget {
  final IconData? icon;
  final Color? iconColor;
  final double? iconSize;
  final String? label;
  final double? labelTextSize;
  final Color? labelTextColor;
  final MainAxisAlignment? align;

  const IconicTextView(
      {Key? key,
      required this.icon,
      this.iconColor = aBlue,
      this.iconSize = 16.0,
      required this.label,
      this.labelTextSize = 14.0,
      this.align = MainAxisAlignment.start,
      this.labelTextColor = aBlack})
      : super(key: key);

  @override
  State<IconicTextView> createState() => _IconicTextViewState();
}

class _IconicTextViewState extends State<IconicTextView> {
  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: widget.align!,
      children: [
        Padding(
          padding: EdgeInsets.all(5.0),
          child: Icon(widget.icon!, size: widget.iconSize!, color: widget.iconColor!),
          // child: Image.asset('assets/Vector (1).png',color: Color(0xFF3E4982),fit: BoxFit.none),
        ),
        Flexible(
          flex: 1,
          fit: FlexFit.loose,
          child: Text(
            widget.label!,
            style: TextStyle(
                color: widget.labelTextColor!, fontWeight: FontWeight.normal, fontSize: widget.labelTextSize!),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            softWrap: true,
          ),
        ),
      ],
    );
  }
}
