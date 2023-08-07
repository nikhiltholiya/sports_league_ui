import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/no_internet_page.dart';
import '../bean/all_users/all_users.dart';
import '../bean/cities_query/cities_query.dart';
import '../bean/create_profile/create_profile_data.dart';
import '../bean/token_auth/token_auth.dart';
import '../components/app_dialog.dart';
import '../components/drop_down_view.dart';
import '../components/edit_text_form_field.dart';
import '../components/elevated_buttons.dart';
import '../components/profile_pic_avatar.dart';
import '../providers/internet_provider.dart';
import '../providers/user_id_provider.dart';
import '../utils/Constants.dart';
import '../utils/Internet.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/common.dart';
import '../utils/shared_preferences_utils.dart';

enum imgState {
  free,
  picked,
  cropped,
}

//Created on 20220415
class EditProfilePage extends StatefulWidget {
  static const String path = 'editProfile';

  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> with isInternetConnection {
  var userData = LoggedUser.fromJson(jsonDecode(SharedPreferencesUtils.getUserData.toString()));

  String? bDate;
  String? dropDownValueState;
  String? selectedCity = ''; // not Used
  String? selectedState = ''; // not Used
  String? dropDownValueRate;
  String? selectedRate = '';
  List<String>? rate;

  String? firstNameValue = '';
  String? lastNameValue = '';
  String? mobileNoValue = '';
  String? cityValue = '';
  String? picture = '';

  Map<String, dynamic> paramUpdateProfile = {};
  Map<String, dynamic> paramTypeUpdateProfile = {};

  Map<String, dynamic> paramImgUpload = {};
  Map<String, dynamic> paramTypeImgUpload = {};

  var _formKey = GlobalKey<FormState>();

  // TODO GHOST #
  // var _profileImgMutation = GlobalKey<MutationState>();
  late RunMutation _profileImgMutation;

  late List<String?>? errorList = [];
  late CreateProfileData _createProfileData;

  var _streamFormController;
  var _streamImgState;

  //20230530 Resolve issue of profile picture
  dynamic _pickImageError;
  XFile? _pickedFile;
  CroppedFile? _croppedFile;

  String? Search = '';
  var _citySearchStream = StreamController<List<Edges>>();
  late CitiesQueryData _citiesQueryData;
  Map<String, dynamic> paramForSearchCity = {};
  Map<String, dynamic> paramTypeForSearchCity = {};

  // bool isCitySelected = false;
  final TextEditingController _cityTextController = TextEditingController();
  late List<String>? cityList = [];
  late List<String>? stateList = [];

  FocusNode? cityFocusNode;

  @override
  void initState() {
    initInternet(context);
    rate = [];
    for (int i = 3; i <= 10; i++) {
      rate?.add('$i.0');
      if (i < 10) rate?.add('$i.5');
    }

    bDate = userData.dob ?? 'Date of Birth';
    dropDownValueState = userData.state;
    selectedCity = userData.city;
    selectedState = userData.state;
    dropDownValueRate = userData.rating;
    selectedRate = userData.rating;

    firstNameValue = userData.firstName;
    lastNameValue = userData.lastName;
    mobileNoValue = userData.phone;
    cityValue = userData.city;
    picture = userData.picture;

    paramUpdateProfile = {
      '\$userId': 'String',
      '\$city': 'String',
      '\$fName': 'String',
      '\$lName': 'String',
      '\$phone': 'String',
      '\$rating': 'String',
      '\$state': 'String',
      '\$picture': 'String',
      '\$dob': 'String',
    };

    paramTypeUpdateProfile = {
      'userId': '\$userId',
      'city': ' \$city',
      'firstName': ' \$fName',
      'lastName': ' \$lName',
      'phone': ' \$phone',
      'rating': ' \$rating',
      'state': ' \$state',
      'picture': ' \$picture',
      'dob': ' \$dob',
    };

    paramImgUpload = {
      '\$file': 'Upload!',
      '\$userId': 'String',
    };
    paramTypeImgUpload = {
      'file': '\$file',
      'userid': '\$userId',
    };

    cityFocusNode = FocusNode();

    //20230801 Added for search City Query
    paramForSearchCity = {
      '\$cityNameSearch': 'String!',
    };
    paramTypeForSearchCity = {
      'cityNameSearch': '\$cityNameSearch',
    };

    _streamFormController = StreamController<bool?>();
    _streamImgState = StreamController<imgState>();
    _streamImgState.sink.add(imgState.free);
    _streamFormController.sink.add(true);

    _citySearchStream.sink.add([]);
    _cityTextController.text = cityValue!;
    stateList = [];
    if (dropDownValueState != null) stateList!.add(dropDownValueState!);

    super.initState();
  }

  @override
  void dispose() {
    _streamImgState.close();
    _streamFormController.close();
    cityFocusNode!.dispose();
    _citySearchStream.close();
    _clearImage();
    disposeInternet();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<InternetProvider>(
      builder: (context, valueNet, child) {
        print(valueNet.isConnectivity);
        if (valueNet.getConnected != ConnectivityResult.none) {
          return Form(
            key: _formKey,
            child: BaseWidget(
              appbar: Text(
                updateProfileTitle,
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
                    SizedBox(
                      height: 10,
                    ),
                    StreamBuilder(
                      stream: _streamImgState.stream,
                      builder: (context, snapshot) {
                        if (snapshot.hasData) {
                          return Stack(
                            alignment: Alignment.bottomCenter,
                            fit: StackFit.loose,
                            children: [
                              imagePreview(),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: [
                                  CircleAvatar(
                                    backgroundColor: aGreen,
                                    radius: 20,
                                    child: IconButton(
                                      onPressed: () {
                                        _pickImage(ImageSource.gallery);
                                      },
                                      icon: Icon(
                                        Icons.add_photo_alternate,
                                        color: aWhite,
                                      ),
                                    ),
                                  ),
                                  CircleAvatar(
                                    backgroundColor: aGreen,
                                    radius: 20,
                                    child: IconButton(
                                      onPressed: () {
                                        _pickImage(ImageSource.camera);
                                      },
                                      icon: Icon(
                                        Icons.camera_alt_rounded,
                                        color: aWhite,
                                      ),
                                    ),
                                  ),
                                ],
                              )
                            ],
                          );
                        }
                        return Center(
                          child: CupertinoActivityIndicator(),
                        );
                      },
                    ),
                    StreamBuilder<bool?>(
                      stream: _streamFormController.stream,
                      builder: (context, isEnabled) {
                        if (isEnabled.hasData) {
                          return Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: EditTextFormField(
                                  textController: TextEditingController(text: firstNameValue),
                                  isEnable: isEnabled.data!,
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
                                  textController: TextEditingController(text: lastNameValue),
                                  isEnable: isEnabled.data!,
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
                                child: EditTextFormField(
                                  isEnable: false,
                                  textInputAction: TextInputAction.next,
                                  onTextChange: (value) {},
                                  onTap: () {},
                                  hint: SharedPreferencesUtils.getEmail!,
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: EditTextFormField(
                                  textController: TextEditingController(text: mobileNoValue),
                                  isEnable: isEnabled.data!,
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
                                child: Container(
                                  margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                                  decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(70),
                                          side: BorderSide(color: aPartGray30))),
                                  child: Padding(
                                    padding: const EdgeInsets.all(12.0),
                                    child: Text(
                                      '${bDate == 'Date of Birth' ? bDate : convertDate(bDate ?? DateTime.now().toString(), null)}',
                                      style: TextStyle(fontSize: 16.0, color: aLightGray),
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
                                      if (!cityList!.contains(cityItem.node!.name!))
                                        cityList!.add(cityItem.node!.name!);
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
                                        textController: _cityTextController,
                                        validator: RequiredValidator(errorText: errCity),
                                        // 20230805 input contain space
                                        inputFormatter: [
                                          FilteringTextInputFormatter(RegExp(r'[a-zA-Z ]'), allow: true)
                                        ],
                                        hint: city,
                                        onTextChange: (value) {
                                          cityValue = value;
                                          Search = value;
                                          if (value.toString().trim().length > 2) {
                                            executeGraphQLQuery(Search!);
                                          } else {
                                            _citySearchStream.sink.add([]);
                                          }
                                        },
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
                              Mutation(
                                // TODO GHOST #
                                // key: _profileImgMutation,
                                options: MutationOptions(
                                    document: gql(uploadImage(paramImgUpload, paramTypeImgUpload)),
                                    onCompleted: (dynamic resultData) {
                                      if (resultData != null) {
                                        errorList = [];
                                        var result = resultData['uploadImage']['success'];
                                        errorList!.add(result ? 'DONE' : 'some problem for update picture');
                                        _showAlert();
                                      }
                                    },
                                    onError: (OperationException? error) {
                                      print('erroR -- $error');
                                    }),
                                builder: (runMutation, result) {
                                  this._profileImgMutation = runMutation; //20230802 Resolve image uploading
                                  return SizedBox();
                                },
                              ),
                            ],
                          );
                        }
                        return Center(
                          child: CupertinoActivityIndicator(),
                        );
                      },
                    )
                  ],
                ),
              ),
              bottomBar: Mutation(
                options: MutationOptions(
                  document: gql(
                    updateAccount(paramUpdateProfile, paramTypeUpdateProfile),
                  ),
                  onError: (OperationException? error) {
                    debugPrint('${EditProfilePage.path} * erroR -- $error');
                    _streamFormController.sink.add(true);
                    errorList = [];
                    errorList!.add('$error');
                    if (errorList!.isNotEmpty) _showAlert();
                    // Text('$error');
                  },
                  // _simpleAlert(context, error.toString()),
                  onCompleted: (dynamic resultData) async {
                    // Text('Thanks for your star!');
                    _streamFormController.sink.add(true);
                    debugPrint('${EditProfilePage.path} **** RESULT * $resultData');

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

                      //20230802 prevent from multiple call
                      if (_pickedFile != null || _croppedFile != null) {
                        await imageUploadProgress();
                      } else {
                        if (errorList!.isNotEmpty) _showAlert();
                      }
                      await executeForUpdate().then((value) {
                        //20230804 Added for update information to previous screen
                        Provider.of<UserIdProvider>(context, listen: false).setUserId('------');
                        Timer(Duration(milliseconds: 200), () {
                          Provider.of<UserIdProvider>(context, listen: false)
                              .setUserId(SharedPreferencesUtils.getUserId);
                        });
                      });
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
                        'userId': '${userData.userId}',
                        'city': cityValue,
                        'fName': firstNameValue,
                        'lName': lastNameValue,
                        'phone': mobileNoValue,
                        'rating': selectedRate,
                        'state': selectedState,
                        'picture': picture,
                        'dob': bDate,
                      };

                      doUpdateProfile(passVariable);
                      _streamFormController.sink.add(false);
                    },
                    borderColor: aGreen,
                    buttonColor: aGreen,
                    labelColor: aWhite,
                  );
                },
              ),
            ),
          );
        } else {
          _streamImgState.close();
          _streamFormController.close();
          _streamFormController = StreamController<bool?>();
          _streamImgState = StreamController<imgState>();
          _streamImgState.sink.add(imgState.free);
          _streamFormController.sink.add(true);

          return NoInternetPage(
            onClick: () {},
          );
        }
      },
    );
  }

  Future<void> imageUploadProgress() async {
    // var byteData = imageFile != null
    //     ? imageFile!.readAsBytesSync()
    //     : await getImageFileFromAssets('avatar${selectedAvatar.first}.png').then((value) => value.readAsBytesSync());

    var byteData = _croppedFile != null
        ? await _croppedFile!.readAsBytes()
        : await getImageFileFromAssets('avatar0.png').then((value) => value.readAsBytesSync());

    var multipartFile = http.MultipartFile.fromBytes(
      'photo',
      byteData,
      filename: '${DateTime.now().second}.jpg',
      contentType: MediaType('image', 'jpg'),
    );

    await _profileImgMutation(<String, dynamic>{
      'file': multipartFile,
      'userId': '${userData.userId}',
    });

    _clearImage();
  }

  Future<File> getImageFileFromAssets(String path) async {
    final byteData = await rootBundle.load('assets/$path');

    final file = File('${(await getTemporaryDirectory()).path}/$path');
    await file.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

    return file;
  }

  //20230804 Resolve image displaying issues.
  Widget imagePreview() {
    if (_croppedFile != null) {
      final path = _croppedFile!.path;
      return kIsWeb
          ? ProfilePicAvatar(
              path: path,
              radius: 100,
            )
          : CircleAvatar(backgroundImage: FileImage(File(path)), radius: 100);
    } else if (_pickedFile != null) {
      final path = _pickedFile!.path;
      return kIsWeb
          ? ProfilePicAvatar(
              path: path,
              radius: 100,
            )
          : CircleAvatar(backgroundImage: FileImage(File(path)), radius: 100);
    } else if (picture != null || picture != '') {
      //20230802 show images if already uploaded
      return ProfilePicAvatar(
        path: picture,
        radius: 100,
      );
    } else {
      return ProfilePicAvatar(
        path: null,
        radius: 100,
      );
    }
  }

  Future<Null> _pickImage(ImageSource source) async {
    try {
      final pickedFile = await ImagePicker().pickImage(
        source: source,
        maxWidth: 1000,
        maxHeight: 1000,
        imageQuality: 100,
      );
      if (pickedFile != null) {
        // setState(() {
        _streamImgState.sink.add(imgState.picked);
        _pickedFile = pickedFile;
        if (!kIsWeb) {
          _cropImage();
        }
        // });
      }
    } catch (e) {
      _pickImageError = e;
    }
  }

  Future<void> _cropImage() async {
    if (_pickedFile != null) {
      final croppedFile = await ImageCropper().cropImage(
        sourcePath: _pickedFile!.path,
        cropStyle: CropStyle.circle,
        compressFormat: ImageCompressFormat.jpg,
        compressQuality: 100,
        uiSettings: [
          AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: aWhite,
            toolbarWidgetColor: aBlack,
            activeControlsWidgetColor: aGreen,
            initAspectRatio: CropAspectRatioPreset.square,
            lockAspectRatio: true,
            showCropGrid: false,
            hideBottomControls: true,
            cropFrameColor: Colors.transparent,
          ),
          IOSUiSettings(
            aspectRatioLockEnabled: true,
            aspectRatioPickerButtonHidden: true,
            title: 'Cropper',
          ),
          WebUiSettings(
            context: context,
            presentStyle: CropperPresentStyle.dialog,
            boundary: const CroppieBoundary(
              width: 520,
              height: 520,
            ),
            viewPort: const CroppieViewPort(width: 480, height: 480, type: 'circle'),
            enableExif: true,
            enableZoom: true,
            showZoomer: true,
          ),
        ],
      );
      if (croppedFile != null) {
        // setState(() {
        _croppedFile = croppedFile;
        _streamImgState.sink.add(imgState.cropped);
        // });
      }
    }
  }

  void _clearImage() {
    _pickedFile = null;
    _croppedFile = null;
    // setState(() {
    //   state = imgState.free;
    // });
  }

