import 'package:flutter/material.dart';
import '../utils/app_labels.dart';
import '../utils/app_colors.dart';

class AutoCompleteEditField extends StatefulWidget {
  final String? hint;
  final String? displayForOption;
  final Function? onSelection;
  final List<String>? listOptions;

  const AutoCompleteEditField({
    Key? key,
    this.displayForOption,
    this.onSelection,
    this.listOptions, this.hint,
  }) : super(key: key);

  @override
  State<AutoCompleteEditField> createState() => _AutoCompleteEditFieldState();
}

class _AutoCompleteEditFieldState extends State<AutoCompleteEditField> {
  static String _displayStringForOption(String? option) => option!;

  @override
  Widget build(BuildContext context) {
    return Autocomplete<String>(
      fieldViewBuilder:
          (context, textEditingController, _focusNode, onFieldSubmitted) {
        return TextFormField(
          focusNode: _focusNode,
          controller: textEditingController,
          decoration: InputDecoration(
            counter: SizedBox(
              height: 0.0,
              width: 0.0,
            ),
            contentPadding:
                EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
            hintText: widget.hint ?? leagueOptHint,
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
          ),
        );
      },

      displayStringForOption: _displayStringForOption,
      optionsBuilder: (TextEditingValue textEditingValue) {
        if (textEditingValue.text == '') {
          return const Iterable<String>.empty();
        }
        return widget.listOptions!.where((String? option) {
          return option
              .toString()
              .toLowerCase()
              .contains(textEditingValue.text.toLowerCase());
        });
      },
      optionsViewBuilder: (context, onSelec, options) {

         return Align(
            alignment: Alignment.topLeft,
            child: Material(
              color: aWhite,
              elevation: 4.0,
              // size works, when placed here below the Material widget
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10,vertical: 0),
                  width: MediaQuery.of(context).size.width - 40,
                  child: ListView.separated(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8.0),
                    itemCount: options.length,
                    separatorBuilder: (context, i) {
                      return Divider();
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return GestureDetector(child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Text(options.elementAt(index),style: TextStyle(fontSize: 14.0),),
                      ),
                      onTap: (){
                        onSelec(options.elementAt(index));
                      },);
                      // some child here
                    },
                  )
              ),
            )
        );
      },
      onSelected: (String selection) {
        // print(widget.listOptions!.indexOf(selection));
        widget.onSelection!(selection, widget.listOptions!.indexOf(selection));
        // debugPrint('You just selected ${_displayStringForOption(selection)}');
      },
    );
  }
}
