import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenniston/utils/app_colors.dart';
import 'package:tenniston/utils/app_labels.dart';

//Created on 20220312
class DropDownView extends StatefulWidget {
  final List<String>? cityList;
  final Function? onValueChange;
  // final String? dropdownValue;`
  const DropDownView({Key? key,/*  this.dropdownValue, */this.cityList,this.onValueChange}) : super(key: key);

  @override
  State<DropDownView> createState() => _DropDownViewState();
}

class _DropDownViewState extends State<DropDownView> {

  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
        decoration: InputDecoration(

          contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),

          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: aLightGray, width: 1.0),
            borderRadius: BorderRadius.circular(100),
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(color: aLightGray, width: 1.0),
            borderRadius: BorderRadius.circular(100),
          ),
          filled: true,
          fillColor: aWhite,
        ),
        style: const TextStyle(color: aBlack,fontSize: 16.0),
        hint: Text(joinLeagueByCity),
        // validator: (value) => value == null ? joinLeagueByCity : null,
        dropdownColor: aWhite,
        // value: widget.,
        onChanged: (value) => widget.onValueChange!(value),
        // onChanged: (String? newValue) {
        //   // setState(() {
        //   //   widget.dropdownValue! = newValue!;
        //   // });
        // },
        items: widget.cityList!
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value,style: TextStyle(fontSize: 16.0),),
          );
        }).toList());
  }
}
