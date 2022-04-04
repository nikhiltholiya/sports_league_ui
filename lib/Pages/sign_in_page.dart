import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../Pages/base_activity.dart';
import '../Pages/create_profile_page.dart';
import '../Pages/dashboard.dart';
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

class _SignInPageState extends State<SignInPage> with SharedPrefUtils {
  late TokenAuthData? _tokenAuthData;
  bool? obSecure = true;
  String? email = '';
  String? password = '';

  final _formKey = GlobalKey<FormState>();
  final keyEmail = GlobalKey();
  Map<String, dynamic> paramSignIn = {};
  Map<String, dynamic> paramTypeSignIn = {};

  late List<String?>? errorList = [];
  bool? isEnable = true;
  final mutationSendMail = GlobalKey<MutationState>();

  @override
  void initState() {
    paramSignIn = {'\$email': 'String!', '\$pass': 'String!'};
    paramTypeSignIn = {'email': '\$email', 'password': '\$pass'};

    super.initState();
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
                  key: keyEmail,
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
            ],
          ),
        ),
        bottomBar: Mutation(
          options: MutationOptions(
            document: gql(tokenAuth(paramSignIn, paramTypeSignIn)),
            // update: update,
            onError: (OperationException? error) {
              print('erroR -- $error');
              isEnable = true;
              setState(() {});
              // Text('$error');
            },
            // _simpleAlert(context, error.toString()),
            onCompleted: (dynamic resultData) async {
              // Text('Thanks for your star!');

              isEnable = true;
              setState(() {});
              print('**** $resultData');

              _tokenAuthData = TokenAuthData.fromJson(resultData);
              print('SUCCESS -- ${_tokenAuthData?.tokenAuth?.success}');
              errorList = [];
              if (_tokenAuthData!.tokenAuth!.success!) {
                setEmailId(_tokenAuthData?.tokenAuth?.user?.email);
                setToken(_tokenAuthData?.tokenAuth?.token);
                setRefreshToken(_tokenAuthData?.tokenAuth?.refreshToken);
                // setLoggedUser(_tokenAuthData?.tokenAut!);
                setLoggedUserData(jsonEncode(_tokenAuthData!.tokenAuth?.user));

                Navigator.pushNamed(
                    context, _tokenAuthData!.tokenAuth!.user!.firstName.toString().isNotEmpty ? DashboardPage.path : CreateProfilePage.path);
              } else {
                for (var errData in _tokenAuthData!.tokenAuth!.errors!.nonFieldErrors!) {
                  if (errData.message != null) errorList!.add(errData.message);
                }

                _showAlert();
              }
            },
            // 'Sorry you changed your mind!',
          ),
          builder: (RunMutation _register, QueryResult? addResult) {
            final doRegister = (result) {
              _register(result);
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

                  doRegister(passVariable);
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
}
