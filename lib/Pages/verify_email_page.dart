import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/no_internet_page.dart';
import '../Pages/sign_in_page.dart';
import '../components/elevated_buttons.dart';
import '../providers/internet_provider.dart';
import '../utils/Internet.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';

//Created on 20220326
class VerifyEmailPage extends StatefulWidget {
  static const String path = 'verifyEmail';

  const VerifyEmailPage({Key? key}) : super(key: key);

  @override
  State<VerifyEmailPage> createState() => _VerifyEmailPageState();
}

class _VerifyEmailPageState extends State<VerifyEmailPage> with isInternetConnection {
  var passData;

  @override
  void initState() {
    initInternet(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    passData = ModalRoute.of(context)!.settings.arguments;

    return Consumer<InternetProvider>(
      builder: (context, valueNet, child) {
        print(valueNet.isConnectivity);
        if (valueNet.getConnected != ConnectivityResult.none) {
          return BaseWidget(
            appbar: Text(
              verifyEmail,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            // leading: IconButton(onPressed: () {},
            //     icon: Icon(kIsWeb ? Icons.arrow_back : Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back)),
            appbarHeight: kToolbarHeight,
            onBackClick: () => onBackManage(),
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
                onBackManage();
              },
              borderColor: aGreen,
              buttonColor: aGreen,
              labelColor: aWhite,
            ),
          );
        } else {
          return NoInternetPage(
            onClick: () {},
          );
        }
      },
    );
  }

  @override
  void dispose() {
    disposeInternet();
    super.dispose();
  }

  Future<void> onBackManage() async {
    print('passData $passData');
///20230706 Removed this portion, that used for reset password..
    /// if (passData != null) {
    ///   if (passData['for'] == forgotPassword) {
    ///     // await Navigator.pushReplacementNamed(context, PasswordResetPage.path);
    ///   }
    /// } else {
      await Navigator.pushReplacementNamed(context, SignInPage.path);
    /// }
  }
}
