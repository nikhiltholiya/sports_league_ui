import 'package:flutter/material.dart';

import '../Pages/base_activity.dart';
import '../Pages/sign_in_page.dart';
import '../components/elevated_buttons.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';

//Created on 20220326
class VerifyEmailPage extends StatefulWidget {
  static const String path = 'verifyEmail';

  const VerifyEmailPage({Key? key}) : super(key: key);

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      appbar: Text(
        verifyEmail,
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
      ),
      appbarHeight: kToolbarHeight,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView(
          shrinkWrap: true,
          physics: const BouncingScrollPhysics(),
          children: [
            SizedBox(
              height: 50,
            ),
            Icon(
              Icons.email_outlined,
              color: aGreen,
              size: 100,
            ),
            SizedBox(
              height: 10,
            ),
            Text(
              verifyEmailInst,
              softWrap: true,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
      bottomBar: ElevatedButtons(
        width: double.infinity,
        label: next,
        fontSize: 25,
        radius: 0.0,
        onClick: () {
          Navigator.pushNamed(context, SignInPage.path);
        },
        borderColor: aGreen,
        buttonColor: aGreen,
        labelColor: aWhite,
      ),
    );
  }
}
