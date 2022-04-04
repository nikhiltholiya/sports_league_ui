import 'dart:ui';

import 'package:flutter/material.dart';
import '../Pages/sign_in_page.dart';
import '../Pages/base_activity.dart';
import '../Pages/sign_up_page.dart';
import '../components/app_chips.dart';
import '../components/elevated_buttons.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';

//Created on 20220325
class HomePage extends StatelessWidget {
  static const String path = 'homePage';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      appbarHeight: 0,
      appbar: Text(''),
      body: ListView(
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        // crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(
            height: 50,
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              welcomeText,
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            welcomeInst,
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
            padding: const EdgeInsets.all(16.0),
            child: ElevatedButtons(
              width: double.infinity,
              fontSize: 14,
              isIcon: true,
              icon: Icon(Icons.mail_rounded, color: aGreen, size: 30,),
              label: signUpBtn,
              labelColor: aBlack,
              buttonColor: aWhite,
              borderColor: aLightGray,
              onClick: () {
                Navigator.pushNamed(context, SignUpPage.path);
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(alreadySignup),
              GestureDetector(
                onTap: (){
                  Navigator.pushNamed(context, SignInPage.path);
                },
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Text(loginBtn, style: TextStyle(
                      fontWeight: FontWeight.bold, color: aGreen,decoration: TextDecoration.underline),),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
