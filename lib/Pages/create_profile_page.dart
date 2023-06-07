import 'dart:async';
import 'dart:convert';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker_plus/flutter_datetime_picker_plus.dart' as dpicker; //20230530 Resolve error
import 'package:form_field_validator/form_field_validator.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/create_profile_picture_page.dart';
import '../Pages/no_internet_page.dart';
import '../bean/create_profile/create_profile_data.dart';
import '../bean/token_auth/token_auth.dart';
import '../components/app_dialog.dart';
import '../components/drop_down_view.dart';
import '../components/edit_text_form_field.dart';
import '../components/elevated_buttons.dart';
import '../providers/internet_provider.dart';
import '../utils/Constants.dart';
import '../utils/Internet.dart';
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

class _CreateProfilePageState extends State<CreateProfilePage> with isInternetConnection {
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

  // bool? isEnable = true;

  Map<String, dynamic> paramUpdateProfile = {};
  Map<String, dynamic> paramTypeUpdateProfile = {};

  var _formKey = GlobalKey<FormState>();
  late List<String?>? errorList = [];
  late CreateProfileData _createProfileData;
  var _streamController;

  FocusNode? fnameFocusNode;
  FocusNode? lnameFocusNode;
  FocusNode? mobFocusNode;
  FocusNode? bdateFocusNode;
  FocusNode? cityFocusNode;
  FocusNode? stateFocusNode;
  FocusNode? ratingFocusNode;
  FocusNode? submitFocusNode;

