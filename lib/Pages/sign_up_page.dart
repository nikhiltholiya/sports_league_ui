import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/no_internet_page.dart';
import '../Pages/verify_email_page.dart';
import '../bean/register/register.dart';
import '../bean/resend_activation_mail/resend_activation_mail.dart';
import '../components/app_dialog.dart';
import '../components/edit_text_form_field.dart';
import '../components/elevated_buttons.dart';
import '../providers/internet_provider.dart';
import '../utils/Constants.dart';
import '../utils/Internet.dart';
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

class _SignUpPageState extends State<SignUpPage> with isInternetConnection {
  bool? obSecure = true;
  bool? obSecureRetype = true;
  String? email = '';
  String? password = '';
  String? rePassword = '';

  final _formKey = GlobalKey<FormState>();
  final keyEmail = GlobalKey();
  Map<String, dynamic> paramRegister = {};
  Map<String, dynamic> paramTypeRegister = {};

  Map<String, dynamic> paramSendMail = {};
  Map<String, dynamic> paramTypeSendMail = {};
  late RegisterData _registerData;

  late List<String?>? errorList = [];
  bool? isEnable = true;
  // TODO GHOST #
  // final mutationSendMail = GlobalKey<MutationState>();
  late RunMutation _mutationSendMail;

  @override
  void initState() {
    initInternet(context);
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

    paramSendMail = {'\$email': 'String!'};
    paramTypeSendMail = {'email': '\$email'};
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<InternetProvider>(
      builder: (context, valueNet, child) {
        print(valueNet.isConnectivity);
        if (valueNet.getConnected != ConnectivityResult.none) {
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
                        isEnable: isEnable!,
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

                    // Mutation for sendmail
                    Mutation(
                      // TODO GHOST #
                      // key: mutationSendMail,
                      options: MutationOptions(
                        document: gql(resendActivationEmail(
                            paramSendMail, paramTypeSendMail)),
                        // update: update,
                        onError: (OperationException? error) {
                          debugPrint('**Maill -- erroR*** -- $error');
                          // Text('$error');
                        },

                        // _simpleAlert(context, error.toString()),
                        onCompleted: (dynamic resultData) async {
                          debugPrint('**Maill** $resultData');

                          ResendActivationMailData data =
                              ResendActivationMailData.fromJson(resultData);
                          errorList = [];
                          if (data.resendActivationEmail!.success!) {
                            Navigator.pushNamed(context, VerifyEmailPage.path);
                          } else {
                            if (data.resendActivationEmail?.errors?.email?.first
                                    .message !=
                                null)
                              errorList!.add(data.resendActivationEmail?.errors
                                  ?.email?.first.message);

                            if (data.resendActivationEmail?.errors?.password1
                                    ?.first.message !=
                                null)
                              errorList!.add(data.resendActivationEmail?.errors
                                  ?.password1?.first.message);

                            if (data.resendActivationEmail?.errors?.password2
                                    ?.first.message !=
                                null)
                              errorList!.add(data.resendActivationEmail?.errors
                                  ?.password2?.first.message);

                            _showAlert();
                          }
                        },
                      ),
                      builder: (RunMutation _sendMail, QueryResult? addResult) {
                        // final doSendmail = (result) {
                        //   _sendMail(result);
                        // };
                        this._mutationSendMail = _sendMail;
                        // Future.delayed(const Duration(milliseconds: 200)).then((value) => doSendmail(passVariable));
                        return SizedBox();
                      },
                    ),
                  ],
                ),
              ),
              bottomBar: Mutation(
                options: MutationOptions(
                  document:
                      gql(RegisterPlayer(paramRegister, paramTypeRegister)),
                  // update: update,
                  onError: (OperationException? error) {
                    debugPrint('${SignUpPage.path} erroR -- $error');
                    isEnable = true;
                    setState(() {});
                    // Text('$error');
                  },
                  // _simpleAlert(context, error.toString()),
                  onCompleted: (dynamic resultData) async {
                    // Text('Thanks for your star!');

                    isEnable = true;
                    setState(() {});
                    debugPrint('${SignUpPage.path}**** $resultData');

                    _registerData = RegisterData.fromJson(resultData);
                    debugPrint(
                        '${SignUpPage.path} SUCCESS -- ${_registerData.register?.success}');
                    errorList = [];
                    if (_registerData.register!.success!) {
                      SharedPreferencesUtils.setEmail(email);
                      SharedPreferencesUtils.setToken(
                          _registerData.register?.token);
                      SharedPreferencesUtils.setRefreshToken(
                          _registerData.register?.refreshToken);

                      // Provider.of<TokenProvider>(context,listen: false).setToken(_registerData.register?.token);

                      // send email
                      Map<String, dynamic> passEmail = {
                        'email': email,
                      };
                      // TODO GHOST #
                      // mutationSendMail.currentState?.runMutation(passEmail);
                      _mutationSendMail(passEmail);
                    } else {
                      if (_registerData
                              .register?.errors?.email?.first.message !=
                          null)
                        errorList!.add(_registerData
                            .register?.errors?.email?.first.message);

                      if (_registerData
                              .register?.errors?.password1?.first.message !=
                          null)
                        errorList!.add(_registerData
                            .register?.errors?.password1?.first.message);

                      if (_registerData
                              .register?.errors?.password2?.first.message !=
                          null)
                        errorList!.add(_registerData
                            .register?.errors?.password2?.first.message);

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
                        Map<String, dynamic> passVariable = {
                          'email': email,
                          'pass1': password,
                          'pass2': rePassword
                        };

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

  _showAlert() async {
    return await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AppDialog(
            title: signUp,
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
