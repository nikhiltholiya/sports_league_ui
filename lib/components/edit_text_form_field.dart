import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:tenniston/utils/app_colors.dart';

class EditTextFormField extends StatefulWidget {
  final FocusNode? focusNode;
  final TextEditingController? textController;
  final Function? onTextChange;
  final Function? onTap;
  final String? hint;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextInputType? textInputType;
  final TextAlign? textAlign;

  const EditTextFormField(
      {Key? key,
      this.focusNode,
      this.textController,
      this.onTextChange,
      this.onTap,
      this.hint,
      this.suffixIcon,
      this.prefixIcon,
      this.textInputType = TextInputType.name,
      this.textAlign = TextAlign.justify})
      : super(key: key);

  @override
  State<EditTextFormField> createState() => _EditTextFormFieldState();
}

class _EditTextFormFieldState extends State<EditTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: kToolbarHeight,
      alignment: Alignment.center,
      margin: EdgeInsets.all(5),

      child: TextFormField(
        // inputFormatters: <TextInputFormatter>[
        //     /*widget.isPercentage!
        //         ? FilteringTextInputFormatter.allow(
        //         RegExp(r'^[1-9][0-9]?$|^100$'))
        //         : */FilteringTextInputFormatter.allow(
        //       RegExp(r'^\d+?\d*'),
        //     )
        // ],
        keyboardType: widget.textInputType,
        focusNode: widget.focusNode,
        controller: widget.textController,
        onTap: () => widget.onTap!(),
        onChanged: (value) => widget.onTextChange!(value),
        textAlign: widget.textAlign!,
        decoration: InputDecoration(
            contentPadding: EdgeInsets.zero,
            hintText: widget.hint,
            focusColor: Colors.black,
            fillColor: aWhite,
            filled: true,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100.0),
              borderSide: const BorderSide(
                color: aPartGray30,
                width: 1.0,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100.0),
              borderSide: const BorderSide(
                color: aPartGray30,
                width: 1.0,
              ),
            ),
            suffixIcon: widget.suffixIcon,
            prefixIcon: widget.prefixIcon),
      ),
    );
  }
}
