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
import '../bean/cities_query/cities_query.dart';
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
  String? dropDownValueState;
  String? selectedCity = '';
  String? selectedState = '';
  String? dropDownValueRate;
  String? selectedRate = '';
  List<String>? rate;

  String? firstNameValue = '';
  String? lastNameValue = '';
  String? mobileNoValue = '';
  String? cityValue = '';
  String? Search = '';
  var _citySearchStream = StreamController<List<Edges>>();
  late CitiesQueryData _citiesQueryData;
  Map<String, dynamic> paramForSearchCity = {};
  Map<String, dynamic> paramTypeForSearchCity = {};

  // bool isCitySelected = false;
  final TextEditingController _cityTextController = TextEditingController();
  late List<String>? cityList = [];
  late List<String>? stateList = [];

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

    //20230801 Added for search City Query
    paramForSearchCity = {
      '\$cityNameSearch': 'String!',
    };
    paramTypeForSearchCity = {
      'cityNameSearch': '\$cityNameSearch',
    };

    _streamController = StreamController<bool>();
    _streamController.sink.add(true);
    _citySearchStream.sink.add([]);
    _cityTextController.text = cityValue!;

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
    _citySearchStream.close();
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

                          //20230801 Added new view for city searchable and states list from selected city.
                          StreamBuilder<List<Edges>>(
                            stream: _citySearchStream.stream,
                            builder: (context, snapshot) {
                              cityList = [];
                              if (snapshot.hasData) {
                                for (var cityItem in snapshot.data!) {
                                  if (!cityList!.contains(cityItem.node!.name!)) cityList!.add(cityItem.node!.name!);
                                }
                              }

                              return Wrap(
                                children: [
                                  EditTextFormField(
                                    onTap: () {
                                      _cityTextController.selection = TextSelection.fromPosition(
                                        TextPosition(offset: _cityTextController.text.length),
                                      );
                                    },
                                    focusNode: cityFocusNode,
                                    hint: city,
                                    validator: RequiredValidator(errorText: errCity),
                                    inputFormatter: [FilteringTextInputFormatter(RegExp(r'[a-zA-Z]'), allow: true)],
                                    onTextChange: (value) {
                                      cityValue = value;
                                      Search = value;
                                      if (value.toString().trim().length > 2) {
                                        executeGraphQLQuery(Search!);
                                      } else {
                                        _citySearchStream.sink.add([]);
                                      }
                                    },
                                    textController: _cityTextController,
                                  ),
                                  cityList!.length > 0
                                      ? Search.toString().trim().length > 2
                                          ? cityList!.length > 0
                                              ? Padding(
                                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                                  child: ListView.separated(
                                                    itemBuilder: (context, index) => GestureDetector(
                                                      onTap: () {
                                                        cityValue = '${cityList![index]}';
                                                        _cityTextController.text = cityValue!;
                                                        cityFocusNode!.unfocus();

                                                        stateList = [];
                                                        dropDownValueState = null;
                                                        for (var cityItem in snapshot.data!) {
                                                          if (cityValue == cityItem.node!.name &&
                                                              !stateList!.contains(cityItem.node!.state!))
                                                            stateList!.add(cityItem.node!.state!);
                                                        }
                                                        _citySearchStream.sink.add([]);
                                                      },
                                                      child: Container(
                                                        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                                                        child: Text(
                                                          '${cityList![index]}',
                                                          style: TextStyle(
                                                            color: aGray,
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    separatorBuilder: (context, index) => Divider(height: 1),
                                                    itemCount: cityList!.length,
                                                    shrinkWrap: true,
                                                    physics: const BouncingScrollPhysics(),
                                                  ),
                                                )
                                              : SizedBox()
                                          : SizedBox()
                                      : SizedBox(),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
                                    child: DropDownView(
                                      dropList: stateList ?? [],
                                      hint: selectState,
                                      dropdownValue: dropDownValueState,
                                      onValueChange: (value) {
                                        dropDownValueState = value;
                                        // final split = value.split(',');
                                        // selectedCity = split![0].toString().trim();
                                        // selectedState = split![1].toString().trim();
                                        selectedState = value;
                                      },
                                    ),
                                  ),
                                ],
                              );
                            },
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

//20230624 Remove Done Message and Only Add Button
  _showAlert() async {
    return await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AppDialog(
            title: profile,
            body: [
              errorList?.first?.toString().toLowerCase() == 'done'
                  ? const SizedBox(
                      height: 0,
                      width: 0,
                    )
                  : ListView.builder(
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
            btnNegativeText: btnDone,
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

  Future<bool?> executeGraphQLQuery(String Search) async {
    final QueryOptions getCities = QueryOptions(
      document: gql(cities(paramForSearchCity, paramTypeForSearchCity)),
      variables: {'cityNameSearch': Search},
      fetchPolicy: FetchPolicy.networkOnly,
      pollInterval: Duration(seconds: 100),
    );

    final client = GraphQLProvider.of(context).value;
    final QueryResult result = await client.query(getCities);
    _citySearchStream.sink.add([]);

    if (result.hasException) {
      print(result.exception.toString());
      return false;
    } else if (result.isLoading) {
      print('Loading..');
      return false;
    } else {
      try {
        print('$result');
        if (Search.trim().length > 0) {
          _citiesQueryData = CitiesQueryData.fromJson(result.data!);

          List<Edges> cityList = [];
          cityList.addAll(_citiesQueryData.cities!.edges!);
          // for (var data in _citiesQueryData.cities!.edges!) {
          //   cityList.add(data.node!.name!);
          // }

          _citySearchStream.sink.add(cityList);
        }
        return true;
      } catch (e) {
        debugPrint('Exception -- $e');
        return false;
      }
    }
  }
}
