import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/dashboard.dart';
import '../bean/create_profile/create_profile_data.dart';
import '../bean/token_auth/token_auth.dart';
import '../components/app_dialog.dart';
import '../components/drop_down_view.dart';
import '../components/edit_text_form_field.dart';
import '../components/elevated_buttons.dart';
import '../providers/profile_pic_provider.dart';
import '../utils/Constants.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/common.dart';
import '../utils/shared_preferences_utils.dart';

//Created on 20220415
class EditProfilePage extends StatefulWidget {
  static const String path = 'editProfile';

  const EditProfilePage({Key? key}) : super(key: key);

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
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

  bool? isEnable = true;

  Map<String, dynamic> paramUpdateProfile = {};
  Map<String, dynamic> paramTypeUpdateProfile = {};

  var _formKey = GlobalKey<FormState>();
  late List<String?>? errorList = [];
  late CreateProfileData _createProfileData;

  //Image
  String? _retrieveDataError;
  late String? _finalPath = null;
  dynamic _pickImageError;
  final ImagePicker _picker = ImagePicker();
  List<int?> selectedAvatar = [0];

  Future<void> _onImageButtonPressed(ImageSource source, {BuildContext? context, bool isMultiImage = false}) async {
    try {
      final XFile? pickedFile = await _picker.pickImage(
        source: source,
        maxWidth: 1000,
        maxHeight: 1000,
        imageQuality: 100,
      );

      Provider.of<ProfilePicProvider>(context!, listen: false).setXFile(pickedFile);

      // setState(() {
      //   _imageFile = pickedFile;
      // });
    } catch (e) {
      setState(() {
        _pickImageError = e;
      });
    }
  }

