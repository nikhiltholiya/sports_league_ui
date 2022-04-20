import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../Pages/base_activity.dart';
import '../bean/token_auth/token_auth.dart';
import '../components/bordered_circle_avatar.dart';
import '../components/decorated_app_header_tile.dart';
import '../components/elevated_buttons.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/shared_preferences_utils.dart';

//Changes on 20220411
class ContactUsPage extends StatefulWidget {
  static const String path = 'contactUs';

  const ContactUsPage({Key? key}) : super(key: key);

  @override
  State<ContactUsPage> createState() => _ContactUsPageState();
}

class _ContactUsPageState extends State<ContactUsPage> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var data = LoggedUser.fromJson(jsonDecode(SharedPreferencesUtils.getUserData.toString()));

    return BaseWidget(
      appbar: AppBar(),
      isLeading: false,
      appbarHeight: 0.0,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          contactUsHeader(
            name: data.firstName,
          ),
          Flexible(
            fit: FlexFit.tight,
            flex: 1,
            child: Container(
              color: aWhite,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                child: TextFormField(
                  maxLines: 10,
                  onChanged: (value) => {},
                  decoration: InputDecoration(
                    counterStyle: TextStyle(height: 0.0),
                    counterText: '',
                    //Remove space for counter
                    contentPadding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 0.0),
                    hintText: 'Enter your query',
                    focusColor: Colors.black,
                    fillColor: aWhite,
                    filled: true,
                    errorText: null,
                    errorStyle: TextStyle(
                      fontSize: 10,
                      color: aRed,
                    ),
                    errorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                        color: aRed,
                        width: 1.0,
                      ),
                    ),
                    focusedErrorBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                        color: aRed,
                        width: 1.0,
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                        color: aPartGray30,
                        width: 1.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                        color: aPartGray30,
                        width: 1.0,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12.0),
                      borderSide: const BorderSide(
                        color: aGreen,
                        width: 1.0,
                      ),
                    ),
                  ),
                  cursorColor: aGreen,
                ),
              ),
            ),
          ),
        ],
      ),
      bottomBar: ElevatedButtons(
        width: double.infinity,
        label: sendInquiries,
        fontSize: 25,
        radius: 0.0,
        onClick: () {},
        borderColor: aGreen,
        buttonColor: aGreen,
        labelColor: aWhite,
      ),
    );
  }
}

class contactUsHeader extends StatelessWidget {
  final String? name;
  final String? userImage;

  const contactUsHeader({Key? key, this.name = 'user', this.userImage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DecoratedAppHeader(height: 200),
        Positioned(
          top: 0.0,
          left: 0,
          child: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(
                kIsWeb
                    ? Icons.arrow_back
                    : Platform.isIOS
                        ? Icons.arrow_back_ios
                        : Icons.arrow_back,
                color: aWhite),
          ),
        ),
        Positioned(
          top: 56.0,
          left: 20,
          child: RichText(
              text: TextSpan(children: <TextSpan>[
            TextSpan(
              text: "Hello,\n",
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: aWhite,
              ),
            ),
            TextSpan(
              text: name,
              style: GoogleFonts.poppins(
                fontSize: 26,
                color: aWhite,
              ),
            ),
          ])),
        ),
        Positioned(
          top: 50,
          right: 20,
          child: BorderedCircleAvatar(radius: 40, path: 'assets/Ellipse 5.png'),
        )
      ],
    );
  }
}

class MenuItems {
  final String? title;
  final String? image;
  final String? subtitle;
  final Color? color;
  final String? path;

  MenuItems({this.title, this.image, this.subtitle, this.color, this.path});
}
