import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../bean/create_profile/create_profile_data.dart';
import '../bean/token_auth/token_auth.dart';
import '../components/app_dialog.dart';
import '../components/elevated_buttons.dart';
import '../providers/profile_pic_provider.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/shared_preferences_utils.dart';

//Created on 20220330
class CreateProfilePicturePage extends StatefulWidget {
  static const String path = 'createProfilePicture';

  const CreateProfilePicturePage({Key? key}) : super(key: key);

  @override
  State<CreateProfilePicturePage> createState() => _CreateProfilePicturePageState();
}

class _CreateProfilePicturePageState extends State<CreateProfilePicturePage>  {
  // List<XFile>? _imageFileList;
  // File? imageFile;

  // set _imageFile(XFile? value) {
  //   _imageFileList = value == null ? null : <XFile>[value];
  // }

  var userData = LoggedUser.fromJson(jsonDecode(SharedPreferencesUtils.getUserData.toString()));

  String? bDate;
  String? selectedRate = '';
  String? firstNameValue = '';
  String? lastNameValue = '';
  String? mobileNoValue = '';
  String? cityValue = '';
  String? selectedState = '';
  String? picture = '';


  dynamic _pickImageError;
  String? _retrieveDataError;
  late String? _finalPath = null;

  final ImagePicker _picker = ImagePicker();

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

  List<int?> selectedAvatar = [0];
  late List<String?>? errorList = [];
  late CreateProfileData _createProfileData;
  bool? isEnable = true;
  Map<String, dynamic> paramUpdateProfile = {};
  Map<String, dynamic> paramTypeUpdateProfile = {};

