// import 'dart:io';
//
// import 'package:flutter/foundation.dart';
// import 'package:flutter/material.dart';
// import 'package:image_cropper/image_cropper.dart';
// import 'package:image_picker/image_picker.dart';
// import 'package:provider/provider.dart';
// import '../providers/profile_pic_provider.dart';
//
// import '../Pages/base_activity.dart';
// import '../components/elevated_buttons.dart';
// import '../utils/app_colors.dart';
// import '../utils/app_labels.dart';
// import '../utils/shared_preferences_utils.dart';
//
// //Created on 20220330
// class CreateProfilePicturePage extends StatefulWidget {
//   static const String path = 'createProfilePicture';
//
//   const CreateProfilePicturePage({Key? key}) : super(key: key);
//
//   @override
//   State<CreateProfilePicturePage> createState() =>
//       _CreateProfilePicturePageState();
// }
//
// class _CreateProfilePicturePageState extends State<CreateProfilePicturePage>
//     with SharedPrefUtils {
//   List<XFile>? _imageFileList;
//   File? imageFile;
//
//   set _imageFile(XFile? value) {
//     _imageFileList = value == null ? null : <XFile>[value];
//   }
//
//   dynamic _pickImageError;
//   String? _retrieveDataError;
//
//   final ImagePicker _picker = ImagePicker();
//
//   Future<void> _onImageButtonPressed(ImageSource source,
//       {BuildContext? context, bool isMultiImage = false}) async {
//     try {
//       final XFile? pickedFile = await _picker.pickImage(
//         source: source,
//         maxWidth: 1000,
//         maxHeight: 1000,
//         imageQuality: 100,
//       );
//       setState(() {
//         _imageFile = pickedFile;
//       });
//
//     } catch (e) {
//       setState(() {
//         _pickImageError = e;
//       });
//     }
//   }
//
//   List<int?> selectedAvatar = [];
//
//   @override
//   void initState() {
//     super.initState();
//   }
//
//   Future<String?> _cropImage() async {
//
//     imageFile = File(_imageFileList![0].path);
//
//     File? croppedFile = await ImageCropper().cropImage(
//         sourcePath: imageFile!.path,
//         aspectRatioPresets: Platform.isAndroid
//             ? [
//                 CropAspectRatioPreset.square,
//                 CropAspectRatioPreset.ratio3x2,
//                 CropAspectRatioPreset.original,
//                 CropAspectRatioPreset.ratio4x3,
//                 CropAspectRatioPreset.ratio16x9
//               ]
//             : [
//                 CropAspectRatioPreset.original,
//                 CropAspectRatioPreset.square,
//                 CropAspectRatioPreset.ratio3x2,
//                 CropAspectRatioPreset.ratio4x3,
//                 CropAspectRatioPreset.ratio5x3,
//                 CropAspectRatioPreset.ratio5x4,
//                 CropAspectRatioPreset.ratio7x5,
//                 CropAspectRatioPreset.ratio16x9
//               ],
//         androidUiSettings: AndroidUiSettings(
//             toolbarTitle: 'Cropper',
//             toolbarColor: aWhite,
//             toolbarWidgetColor: aBlack,
//             cropGridColor: Colors.white38,
//             activeControlsWidgetColor: aGreen,
//             initAspectRatio: CropAspectRatioPreset.original,
//             lockAspectRatio: true),
//         iosUiSettings: IOSUiSettings(
//           title: 'Cropper',
//         ));
//     if (croppedFile != null) {
//       imageFile = croppedFile;
//     }
//     return imageFile!.path;
//   }
//
//   Widget _previewImages(String path) {
//     final Text? retrieveError = _getRetrieveErrorWidget();
//     if (retrieveError != null) {
//       return retrieveError;
//     }
//     if (_imageFileList != null) {
//       return
//           // Why network for web?
//           // See https://pub.dev/packages/image_picker#getting-ready-for-the-web-platform
//           Semantics(
//         label: 'image_picker_example_picked_image',
//         // child: kIsWeb ? Image.network(path) : Image.file(File(path)),
//         child: kIsWeb
//             ? CircleAvatar(
//                 backgroundImage: NetworkImage(path),
//                 radius: 100,
//               )
//             : CircleAvatar(backgroundImage: FileImage(File(path)), radius: 100),
//       );
//     } else if (_pickImageError != null) {
//       return Text(
//         'Pick image error: $_pickImageError',
//         textAlign: TextAlign.center,
//       );
//     } else {
//       return const Text(
//         'You have not yet picked an image.',
//         textAlign: TextAlign.center,
//       );
//     }
//   }
//
//   Widget _handlePreview() {
//     // selectedAvatar = [];
//     print('provider -- ${Provider.of<ProfilePicProvider>(context,listen: false).getProfilePath()}');
//     return kIsWeb
//         ? _imageFileList != null
//             ? _previewImages(_imageFileList![0].path)
//             : SizedBox()
//         : FutureBuilder<String?>(
//             future: _cropImage(),
//             builder: (context, snapshot) {
//               if (snapshot.hasData) {
//                 return _previewImages(snapshot.data!);
//               }
//               return CircleAvatar(
//                 backgroundImage: AssetImage('assets/Ellipse 1.png'),
//                 radius: 100,
//               );
//             },
//           );
//   }
//
//   Future<void> retrieveLostData() async {
//     final LostDataResponse response = await _picker.retrieveLostData();
//     if (response.isEmpty) {
//       return;
//     }
//     if (response.file != null) {
//       setState(() {
//         _imageFile = response.file;
//         _imageFileList = response.files;
//       });
//     } else {
//       _retrieveDataError = response.exception!.code;
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return BaseWidget(
//       appbar: Text(
//         uploadProfilePic,
//         style: TextStyle(
//           fontWeight: FontWeight.bold,
//           fontSize: 20,
//         ),
//       ),
//       appbarHeight: kToolbarHeight,
//       body: Consumer<ProfilePicProvider>(
//         builder: (context, picValue, child) {
//           return Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 20),
//             child: ListView(
//               shrinkWrap: true,
//               physics: const BouncingScrollPhysics(),
//               children: [
//                 Text(
//                   takeOrUploadLine,
//                   softWrap: true,
//                   maxLines: 3,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(
//                   height: 30,
//                 ),
//                 Stack(
//                   children: [
//
//                     picValue.getProfilePath == 'grid' ?
//                       Center(
//                         child: CircleAvatar(
//                           backgroundImage: AssetImage('assets/avatar${selectedAvatar.first}.png'),
//                           radius: 100,
//                         ),
//                       )
//
//
//                     : Center(
//                       child:
//                       !kIsWeb && defaultTargetPlatform == TargetPlatform.android
//                           ? FutureBuilder<void>(
//                         future: retrieveLostData(),
//                         builder: (BuildContext context,
//                             AsyncSnapshot<void> snapshot) {
//                           switch (snapshot.connectionState) {
//                             case ConnectionState.none:
//                             case ConnectionState.waiting:
//                               return const Text(
//                                 'You have not yet picked an image.',
//                                 textAlign: TextAlign.center,
//                               );
//                             case ConnectionState.done:
//                               return _handlePreview();
//
//                             default:
//                               if (snapshot.hasError) {
//                                 return Text(
//                                   'Pick image/video error: ${snapshot.error}}',
//                                   textAlign: TextAlign.center,
//                                 );
//                               } else {
//                                 return const Text(
//                                   'You have not yet picked an image.',
//                                   textAlign: TextAlign.center,
//                                 );
//                               }
//                           }
//                         },
//                       )
//                           : _handlePreview(),
//                     ),
//
//                     IconButton(
//                       onPressed: () {
//                         picValue.setProfilePath('gal');
//                         _onImageButtonPressed(ImageSource.gallery,
//                             context: context);
//                       },
//                       icon: Icon(Icons.browse_gallery),
//                     ),
//                     Positioned(
//                       top: 50,
//                       child: IconButton(
//                         onPressed: () {
//                           picValue.setProfilePath('cam');
//                           _onImageButtonPressed(ImageSource.camera,
//                               context: context);
//                         },
//                         icon: Icon(Icons.camera_alt_rounded),
//                       ),
//                     )
//                   ],
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.all(8.0),
//                   child: Text(
//                     'or',
//                     softWrap: true,
//                     maxLines: 1,
//                     overflow: TextOverflow.ellipsis,
//                     style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
//                     textAlign: TextAlign.center,
//                   ),
//                 ),
//                 Text(
//                   chooseAvatar,
//                   softWrap: true,
//                   maxLines: 3,
//                   overflow: TextOverflow.ellipsis,
//                   style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
//                   textAlign: TextAlign.start,
//                 ),
//                 GridView.builder(
//                     physics: const BouncingScrollPhysics(),
//                     shrinkWrap: true,
//                     gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//                       crossAxisCount: 4,
//                     ),
//                     itemCount: 12,
//                     itemBuilder: (BuildContext context, int index) {
//                       return Padding(
//                         padding: const EdgeInsets.all(5.0),
//                         child: ClipRRect(
//                           borderRadius: BorderRadius.circular(100),
//                           child: GestureDetector(
//                             onTap: () {
//                               selectedAvatar = [];
//                               selectedAvatar.add(index);
//                               picValue.setProfilePath('grid');
//                             },
//                             child: Stack(
//                               children: [
//                                 Container(
//                                   color: aWhite,
//                                   child: Center(
//                                     child: Image.asset('assets/avatar$index.png'),
//                                   ),
//                                 ),
//                                 if (selectedAvatar.contains(index))
//                                   Container(
//                                     alignment: Alignment.center,
//                                     color: aGreen20,
//                                     child: Icon(Icons.check_outlined,
//                                         color: aGreen, size: 30),
//                                   ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       );
//                     }),
//               ],
//             ),
//           );
//         },
//       ),
//       bottomBar: ElevatedButtons(
//         width: double.infinity,
//         label: next,
//         fontSize: 25,
//         radius: 0.0,
//         onClick: () {},
//         borderColor: aGreen,
//         buttonColor: aGreen,
//         labelColor: aWhite,
//       ),
//     );
//   }
//
//   Text? _getRetrieveErrorWidget() {
//     if (_retrieveDataError != null) {
//       final Text result = Text(_retrieveDataError!);
//       _retrieveDataError = null;
//       return result;
//     }
//     return null;
//   }
// }
