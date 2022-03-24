import 'package:flutter/material.dart';
import '../utils/app_colors.dart';

//Created on 20220304
class ElevatedButtons extends StatefulWidget {
  final bool? primary;
  final String? label;
  final Function? onClick;
  final double? width;
  final double? height;
  final double? radius;
  final double? fontSize;

  const ElevatedButtons(
      {Key? key,
      this.primary = false,
      this.label,
      this.onClick,
      this.width = 120,
      this.height = 50.0,
      this.radius = 100.0,
      this.fontSize = 16})
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
        child: Center(
          child: Text(
            widget.label!,
            textAlign: TextAlign.center,
            maxLines: 1,
            style: TextStyle(
                fontSize: widget.fontSize!, color: widget.primary! ? aWhite : aLightGray,),
          ),
        ),
      ),
      style: ButtonStyle(
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(widget.radius!),
              side: BorderSide(
                  color: widget.primary! ? aGreen : aLightGray,
                  width: 1.0,
                  style: BorderStyle.solid)),
        ),

        backgroundColor:
            MaterialStateProperty.all(widget.primary! ? aGreen : aWhite),
        elevation: MaterialStateProperty.all(2.0),
        // textStyle: MaterialStateProperty.all(TextStyle(backgroundColor: Colors.black,))
      ),
    );
  }
}