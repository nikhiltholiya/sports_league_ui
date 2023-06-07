import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:http/http.dart' as http;
import 'package:http_parser/http_parser.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/dashboard.dart';
import '../Pages/no_internet_page.dart';
import '../bean/create_profile/create_profile_data.dart';
import '../bean/token_auth/token_auth.dart';
import '../components/app_dialog.dart';
import '../components/elevated_buttons.dart';
import '../providers/internet_provider.dart';
import '../utils/Constants.dart';
import '../utils/Internet.dart';
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

enum imgState {
  free,
  picked,
  cropped,
}

class _CreateProfilePicturePageState extends State<CreateProfilePicturePage> with isInternetConnection {
  var userData = LoggedUser.fromJson(jsonDecode(SharedPreferencesUtils.getUserData.toString()));

  List<int?> selectedAvatar = [0];
  late List<String?>? errorList = [];
  late CreateProfileData _createProfileData;
  bool? isEnable = true;

  Map<String, dynamic> paramImgUpload = {};
  Map<String, dynamic> paramTypeImgUpload = {};
  var _streamImgState;

  //20230530 Resolve issue of profile picture
  dynamic _pickImageError;
  XFile? _pickedFile;
  CroppedFile? _croppedFile;

  @override
  void initState() {
    initInternet(context);
    paramImgUpload = {
      '\$file': 'Upload!',
      '\$userId': 'String',
    };
    paramTypeImgUpload = {
      'file': '\$file',
      'userid': '\$userId',
    };

    _streamImgState = StreamController<imgState>();
    _streamImgState.sink.add(imgState.free);
    // state = imgState.free;

    super.initState();
  }

  @override
  void dispose() {
    disposeInternet();
    _streamImgState.close();
    super.dispose();
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
        backgroundImage: AssetImage('assets/avatar${selectedAvatar.first}.png'),
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
        selectedAvatar = [];
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

  @override
  Widget build(BuildContext context) {
    return Consumer<InternetProvider>(
      builder: (context, valueNet, child) {
        print(valueNet.isConnectivity);
        if (valueNet.getConnected != ConnectivityResult.none) {
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
                child: StreamBuilder(
                  stream: _streamImgState.stream,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
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
                                        // _clearImage();
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
                                      _clearImage();
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
                    }
                    return Center(
                      child: CupertinoActivityIndicator(),
                    );
                  },
                ),
              ),
              bottomBar: Mutation(
                options: MutationOptions(
                    document: gql(uploadImage(paramImgUpload, paramTypeImgUpload)),
                    onCompleted: (dynamic resultData) {
                      print('**** RESULT * $resultData');
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
                  final anyLoading = result!.isLoading;
                  return ElevatedButtons(
                    width: double.infinity,
                    label: anyLoading ? 'wait' : next,
                    fontSize: 25,
                    radius: 0.0,
                    onClick: () async {
                      // var _image = imageFile != null ? imageFile : getImageFileFromAssets('path');
                      // var byteData;
                      // if(imageFile != null){
                      var byteData = _croppedFile != null
                          // ? _croppedFile!.readAsBytesSync()
                          ? await _croppedFile!.readAsBytes()
                          : await getImageFileFromAssets('avatar${selectedAvatar.first}.png')
                              .then((value) => value.readAsBytesSync());

                      var multipartFile = http.MultipartFile.fromBytes(
                        'photo',
                        byteData,
                        filename: '${DateTime.now().second}.jpg',
                        contentType: MediaType('image', 'jpg'),
                      );

                      runMutation(<String, dynamic>{
                        'file': multipartFile,
                        'userId': '${userData.userId}',
                      });
                    },
                    borderColor: aGreen,
                    buttonColor: aGreen,
                    labelColor: aWhite,
                  );
                },
              ));
        } else {
          _streamImgState.close();
          _streamImgState = StreamController<imgState>();
          _streamImgState.sink.add(imgState.free);
          // isLoaded = false;
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
              if (errorList?.first?.toString().toLowerCase() == 'done') {
                Navigator.of(context).pop();
                Navigator.pushNamedAndRemoveUntil(
                  context,
                  DashboardPage.path,
                  (route) => false,
                );
              }
            },
            onPositiveClick: () {
              Navigator.of(context).pop();
            },
          );
        });
  }

  Future<File> getImageFileFromAssets(String path) async {
    final byteData = await rootBundle.load('assets/$path');

    final file = File('${(await getTemporaryDirectory()).path}/$path');
    await file.writeAsBytes(byteData.buffer.asUint8List(byteData.offsetInBytes, byteData.lengthInBytes));

    return file;
  }
}

// uploadFile() async {
//   var postUri = Uri.parse("<APIUrl>");
//   var request = new http.MultipartRequest("POST", postUri);
//   request.fields['user'] = 'blah';
//   request.files.add(new http.MultipartFile.fromBytes('file', await File.fromUri("path").readAsBytes(), contentType: new MediaType('image', 'jpeg')));
//
//   request.send().then((response) {
//     if (response.statusCode == 200) print("Uploaded!");
//   });
// }