  @override
  void initState() {
    initInternet(context);

    rate = [];
    for (int i = 3; i <= 10; i++) {
      rate?.add('$i.0');
      if (i < 10) rate?.add('$i.5');
    }

    paramUpdateProfile = {
      '\$userId': 'String',
      '\$city': 'String',
      '\$dob': 'String',
      '\$fName': 'String',
      '\$lName': 'String',
      '\$phone': 'String',
      '\$rating': 'String',
      '\$state': 'String',
      '\$picture': 'String',
    };

    paramTypeUpdateProfile = {
      'userId': '\$userId',
      'city': ' \$city',
      'dob': ' \$dob',
      'firstName': ' \$fName',
      'lastName': ' \$lName',
      'phone': ' \$phone',
      'rating': ' \$rating',
      'state': ' \$state',
      'picture': ' \$picture',
    };

    _streamController = StreamController<bool>();
    _streamController.sink.add(true);

    fnameFocusNode = FocusNode();
    lnameFocusNode = FocusNode();
    mobFocusNode = FocusNode();
    bdateFocusNode = FocusNode();
    cityFocusNode = FocusNode();
    stateFocusNode = FocusNode();
    ratingFocusNode = FocusNode();
    submitFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    fnameFocusNode!.dispose();
    lnameFocusNode!.dispose();
    mobFocusNode!.dispose();
    bdateFocusNode!.dispose();
    cityFocusNode!.dispose();
    stateFocusNode!.dispose();
    ratingFocusNode!.dispose();
    submitFocusNode!.dispose();
    disposeInternet();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<InternetProvider>(
      builder: (context, valueNet, child) {
        print(valueNet.isConnectivity);
        if (valueNet.getConnected != ConnectivityResult.none) {
          return StreamBuilder<bool?>(
            stream: _streamController.stream,
            builder: (context, isEnabled) {
              if (isEnabled.hasData) {
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
                    onBackClick: () => Navigator.pop(context),
                    body: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: ListView(
                        shrinkWrap: true,
                        physics: const BouncingScrollPhysics(),
                        children: [
                          Text(
                            provideDetails,
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
                              focusNode: fnameFocusNode,
                              isEnable: isEnabled.data!,
                              validator: RequiredValidator(errorText: errFirstName),
                              inputFormatter: [FilteringTextInputFormatter(RegExp(r'[a-zA-Z]'), allow: true)],
                              textInputAction: TextInputAction.next,
                              onTextChange: (value) {
                                firstNameValue = value;
                              },
                              onFieldSubmitted: (action) {
                                print(action);
                                fnameFocusNode!.unfocus();
                                FocusScope.of(context).requestFocus(lnameFocusNode);
                              },
                              onTap: () {},
                              hint: firstName,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: EditTextFormField(
                              focusNode: lnameFocusNode,
                              isEnable: isEnabled.data!,
                              validator: RequiredValidator(errorText: errLastName),
                              inputFormatter: [FilteringTextInputFormatter(RegExp(r'[a-zA-Z]'), allow: true)],
                              textInputAction: TextInputAction.next,
                              onTextChange: (value) {
                                lastNameValue = value;
                              },
                              onTap: () {},
                              onFieldSubmitted: (action) {
                                print(action);
                                lnameFocusNode!.unfocus();
                                FocusScope.of(context).requestFocus(mobFocusNode);
                              },
                              hint: lastName,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: EditTextFormField(
                              isEnable: false,
                              textInputAction: TextInputAction.next,
                              onTextChange: (value) {},
                              onTap: () {},
                              hint: SharedPreferencesUtils.getEmail ?? 'Email@gmail.com',
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: EditTextFormField(
                              focusNode: mobFocusNode,
                              isEnable: isEnabled.data!,
                              textInputAction: TextInputAction.next,
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
                              onFieldSubmitted: (action) {
                                print(action);
                                mobFocusNode!.unfocus();
                                FocusScope.of(context).requestFocus(cityFocusNode);
                              },
                              hint: phoneNo,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: GestureDetector(
                              onTap: () {
                                dpicker.DatePicker.showDatePicker(
                                  context,
                                  theme: dpicker.DatePickerTheme(
                                    backgroundColor: aWhite,
                                    itemStyle: TextStyle(color: aLightGray),
                                  ),
                                  showTitleActions: true,
                                  minTime: DateTime(DateTime.now().year - 70, DateTime.now().month, DateTime.now().day),
                                  maxTime: DateTime.now(),
                                  onChanged: (date) {
                                    debugPrint('${CreateProfilePage.path} * change $date');
                                  },
                                  onConfirm: (date) {
                                    bDate = date.toString();
                                    debugPrint('${CreateProfilePage.path} * confirm $date');
                                    setState(() {
                                      mobFocusNode!.unfocus();
                                      FocusScope.of(context).requestFocus(cityFocusNode);
                                    });
                                  },
                                  currentTime:
                                      datePickerDate(bDate == 'Date of Birth' ? DateTime.now().toString() : bDate),
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                                decoration: ShapeDecoration(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(100),
                                        side: BorderSide(color: aPartGray30))),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Text(
                                    '${bDate == 'Date of Birth' ? bDate : convertDate(bDate ?? DateTime.now().toString(), null)}',
                                    style: TextStyle(
                                        fontSize: 16.0, color: bDate == 'Date of Birth' ? aLightGray : aBlack),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 5),
                            child: EditTextFormField(
                              focusNode: cityFocusNode,
                              isEnable: isEnabled.data!,
                              validator: RequiredValidator(errorText: errCity),
                              inputFormatter: [FilteringTextInputFormatter(RegExp(r'[a-zA-Z]'), allow: true)],
                              textInputAction: TextInputAction.next,
                              onTextChange: (value) {
                                cityValue = value;
                              },
                              onTap: () {},
                              onFieldSubmitted: (action) {
                                print(action);
                                cityFocusNode!.unfocus();
                              },
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
                    bottomBar: Mutation(
                      options: MutationOptions(
                        document: gql(
                          updateAccount(paramUpdateProfile, paramTypeUpdateProfile),
                        ),
                        onError: (OperationException? error) {
                          debugPrint('${CreateProfilePage.path} * erroR -- $error');
                          errorList = [];
                          errorList!.add('$error');

                          _streamController.sink.add(true);

                          if (errorList!.isNotEmpty) _showAlert();
                          // Text('$error');
                        },
                        // _simpleAlert(context, error.toString()),
                        onCompleted: (dynamic resultData) {
                          // Text('Thanks for your star!');

                          _streamController.sink.add(true);
                          debugPrint('${CreateProfilePage.path} **** RESULT * $resultData');

                          if (resultData != null) {
                            _createProfileData = CreateProfileData.fromJson(resultData);
                            errorList = [];
                            if (_createProfileData.updateAccount!.success!) {
                              errorList!.add('DONE');
                              // Navigator.pushNamed(context, CreateProfilePicturePage.path);
                            } else {
                              if (_createProfileData.updateAccount!.errors!.nonFieldErrors != null)
                                errorList!.add(_createProfileData.updateAccount!.errors?.nonFieldErrors?.first.message);

                              if (_createProfileData.updateAccount!.errors!.dob != null)
                                errorList!.add(_createProfileData.updateAccount!.errors?.dob?.first.message);
                            }

                            if (errorList!.isNotEmpty) _showAlert();
                          }
                        },
                        // 'Sorry you changed your mind!',
                      ),
                      builder: (RunMutation _updateProfile, QueryResult? addResult) {
                        final doUpdateProfile = (result) {
                          _updateProfile(result);
                        };

                        final anyLoading = addResult!.isLoading;

                        return ElevatedButtons(
                          width: double.infinity,
                          label: anyLoading ? 'wait' : next,
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

                              var data = LoggedUser.fromJson(jsonDecode(SharedPreferencesUtils.getUserData.toString()));

                              Map<String, dynamic> passVariable = {
                                'userId': '${data.userId}',
                                'city': cityValue,
                                'dob': convertDateMMDDYYYY(bDate ?? DateTime.now().toString()),
                                'fName': firstNameValue,
                                'lName': lastNameValue,
                                'phone': mobileNoValue,
                                'rating': selectedRate,
                                'state': selectedState,
                                'picture': '',
                              };

                              doUpdateProfile(passVariable);
                              _streamController.sink.add(false);
                            }
                          },
                          borderColor: aGreen,
                          buttonColor: aGreen,
                          labelColor: aWhite,
                        );
                      },
                    ),
                  ),
                );
              }
              return Center(
                child: CupertinoActivityIndicator(),
              );
            },
          );
        } else {
          _streamController.close();
          _streamController = StreamController<bool?>();
          _streamController.sink.add(true);
          return NoInternetPage(
            onClick: () {},
          );
        }
      },
    );
  }

  _showAlert() async {
    return await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AppDialog(
            title: profile,
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
            btnNegativeText: dialogDismiss,
            onNegativeClick: () {
              Navigator.pop(context);
              if (errorList?.first?.toString().toLowerCase() == 'done') {
                Navigator.pushNamed(context, CreateProfilePicturePage.path);
                // Navigator.pushNamed(context, DashboardPage.path);
              }
            },
            onPositiveClick: () {
              Navigator.of(context).pop();
            },
          );
        });
  }
}
