import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';

import '../Pages/base_activity.dart';
import '../Pages/verify_email_page.dart';
import '../bean/register/register.dart';
import '../components/edit_text_form_field.dart';
import '../components/elevated_buttons.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/shared_preferences_utils.dart';
import '../utils/validators.dart';

//Created on 20220325

class SignUpPage extends StatefulWidget {
  static const String path = 'signUpPage';

  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> with SharedPrefUtils {
  bool? obSecure = true;
  bool? obSecureRetype = true;
  String? email = '';
  String? password = '';
  String? rePassword = '';

  final _formKey = GlobalKey<FormState>();
  final keyEmail = GlobalKey();
  Map<String, dynamic> paramRegister = {};
  Map<String, dynamic> paramTypeRegister = {};
  late RegisterData _registerData;

  late List<String?> errorList = [];

  @override
  void initState() {
    paramRegister = {
      '\$email': 'String!',
      '\$pass1': 'String!',
      '\$pass2': 'String!'
    };
    paramTypeRegister = {
      'email': '\$email',
      'password1': '\$pass1',
      'password2': '\$pass2'
    };
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: BaseWidget(
        appbar: Text(
          createAc,
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
                        obSecure!
                            ? Icons.remove_red_eye_rounded
                            : Icons.visibility_off_rounded,
                        color: aGreen,
                      ),
                      onPressed: () {
                        obSecure = !obSecure!;
                        setState(() {});
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: EditTextFormField(
                  textInputAction: TextInputAction.send,
                  onTextChange: (value) {
                    rePassword = value;
                  },
                  onTap: () {},
                  isObscure: obSecureRetype,
                  validator: (val) =>
                      MatchValidator(errorText: 'Password do not match')
                          .validateMatch(val!, password!),
                  hint: rePasswordLabel,
                  suffixIcon: IconButton(
                      icon: Icon(
                        obSecureRetype!
                            ? Icons.remove_red_eye_rounded
                            : Icons.visibility_off_rounded,
                        color: aGreen,
                      ),
                      onPressed: () {
                        obSecureRetype = !obSecureRetype!;
                        setState(() {});
                      }),
                ),
              ),
              if (errorList.length > 0)
                ListView.builder(
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(errorList[index]!),
                    );
                  },
                  shrinkWrap: true,
                )
            ],
          ),
        ),
        bottomBar: ElevatedButtons(
          width: double.infinity,
          label: next,
          fontSize: 25,
          radius: 0.0,
          onClick: () {
            if (_formKey.currentState!.validate()) {
              Map<String, dynamic> passVariable = {
                'email': email,
                'pass1': password,
                'pass2': rePassword
              };

              setEmailId(email);
              Navigator.pushNamed(context, VerifyEmailPage.path);
            }
          },
          borderColor: aGreen,
          buttonColor: aGreen,
          labelColor: aWhite,
        ),
        // bottomBar: Mutation(
        //   options: MutationOptions(
        //     document: gql(RegisterPlayer(paramRegister, paramTypeRegister)),
        //     // update: update,
        //     onError: (OperationException? error) {
        //       print('erroR -- $error');
        //       // Text('$error');
        //     },
        //     // _simpleAlert(context, error.toString()),
        //     onCompleted: (dynamic resultData) {
        //       // Text('Thanks for your star!');
        //       print('**** $resultData');
        //
        //       _registerData = RegisterData.fromJson(resultData);
        //       print('SUCCESS -- ${_registerData.register?.success}');
        //       errorList = [];
        //       if (_registerData.register!.success!) {
        //
        //         setEmailId(email);
        //         setToken(_registerData.register?.token);
        //         setRefreshToken(_registerData.register?.refreshToken);
        //         Navigator.pushNamed(context, VerifyEmailPage.path);
        //
        //
        //       } else {
        //         errorList
        //             .add(_registerData.register?.errors?.email?.first.message);
        //         errorList.add(
        //             _registerData.register?.errors?.password1?.first.message);
        //         errorList.add(
        //             _registerData.register?.errors?.password2?.first.message);
        //       }
        //     },
        //     // 'Sorry you changed your mind!',
        //   ),
        //   builder: (RunMutation _register, QueryResult? addResult) {
        //     final doRegister = (result) {
        //       _register(result);
        //     };
        //
        //     bool? anyLoading = addResult!.isLoading;
        //
        //     return ElevatedButtons(
        //       width: double.infinity,
        //       label: anyLoading ? 'wait' : next,
        //       fontSize: 25,
        //       radius: 0.0,
        //       onClick: () {
        //         if (_formKey.currentState!.validate()) {
        //           Map<String, dynamic> passVariable = {
        //             'email': email,
        //             'pass1': password,
        //             'pass2': rePassword
        //           };
        //
        //           doRegister(passVariable);
        //         }
        //       },
        //       borderColor: aGreen,
        //       buttonColor: aGreen,
        //       labelColor: aWhite,
        //     );
        //   },
        // ),
      ),
    );
  }
}
