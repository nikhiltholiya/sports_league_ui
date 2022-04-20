import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../utils/app_colors.dart';

class EditTextFormField extends StatefulWidget {
  final FocusNode? focusNode;
  final TextEditingController? textController;
  final Function? onTextChange;
  final Function? onTap;
  final String? hint;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final TextAlign? textAlign;
  final TextInputType? textInputType;
  final List<TextInputFormatter>? inputFormatter;
  final int? maxLength;
  final bool? isObscure;
  final FormFieldValidator<String>? validator;
  final TextInputAction? textInputAction;
  final bool? isEnable;

  const EditTextFormField(
      {Key? key,
      this.focusNode,
      this.textController,
      required this.onTextChange,
      required this.onTap,
      this.hint,
      this.suffixIcon,
      this.prefixIcon,
      this.textInputType = TextInputType.text,
      this.textAlign = TextAlign.justify,
      this.inputFormatter,
      this.maxLength = 999,
      this.isObscure = false,
      this.validator = null,
      this.textInputAction = TextInputAction.none,
      this.isEnable = true})
      : super(key: key);

  @override
  State<EditTextFormField> createState() => _EditTextFormFieldState();
}

class _EditTextFormFieldState extends State<EditTextFormField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
      child: TextFormField(
        validator: widget.validator,
        obscureText: widget.isObscure!,
        inputFormatters: widget.inputFormatter,
        // inputFormatters: <TextInputFormatter>[
        //     /*widget.isPercentage!
        //         ? FilteringTextInputFormatter.allow(
        //         RegExp(r'^[1-9][0-9]?$|^100$'))
        //         : */FilteringTextInputFormatter.allow(
        //       RegExp(r'^\d+?\d*'),
        //     )
        // ],

        maxLength: widget.maxLength,
        keyboardType: widget.textInputType,
        focusNode: widget.focusNode,
        controller: widget.textController,
        onTap: () => widget.onTap ?? null,
        onChanged: (value) => widget.onTextChange!(value),
        textAlign: widget.textAlign!,
        enabled: widget.isEnable,
        decoration: InputDecoration(
            counterStyle: TextStyle(height: 0.0),
            counterText: '',
            //Remove space for counter
            contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
            hintText: widget.hint,
            focusColor: Colors.black,
            fillColor: aWhite,
            filled: true,
            errorText: null,
            errorStyle: TextStyle(
              fontSize: 10,
              color: aRed,
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100.0),
              borderSide: const BorderSide(
                color: aRed,
                width: 1.0,
              ),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100.0),
              borderSide: const BorderSide(
                color: aRed,
                width: 1.0,
              ),
            ),
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
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(100.0),
              borderSide: const BorderSide(
                color: aGreen,
                width: 1.0,
              ),
            ),
            suffixIcon: widget.suffixIcon,
            prefixIcon: widget.prefixIcon),
        cursorColor: aGreen,
      ),
    );
  }
}
