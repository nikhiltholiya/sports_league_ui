import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../Pages/base_activity.dart';
import '../bean/token_auth/token_auth.dart';
import '../components/app_dialog.dart';
import '../components/drop_down_view.dart';
import '../components/edit_text_form_field.dart';
import '../components/elevated_buttons.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/common.dart';
import '../utils/shared_preferences_utils.dart';

//Created on 20220326
class CreateProfilePage extends StatefulWidget {
  static const String path = 'createProfile';

  const CreateProfilePage({Key? key}) : super(key: key);

  @override
  State<CreateProfilePage> createState() => _CreateProfilePageState();
}

class _CreateProfilePageState extends State<CreateProfilePage> with SharedPrefUtils {
  String? bDate = 'Date of Birth';
  String? dropDownValueCity;
  String? selectedCity = '';
  String? selectedState = '';
  String? dropDownValueRate;
  String? selectedRate = '';
  List<String>? rate;

  String? firstNameValue = '';
  String? lastNameValue = '';
  String? mobileNoValue = '';
  String? cityValue = '';

  bool? isEnable = true;

  Map<String, dynamic> paramUpdateProfile = {};
  Map<String, dynamic> paramTypeUpdateProfile = {};

  var _formKey = GlobalKey<FormState>();
  late List<String?>? errorList = [];

  Future<User>? _getUserData() async {
    return await getLoggedUserData().then((value) => User.fromJson(jsonDecode(value.toString())));
    // {
    // var temp = User.fromJson(jsonDecode(value.toString()));
    // print('Gtting -- ${temp.email}');
    // return value.toString();
    // });
  }