  @override
  void initState() {
    // print('Hi');
    // clearXFile();
    // print('Hi1');

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

    bDate = userData.dob ?? 'Date of Birth';
    selectedRate = userData.rating;
    firstNameValue = userData.firstName;
    lastNameValue = userData.lastName;
    mobileNoValue = userData.phone;
    cityValue = userData.city;
    selectedState = userData.state;
    picture = userData.picture;





    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<String?> _cropImage(BuildContext context) async {
    debugPrint('${CreateProfilePicturePage.path} * CropImage');

    File imageFile = File(Provider.of<ProfilePicProvider>(context).getXFile!.path);

    // selectedAvatar = imageFile.path != null ? [] : [0];

    debugPrint('${CreateProfilePicturePage.path} * imageFile -- ${imageFile.path}');

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
              radius: 100,
            )
          : CircleAvatar(backgroundImage: FileImage(File(path)), radius: 100),
    );
  }

  // Future<void> clearXFile() async {
  //   await Future.delayed(
  //     const Duration(seconds: 1),
  //     () {
  //       return Provider.of<ProfilePicProvider>(context, listen: false)
  //           .setXFile(null);
  //     },
  //   ).then((value) => print('Finished'));
  // }

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
                radius: 100,
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

  @override
  Widget build(BuildContext context) {
    // Provider.of<ProfilePicProvider>(context, listen: false).setXFile(null);

    debugPrint('${CreateProfilePicturePage.path} * path  -- ${Provider.of<ProfilePicProvider>(context).getXFile}');

    return BaseWidget(
      appbar: Text(
        uploadProfilePic,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      appbarHeight: kToolbarHeight,
      onBackClick: () => Navigator.pop(context),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Consumer<ProfilePicProvider>(
          builder: (context, value, child) {
            return ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              children: [
                Text(
                  takeOrUploadLine,
                  softWrap: true,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                Stack(
                  alignment: Alignment.bottomCenter,
                  fit: StackFit.loose,
                  children: [
                    // selectedAvatar.isNotEmpty
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/avatar${selectedAvatar.first}.png'),
                      radius: 100,
                    ),

                    // if(selectedAvatar.isEmpty)
                    if (value.getXFile != null)
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
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    'or',
                    softWrap: true,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
                    textAlign: TextAlign.center,
                  ),
                ),
                Text(
                  chooseAvatar,
                  softWrap: true,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.start,
                ),
                GridView.builder(
                  physics: const BouncingScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                  ),
                  itemCount: 12,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: GestureDetector(
                          onTap: () {
                            selectedAvatar = [];
                            selectedAvatar.add(index);
                            // setState(() {
                            //
                            // });
                            value.setXFile(null);
                          },
                          child: Stack(
                            children: [
                              Container(
                                color: aWhite,
                                child: Center(
                                  child: Image.asset('assets/avatar$index.png'),
                                ),
                              ),
                              if (selectedAvatar.contains(index))
                                Container(
                                  alignment: Alignment.center,
                                  color: aGreen20,
                                  child: Icon(Icons.check_outlined, color: aGreen, size: 30),
                                ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ],
            );
          },
        ),
      ),
      bottomBar: ElevatedButtons(
        width: double.infinity,
        label: next,
        fontSize: 25,
        radius: 0.0,
        onClick: () async {
          // mutation($files: [Upload!]!) {
          //   multipleUpload(files: $files) {
          //     id
          //     filename
          //     mimetype
          //     path
          //   }
          // }

          // final myFile = MultipartFile.fromPath(
          //   "",
          //   "just plain text",
          //   filename: "sample_upload.txt",
          //   contentType: MediaType("text", "plain"),
          // );
          //
          // final result = await graphQLClient.mutate(
          //     MutationOptions(
          //       document: gql(uploadMutation),
          //       variables: {
          //         'files': [myFile],
          //       },
          //     )
          // );

          debugPrint('${CreateProfilePicturePage.path} * finalPath -- $_finalPath');
        },
        borderColor: aGreen,
        buttonColor: aGreen,
        labelColor: aWhite,
      ),
      // bottomBar: Mutation(
      //   options: MutationOptions(
      //     document: gql(
      //       updateAccount(paramUpdateProfile, paramTypeUpdateProfile),
      //     ),
      //     onError: (OperationException? error) {
      //       print('erroR -- $error');
      //       errorList = [];
      //       errorList!.add('$error');
      //
      //       isEnable = true;
      //       setState(() {});
      //
      //       if (errorList!.isNotEmpty) _showAlert();
      //       // Text('$error');
      //     },
      //     // _simpleAlert(context, error.toString()),
      //     onCompleted: (dynamic resultData) {
      //       // Text('Thanks for your star!');
      //
      //       isEnable = true;
      //       setState(() {});
      //       print('**** RESULT * $resultData');
      //
      //       if (resultData != null) {
      //         _createProfileData = CreateProfileData.fromJson(resultData);
      //         errorList = [];
      //         if (_createProfileData.updateAccount!.success!) {
      //           // errorList!.add('DONE');
      //           Navigator.pushNamed(context, CreateProfilePicturePage.path);
      //         } else {
      //           if (_createProfileData.updateAccount!.errors!.nonFieldErrors != null)
      //             errorList!.add(_createProfileData.updateAccount!.errors?.nonFieldErrors?.first.message);
      //
      //           if (_createProfileData.updateAccount!.errors!.dob != null)
      //             errorList!.add(_createProfileData.updateAccount!.errors?.dob?.first.message);
      //         }
      //
      //         if (errorList!.isNotEmpty) _showAlert();
      //       }
      //     },
      //     // 'Sorry you changed your mind!',
      //   ),
      //   builder: (RunMutation _updateProfile, QueryResult? addResult) {
      //     final doUpdateProfile = (result) {
      //       _updateProfile(result);
      //     };
      //
      //     final anyLoading = addResult!.isLoading;
      //
      //     return ElevatedButtons(
      //       width: double.infinity,
      //       label: anyLoading ? 'wait' : next,
      //       fontSize: 25,
      //       radius: 0.0,
      //       onClick: () {
      //
      //         var data = LoggedUser.fromJson(jsonDecode(SharedPreferencesUtils.getUserData.toString()));
      //
      //         Map<String, dynamic> passVariable = {
      //           'userId': '${data.userId}',
      //           'picture': 'imagePath',
      //         };
      //
      //         doUpdateProfile(passVariable);
      //         isEnable = false;
      //         setState(() {});
      //       },
      //       borderColor: aGreen,
      //       buttonColor: aGreen,
      //       labelColor: aWhite,
      //     );
      //   },
      // ),
    );
  }

  Text? _getRetrieveErrorWidget() {
    if (_retrieveDataError != null) {
      final Text result = Text(_retrieveDataError!);
      _retrieveDataError = null;
      return result;
    }
    return null;
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
            },
            onPositiveClick: () {
              Navigator.of(context).pop();
            },
          );
        });
  }
}
