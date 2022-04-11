import 'dart:ui';

import 'package:flutter/material.dart';

import '../components/elevated_buttons.dart';
import '../utils/app_colors.dart';

class AppDialog extends StatefulWidget {
  final String? title;
  final List<Widget>? body;
  final String? btnNegativeText;
  final String? btnPositiveText;
  final bool? isBtnPositiveAvail;
  final Function? onPositiveClick;
  final Function? onNegativeClick;

  const AppDialog(
      {Key? key,
      required this.title,
      required this.body,
      this.btnNegativeText,
      this.btnPositiveText,
      this.isBtnPositiveAvail = false,
      this.onPositiveClick,
      this.onNegativeClick})
      : super(key: key);

  @override
  State<AppDialog> createState() => _AppDialogState();
}

class _AppDialogState extends State<AppDialog> with SingleTickerProviderStateMixin {
  AnimationController? _animationController;

  @override
  void initState() {
    _animationController = AnimationController(vsync: this, duration: const Duration(milliseconds: 300));
    _animationController?.forward();
    _animationController?.addListener(() {
      setState(() {});
    });

    super.initState();
  }

  @override
  void dispose() {
    _animationController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetAnimationCurve: Curves.easeIn,
      insetAnimationDuration: const Duration(seconds: 20),
      backgroundColor: aTransparent,
      elevation: 0.0,
      insetPadding: EdgeInsets.all(10),
      child: BackdropFilter(
        filter: ImageFilter.blur(
            sigmaX: 2.0 * _animationController!.value,
            sigmaY: 2.0 * _animationController!.value,
            tileMode: TileMode.decal),
        child: Card(
          color: aWhite,
          margin: EdgeInsets.symmetric(horizontal: 10.0 * _animationController!.value, vertical: 30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.0),
          ),
          elevation: 2.0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(12.0),
            child: Wrap(children: [
              Container(
                alignment: Alignment.center,
                child: Text(
                  widget.title!,
                  maxLines: 1,
                  style: TextStyle(
                      fontSize: 18.0 * _animationController!.value, color: aWhite, fontWeight: FontWeight.bold),
                ),
                color: aGreen,
                height: 56,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: SingleChildScrollView(
                  physics: const BouncingScrollPhysics(),
                  child: Column(
                    children: widget.body!,
                    // child: Column(children: [
                    //
                    // ]),
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Flexible(
                    flex: 1,
                    fit: FlexFit.loose,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ElevatedButtons(
                        borderColor: aLightGray,
                        buttonColor: aWhite,
                        labelColor: aLightGray,
                        fontSize: 15.0 * _animationController!.value,
                        label: widget.btnNegativeText,
                        onClick: () => widget.onNegativeClick!(),
                      ),
                    ),
                  ),
                  if (widget.isBtnPositiveAvail!)
                    Flexible(
                      flex: 1,
                      fit: FlexFit.loose,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButtons(
                          borderColor: aGreen,
                          buttonColor: aGreen,
                          labelColor: aWhite,
                          fontSize: 15.0 * _animationController!.value,
                          onClick: () => widget.onPositiveClick!(),
                          label: widget.btnPositiveText,
                        ),
                      ),
                    ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