//IMAGE OVER
  //20230608 Change Dialog with done only if success and is failure then it shows Error list in dialog..
  _showAlert() async {
    return await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AppDialog(
            title: profileUpdDialogTitle,
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
                Navigator.of(context).pop();
                // Navigator.of(context).pop();
                // Navigator.un(context, ProfilePage.path, (route) => false);
                // Navigator.popUntil(context, (route) => false)
              }
            },
            onPositiveClick: () {
              Navigator.of(context).pop();
              if (errorList?.first?.toString().toLowerCase() == 'done') {
                Navigator.of(context).pop();
              }
            },
          );
        });
  }

//20230801 Add city with searchable and states as per city selected
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

//20230802 Added for update user data in shared preferences
  Future<bool?> executeForUpdate() async {
    Map<String, dynamic> param = {
      '\$userId': 'UUID',
    };
    Map<String, dynamic> paramType = {
      'userId': '\$userId',
    };
    Map<String, dynamic> passVariable = {'userId': '${SharedPreferencesUtils.getUserId!}'};

    final QueryOptions getUserDetails = QueryOptions(
      document: gql(allUsers(param, paramType)),
      variables: passVariable,
      fetchPolicy: FetchPolicy.networkOnly,
      pollInterval: Duration(seconds: 100),
    );

    final client = GraphQLProvider.of(context).value;
    final QueryResult result = await client.query(getUserDetails);

    if (result.hasException) {
      return false;
    } else if (result.isLoading) {
      return false;
    } else {
      try {
        SharedPreferencesUtils.setUserData(jsonEncode(AllUsersData.fromJson(result.data!).allUsers?.edges?.first.node));
        return true;
      } catch (e) {
        debugPrint('Exception -- $e');
        return false;
      }
    }
  }
}