  @override
  void initState() {
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

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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

    print('$paramUpdateProfile ** $paramTypeUpdateProfile');

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
              Stack(
                alignment: Alignment.bottomCenter,
                fit: StackFit.loose,
                children: [
                  // selectedAvatar.isNotEmpty
                  CircleAvatar(
                    backgroundImage: AssetImage('assets/avatar${selectedAvatar.first}.png'),
                    radius: 70,
                  ),

                  // if(selectedAvatar.isEmpty)
                  if (Provider.of<ProfilePicProvider>(context, listen: false).getXFile != null)
                    Center(
                      child: !kIsWeb && defaultTargetPlatform == TargetPlatform.android
                          ? FutureBuilder<void>(
                              future: retrieveLostData(),
                              builder: (BuildContext context, AsyncSnapshot<void> snapshot) {
                                switch (snapshot.connectionState) {
                                  case ConnectionState.none:
                                  case ConnectionState.waiting:
                                    return const Text(
                                      'You have not yet picked an image.',
                                      textAlign: TextAlign.center,
                                    );
                                  case ConnectionState.done:
                                    return _handlePreview(context);
                                  default:
                                    if (snapshot.hasError) {
                                      return Text(
                                        'Pick image/video error: ${snapshot.error}}',
                                        textAlign: TextAlign.center,
                                      );
                                    } else {
                                      return const Text(
                                        'You have not yet picked an image.',
                                        textAlign: TextAlign.center,
                                      );
                                    }
                                }
                              },
                            )
                          : _handlePreview(context),
                    ),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      CircleAvatar(
                        backgroundColor: aGreen,
                        radius: 20,
                        child: IconButton(
                          onPressed: () {
                            _onImageButtonPressed(ImageSource.gallery, context: context);
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
                            _onImageButtonPressed(ImageSource.camera, context: context);
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
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: EditTextFormField(
                  textController: TextEditingController(text: firstNameValue),
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
                  textController: TextEditingController(text: lastNameValue),
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
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(70), side: BorderSide(color: aPartGray30))),
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

                    print(dropDownValueCity);
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
              debugPrint('${EditProfilePage.path} * erroR -- $error');
              errorList = [];
              errorList!.add('$error');

              isEnable = true;
              setState(() {});

              if (errorList!.isNotEmpty) _showAlert();
              // Text('$error');
            },
            // _simpleAlert(context, error.toString()),
            onCompleted: (dynamic resultData) {
              // Text('Thanks for your star!');

              isEnable = true;
              setState(() {});
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
                isEnable = false;
                setState(() {});
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

  //IMAGE
  Future<String?> _cropImage(BuildContext context) async {
    debugPrint('${EditProfilePage.path} * CropImage');

    File imageFile = File(Provider.of<ProfilePicProvider>(context).getXFile!.path);

    // selectedAvatar = imageFile.path != null ? [] : [0];

    debugPrint('${EditProfilePage.path} * imageFile -- ${imageFile.path}');

    File? croppedFile = await ImageCropper().cropImage(
        sourcePath: imageFile.path,
        aspectRatioPresets: Platform.isAndroid
            ? [
                CropAspectRatioPreset.square,
                CropAspectRatioPreset.ratio3x2,
                CropAspectRatioPreset.original,
                CropAspectRatioPreset.ratio4x3,
                CropAspectRatioPreset.ratio16x9
              ]
            : [
                CropAspectRatioPreset.original,
                CropAspectRatioPreset.square,
                CropAspectRatioPreset.ratio3x2,
                CropAspectRatioPreset.ratio4x3,
                CropAspectRatioPreset.ratio5x3,
                CropAspectRatioPreset.ratio5x4,
                CropAspectRatioPreset.ratio7x5,
                CropAspectRatioPreset.ratio16x9
              ],
        androidUiSettings: AndroidUiSettings(
            toolbarTitle: 'Cropper',
            toolbarColor: aWhite,
            toolbarWidgetColor: aBlack,
            cropGridColor: Colors.white38,
            activeControlsWidgetColor: aGreen,
            initAspectRatio: CropAspectRatioPreset.original,
            lockAspectRatio: true),
        iosUiSettings: IOSUiSettings(
          title: 'Cropper',
        ));
    if (croppedFile != null) {
      imageFile = croppedFile;
    }

    return croppedFile != null ? croppedFile.path : null;
  }

  Widget _previewImages(String path) {
    _finalPath = path;

    final Text? retrieveError = _getRetrieveErrorWidget();
    if (retrieveError != null) {
      return retrieveError;
    }
    // if (_imageFileList != null) {
    return
        // Why network for web?
        // See https://pub.dev/packages/image_picker#getting-ready-for-the-web-platform
        Semantics(
      label: 'image_picker_example_picked_image',
      // child: kIsWeb ? Image.network(path) : Image.file(File(path)),
      child: kIsWeb
          ? CircleAvatar(
              backgroundImage: NetworkImage(path),
              radius: 70,
            )
          : CircleAvatar(backgroundImage: FileImage(File(path)), radius: 70),
    );
  }

  Widget _handlePreview(BuildContext context) {
    String? webPath = Provider.of<ProfilePicProvider>(context).getXFile?.path ?? null;
    return kIsWeb
        ? webPath != null
            ? _previewImages(webPath)
            : SizedBox()
        : FutureBuilder<String?>(
            future: _cropImage(context),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return _previewImages(snapshot.data!);
              }

              //TODO CHANGE HERE
              return CircleAvatar(
                backgroundImage: AssetImage('assets/avatar${selectedAvatar.first}.png'),
                radius: 70,
              );
            },
          );
  }

  Future<void> retrieveLostData() async {
    final LostDataResponse response = await _picker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.file != null) {
      Provider.of<ProfilePicProvider>(context, listen: false).setXFile(response.file);

      // print('retrieveLostData -- ${Provider.of<ProfilePicProvider>(context,listen: false).getXFile}');
      // setState(() {
      //   _imageFile = response.file;
      //   _imageFileList = response.files;
      // });
    } else {
      _retrieveDataError = response.exception!.code;
    }
  }

  Text? _getRetrieveErrorWidget() {
    if (_retrieveDataError != null) {
      final Text result = Text(_retrieveDataError!);
      _retrieveDataError = null;
      return result;
    }
    return null;
  }

//IMAGE OVER

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
                // Navigator.pushNamed(context, CreateProfilePicturePage.path);
                Navigator.pushNamed(context, DashboardPage.path);
              }
            },
            onPositiveClick: () {
              Navigator.of(context).pop();
            },
          );
        });
  }
}
