import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../Pages/base_activity.dart';
import '../Pages/create_profile_page.dart';
import '../Pages/dashboard.dart';
import '../Pages/verify_email_page.dart';
import '../bean/token_auth/token_auth.dart';
import '../components/app_dialog.dart';
import '../components/edit_text_form_field.dart';
import '../components/elevated_buttons.dart';
import '../utils/Constants.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/shared_preferences_utils.dart';
import '../utils/validators.dart';

//Created on 20220402

class SignInPage extends StatefulWidget {
  static const String path = 'signInPage';

  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  late TokenAuthData? _tokenAuthData;
  bool? obSecure = true;
  String? email = '';
  String? password = '';
  String? resetLinkMail = '';

  final _formKey = GlobalKey<FormState>();
  final _formKeyForgotPass = GlobalKey<FormState>();

  // final keyEmail = GlobalKey();
  Map<String, dynamic> paramSignIn = {};
  Map<String, dynamic> paramTypeSignIn = {};

  Map<String, dynamic> paramForgotPass = {};
  Map<String, dynamic> paramTypeForgotPass = {};

  late List<String?>? errorList = [];
  bool? isEnable = true;
  final mutationSendMail = GlobalKey<MutationState>();

  // late StreamController<bool?> _streamController =  StreamController<bool?>();

  @override
  void initState() {
    SharedPreferencesUtils.setToken('');
    paramSignIn = {'\$email': 'String!', '\$pass': 'String!'};
    paramTypeSignIn = {'email': '\$email', 'password': '\$pass'};

    paramForgotPass = {'\$email': 'String!'};
    paramTypeForgotPass = {'email': '\$email'};

    resetLinkMail = SharedPreferencesUtils.getEmail ?? '';
    // _streamController.sink.add(true);
    // _stream =  _streamController.stream;
    super.initState();
  }

