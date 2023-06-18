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

  @override
  void initState() {
    initInternet(context);
    rate = [];
    for (int i = 3; i <= 10; i++) {
      rate?.add('$i.0');
      if (i < 10) rate?.add('$i.5');
    }

    bDate = userData.dob ?? 'Date of Birth';
    dropDownValueCity = userData.state;
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

    _streamFormController = StreamController<bool?>();
    _streamImgState = StreamController<imgState>();
    _streamImgState.sink.add(imgState.free);
    _streamFormController.sink.add(true);

    super.initState();
  }

  @override
  void dispose() {
    _streamImgState.close();
    _streamFormController.close();
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
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 5),
                                child: EditTextFormField(
                                  textController: TextEditingController(text: cityValue),
                                  isEnable: isEnabled.data!,
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
                              Mutation(
                                // TODO GHOST #
                                // key: _profileImgMutation,
                                options: MutationOptions(
                                    document: gql(uploadImage(paramImgUpload, paramTypeImgUpload)),
                                    onCompleted: (dynamic resultData) {
                                      if (resultData != null) {
                                        // errorList = [];
                                        // var result = resultData['uploadImage']['success'];
                                        // errorList!.add(result ? 'DONE' : 'some problem for update picture');
                                        // _showAlert();
                                      }
                                    },
                                    onError: (OperationException? error) {
                                      print('erroR -- $error');
                                    }),
                                builder: (runMutation, result) {
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
                  onCompleted: (dynamic resultData) {
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

                      imageUploadProgress();

                      print('After');
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

  void imageUploadProgress() async {
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

    // TODO GHOST #
    // var resp =
    //     await _profileImgMutation.currentState?.runMutation(<String, dynamic>{
    //   'file': multipartFile,
    //   'userId': '${userData.userId}',
    // });
    var resp = await _profileImgMutation(<String, dynamic>{
      'file': multipartFile,
      'userId': '${userData.userId}',
    });
    print('resp 522 *$resp');
  }

  Future<File> getImageFileFromAssets(String path) async {
    final byteData = await rootBundle.load('assets/$path');

    final file = File('${(await getTemporaryDirectory()).path}/$path');
    await file.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

    return file;
  }

  Widget imagePreview() {
    if (_croppedFile != null) {
      final path = _croppedFile!.path;
      return kIsWeb
          ? CircleAvatar(
              backgroundImage: NetworkImage(path),
              radius: 100,
            )
          : CircleAvatar(backgroundImage: FileImage(File(path)), radius: 100);
    } else if (_pickedFile != null) {
      final path = _pickedFile!.path;
      return kIsWeb
          ? CircleAvatar(
              backgroundImage: NetworkImage(path),
              radius: 100,
            )
          : CircleAvatar(backgroundImage: FileImage(File(path)), radius: 100);
    } else {
      return CircleAvatar(
        backgroundImage: AssetImage('assets/avatar0.png'),
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
    _streamImgState.sink.add(imgState.free);
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
            },
          );
        });
  }
}
