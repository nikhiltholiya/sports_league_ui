import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

//Created on 20220304
class ElevatedButtons extends StatefulWidget {
  final String? label;
  final Function? onClick;
  final double? width;
  final double? height;
  final double? radius;
  final double? fontSize;
  final bool? isIcon;
  final Widget? icon;
  final Color? labelColor;
  final Color? buttonColor;
  final Color? borderColor;


  const ElevatedButtons({Key? key,
    required this.label,
    required this.onClick,
    required this.labelColor,
    required this.buttonColor,
    required this.borderColor,
    this.width = 120,
    this.height = 50.0,
    this.radius = 100.0,
    this.fontSize = 15,
    this.isIcon = false,
    this.icon,
  })
      : super(key: key);

  @override
  State<ElevatedButtons> createState() => _ElevatedButtonsState();
}

class _ElevatedButtonsState extends State<ElevatedButtons> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => widget.onClick!(),
      child: SizedBox(
        width: widget.width!,
        height: widget.height,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (widget.isIcon!)
              widget.icon!,
            Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Center(
                  child: Text(
                    widget.label!,
                    textAlign: TextAlign.center,
                    maxLines: 1,
                    style: TextStyle(
                      fontSize: widget.fontSize!,
                      color: widget.labelColor,
                    ),
                  ),
                ))
          ],
        ),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.radius!),
              side: BorderSide(
                  color: widget.borderColor!,
                  width: 1.0,
                  style: BorderStyle.solid)),
        ),

        backgroundColor:
        MaterialStateProperty.all(widget.buttonColor),
        elevation: MaterialStateProperty.all(2.0),
        // textStyle: MaterialStateProperty.all(TextStyle(backgroundColor: Colors.black,))
      ),
    );
  }
}