  @override
  void initState() {
    rate = [];
    for (int i = 3; i <= 10; i++) {
      rate?.add('$i.0');
      if (i < 10) rate?.add('$i.5');
    }

    paramUpdateProfile = {
      '\$city': 'String!',
      '\$dob': 'String!',
      '\$fName': 'String!',
      '\$lName': 'String!',
      '\$phone': 'String!',
      '\$rating': 'String!',
      '\$state': 'String!',
      '\$uId': 'String!'
    };
    paramTypeUpdateProfile = {
      'city': ' \$city',
      'dob': ' \$dob',
      'firstName': ' \$fName',
      'lastName': ' \$lName',
      'phone': ' \$phone',
      'rating': ' \$rating',
      'state': ' \$state',
      'userId': '\$uId'
    };

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<User>(
      future: _getUserData(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return Form(
            key: _formKey,
            child: BaseWidget(
              appbar: Text(
                createProfileTitle,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              appbarHeight: kToolbarHeight,
              body: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Text(
                      createProfileTitle,
                      softWrap: true,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: EditTextFormField(
                        isEnable: isEnable!,
                        validator: RequiredValidator(errorText: errFirstName),
                        inputFormatter: [FilteringTextInputFormatter(RegExp(r'[a-zA-Z]'), allow: true)],
                        textInputAction: TextInputAction.send,
                        onTextChange: (value) {
                          firstNameValue = value;
                        },
                        onTap: () {},
                        hint: firstName,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: EditTextFormField(
                        isEnable: isEnable!,
                        validator: RequiredValidator(errorText: errLastName),
                        inputFormatter: [FilteringTextInputFormatter(RegExp(r'[a-zA-Z]'), allow: true)],
                        textInputAction: TextInputAction.send,
                        onTextChange: (value) {
                          lastNameValue = value;
                        },
                        onTap: () {},
                        hint: lastName,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: FutureBuilder<String?>(
                        future: getEmailId(),
                        builder: (context, snapshot) {
                          print(snapshot.data);
                          if (snapshot.hasData) {
                            return EditTextFormField(
                              isEnable: false,
                              textInputAction: TextInputAction.next,
                              onTextChange: (value) {},
                              onTap: () {},
                              hint: snapshot.data,
                            );
                          }
                          return Center(child: CupertinoActivityIndicator());
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: EditTextFormField(
                        isEnable: isEnable!,
                        textInputAction: TextInputAction.send,
                        validator: RequiredValidator(errorText: errMobNo),
                        textInputType: TextInputType.number,
                        inputFormatter: [
                          FilteringTextInputFormatter.allow(
                            RegExp(r'^\d+?\d*'),
                          )
                        ],
                        maxLength: 12,
                        onTextChange: (value) {
                          mobileNoValue = value;
                        },
                        onTap: () {},
                        hint: phoneNo,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: GestureDetector(
                        onTap: () {
                          DatePicker.showDatePicker(
                            context,
                            theme: DatePickerTheme(
                              backgroundColor: aWhite,
                              itemStyle: TextStyle(color: aLightGray),
                            ),
                            showTitleActions: true,
                            minTime: DateTime(DateTime.now().year - 70, DateTime.now().month, DateTime.now().day),
                            maxTime: DateTime.now(),
                            onChanged: (date) {
                              print('change $date');
                            },
                            onConfirm: (date) {
                              bDate = date.toString();
                              setState(() {});
                              print('confirm $date');
                            },
                            currentTime: datePickerDate(bDate == 'Date of Birth' ? DateTime.now().toString() : bDate),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                          decoration: ShapeDecoration(
                              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100), side: BorderSide(color: aPartGray30))),
                          child: Padding(
                            padding: const EdgeInsets.all(12.0),
                            child: Text(
                              '${bDate == 'Date of Birth' ? bDate : convertDate(bDate ?? DateTime.now().toString(), null)}',
                              style: TextStyle(fontSize: 16.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5),
                      child: EditTextFormField(
                        isEnable: isEnable!,
                        validator: RequiredValidator(errorText: errCity),
                        inputFormatter: [FilteringTextInputFormatter(RegExp(r'[a-zA-Z]'), allow: true)],
                        textInputAction: TextInputAction.send,
                        onTextChange: (value) {
                          cityValue = value;
                        },
                        onTap: () {},
                        hint: city,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      child: DropDownView(
                        dropList: [
                          // 'Portland, Oregon',
                          // 'Los Angeles, California',
                          // 'Atlanta, Georgia'
                          'Oregon',
                          'California',
                          'Georgia'
                        ],
                        hint: selectState,
                        dropdownValue: dropDownValueCity,
                        onValueChange: (value) {
                          dropDownValueCity = value;
                          // final split = value.split(',');
                          // selectedCity = split![0].toString().trim();
                          // selectedState = split![1].toString().trim();
                          selectedState = value;
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                      child: DropDownView(
                        dropList: rate,
                        hint: selectRate,
                        dropdownValue: dropDownValueRate,
                        onValueChange: (value) {
                          dropDownValueRate = value;
                          selectedRate = value;
                        },
                      ),
                    ),
                  ],
                ),
              ),
              bottomBar: ElevatedButtons(
                width: double.infinity,
                label: next,
                fontSize: 25,
                radius: 0.0,
                onClick: () {
                  if (_formKey.currentState!.validate()) {
                    if (bDate == 'Date of Birth') {
                      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(errDob),
                      ));
                    }
                    if (selectedState!.isEmpty) {
                      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(errState),
                      ));
                    }

                    if (selectedRate!.isEmpty) {
                      return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(errRate),
                      ));
                    }

                    Map<String, dynamic> passVariable = {
                      'city': cityValue,
                      'dob': bDate,
                      'fName': firstNameValue,
                      'lName': lastNameValue,
                      'phone': mobileNoValue,
                      'rating': selectedRate,
                      'state': selectedState,
                      'uId': snapshot.data!.userId
                    };

                    print(passVariable);
                    isEnable = false;
                    setState(() {});
                  }
                },
                borderColor: aGreen,
                buttonColor: aGreen,
                labelColor: aWhite,
              ),
            ),
          );
        }
        return Center(
          child: CupertinoActivityIndicator(),
        );
      },
    );
  }

  Future<Widget> _showAlert() async {
    return await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AppDialog(
            title: 'Profile',
            body: [
              ListView.builder(
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(errorList![index].toString()),
                  );
                },
                itemCount: errorList!.length,
              )
            ],
            isBtnPositiveAvail: false,
            btnPositiveText: '',
            btnNegativeText: 'Dismiss',
            onNegativeClick: () {
              Navigator.pop(context);
            },
            onPositiveClick: () {
              Navigator.of(context).pop();
            },
          );
        });
  }
}