  @override
  void dispose() {
    // _streamController.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: BaseWidget(
        appbar: Text(
          signInAc,
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
                height: 50,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: EditTextFormField(
                  isEnable: isEnable!,
                  // key: keyEmail,
                  textInputType: TextInputType.emailAddress,
                  validator: emailValidator,
                  textInputAction: TextInputAction.next,
                  onTap: () {},
                  hint: emailLabel,
                  onTextChange: (value) {
                    email = value;
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: EditTextFormField(
                  isEnable: isEnable!,
                  textInputAction: TextInputAction.next,
                  onTextChange: (value) {
                    password = value;
                  },
                  onTap: () {},
                  isObscure: obSecure,
                  validator: passwordValidator,
                  hint: passwordLabel,
                  suffixIcon: IconButton(
                      icon: Icon(
                        obSecure! ? Icons.remove_red_eye_rounded : Icons.visibility_off_rounded,
                        color: aGreen,
                      ),
                      onPressed: () {
                        obSecure = !obSecure!;
                        setState(() {});
                      }),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    showBottomSheetView();
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      forgotPassword,
                      style:
                          TextStyle(fontWeight: FontWeight.bold, color: aGreen, decoration: TextDecoration.underline),
                    ),
                  ),
                ),
              ),
              Mutation(
                key: mutationSendMail,
                options: MutationOptions(
                  document: gql(sendPasswordResetEmail(paramForgotPass, paramTypeForgotPass)),
                  // update: update,
                  onError: (OperationException? error) {
                    debugPrint('${SignInPage.path} * erroR -- $error');
                    // isEnableForgotPass = true;
                    // setState(() {});

                    // _streamController.sink.add(true);
                    // Text('$error');
                  },
                  // _simpleAlert(context, error.toString()),
                  onCompleted: (dynamic resultData) async {
                    // Text('Thanks for your star!');

                    // isEnableForgotPass = true;
                    // setState(() {});
                    // _streamController.sink.add(true);

                    if (resultData != null) {
                      var data = resultData['sendPasswordResetEmail']['success'];

                      if (data) {
                        Navigator.popAndPushNamed(context, VerifyEmailPage.path, arguments: {'for': forgotPassword});
                      }
                    }
                  },
                  // 'Sorry you changed your mind!',
                ),
                builder: (RunMutation _resetEmail, QueryResult? addResult) {
                  final sendResetEmail = (result) {
                    _resetEmail(result);
                  };

                  // _streamController.sink.add(addResult!.isLoading);
                  return SizedBox();
                },
              ),
            ],
          ),
        ),
        bottomBar: Mutation(
          options: MutationOptions(
            document: gql(tokenAuth(paramSignIn, paramTypeSignIn)),
            // update: update,
            onError: (OperationException? error) {
              debugPrint('${SignInPage.path} * erroR -- $error');
              isEnable = true;
              setState(() {});
              // Text('$error');
            },
            // _simpleAlert(context, error.toString()),
            onCompleted: (dynamic resultData) async {
              // Text('Thanks for your star!');

              isEnable = true;
              setState(() {});
              debugPrint('${SignInPage.path} * Result -- $resultData');

              _tokenAuthData = TokenAuthData.fromJson(resultData);
              debugPrint('${SignInPage.path} * SUCCESS -- ${_tokenAuthData?.tokenAuth?.success}');
              errorList = [];
              if (_tokenAuthData!.tokenAuth!.success!) {
                SharedPreferencesUtils.setEmail(_tokenAuthData?.tokenAuth?.user?.email);
                SharedPreferencesUtils.setToken(_tokenAuthData?.tokenAuth?.token);
                SharedPreferencesUtils.setRefreshToken(_tokenAuthData?.tokenAuth?.refreshToken);
                SharedPreferencesUtils.setUserData(jsonEncode(_tokenAuthData!.tokenAuth?.user));
                SharedPreferencesUtils.setUserId(_tokenAuthData?.tokenAuth?.user?.userId);

                // Provider.of<TokenProvider>(context, listen: false).setToken(_tokenAuthData?.tokenAuth?.token);

                if (_tokenAuthData!.tokenAuth!.user!.firstName.toString().isNotEmpty) {
                  Navigator.pushNamedAndRemoveUntil(context, DashboardPage.path, (route) => false);
                } else {
                  Navigator.pushNamed(context, CreateProfilePage.path);
                }
                // Navigator.pushNamed(context, CreateProfilePage.path);
              } else {
                for (var errData in _tokenAuthData!.tokenAuth!.errors!.nonFieldErrors!) {
                  if (errData.message != null) errorList!.add(errData.message);
                }

                _showAlert();
              }
            },
            // 'Sorry you changed your mind!',
          ),
          builder: (RunMutation _signIn, QueryResult? addResult) {
            final doSignIn = (result) {
              _signIn(result);
            };

            bool? anyLoading = addResult!.isLoading;

            return ElevatedButtons(
              width: double.infinity,
              label: anyLoading ? 'wait' : next,
              fontSize: 25,
              radius: 0.0,
              onClick: () {
                if (_formKey.currentState!.validate()) {
                  Map<String, dynamic> passVariable = {'email': email, 'pass': password};

                  doSignIn(passVariable);
                  isEnable = false;
                  setState(() {});
                }
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

  Future<Widget> _showAlert() async {
    return await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AppDialog(
            title: 'SignIn',
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
            btnNegativeText: 'Dismiss',
            onNegativeClick: () {
              Navigator.pop(context);
            },
            onPositiveClick: () {
              Navigator.of(context).pop();
            },
          );
        });
  }

  // bool? isEnableForgotPass = true;

  Future<void> showBottomSheetView() async {
    await showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(12.0))),
      backgroundColor: Colors.white,
      // isDismissible: await isEnableForgotPass!,
      isDismissible: true,
      context: context,

      isScrollControlled: true,
      builder: (context) => Form(
        key: _formKeyForgotPass,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Container(
              decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(12.0),
                    ),
                  ),
                  color: aGreen),
              alignment: Alignment.center,
              child: Text(
                forgotPassword,
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: aWhite),
              ),
              height: 56,
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(forgotPasswordInst),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: EditTextFormField(
                textController: TextEditingController(text: resetLinkMail),
                isEnable: true,
                textInputType: TextInputType.emailAddress,
                validator: emailValidator,
                textInputAction: TextInputAction.next,
                onTap: () {},
                hint: emailLabel,
                onTextChange: (value) {
                  resetLinkMail = value;
                },
              ),
            ),
            ElevatedButtons(
              buttonColor: aWhite,
              onClick: () {
                if (_formKeyForgotPass.currentState!.validate()) {
                  Map<String, dynamic> passVariable = {'email': resetLinkMail};
                  mutationSendMail.currentState?.runMutation(passVariable);

                  // _streamController.sink.add(false);
                  // isEnableForgotPass = false;
                  // setState(() {});
                }
              },
              label: sendMail,
              borderColor: aLightGray,
              labelColor: aLightGray,
            ),
            Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom)),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
