import 'package:flutter/material.dart';
import 'package:tenniston/utils/app_colors.dart';

class EditTextFormField extends StatefulWidget {
  final FocusNode? focusNode;
  final TextEditingController? textController;
  final Function? onTextChange;
  final Function? onTap;
  final String? hint;
  final Widget? suffixIcon;
  final Widget? prefixIcon;

  const EditTextFormField(
      {Key? key,
      this.focusNode,
      this.textController,
      this.onTextChange,
      this.onTap,
      this.hint,
      this.suffixIcon,
      this.prefixIcon})
      : super(key: key);

  @override
  State<EditTextFormField> createState() => _EditTextFormFieldState();
}

class _EditTextFormFieldState extends State<EditTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50.0,
      alignment: Alignment.center,
      margin: EdgeInsets.all(10),
      child: TextFormField(
        focusNode: widget.focusNode,
        controller: widget.textController,
        onTap: () => widget.onTap!(),
        onChanged: (value) => widget.onTextChange!(value),
        textAlign: TextAlign.justify,
        decoration: InputDecoration(
            hintText: widget.hint,
            focusColor: Colors.black,
            fillColor: aWhite,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100.0),
              borderSide: const BorderSide(
                color: aLightGray,
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100.0),
              borderSide: const BorderSide(
                color: aLightGray,
                width: 1.0,
              ),
            ),
            suffixIcon: widget.suffixIcon,
            prefixIcon: widget.prefixIcon),
      ),
    );
  }
}
