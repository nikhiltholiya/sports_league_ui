import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:graphql_flutter/graphql_flutter.dart';

import '../Pages/base_activity.dart';
import '../bean/password_change/password_change.dart';
import '../components/app_dialog.dart';
import '../components/edit_text_form_field.dart';
import '../components/elevated_buttons.dart';
import '../utils/Constants.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/shared_preferences_utils.dart';
import '../utils/validators.dart';

//Created on 20220409
class PasswordChangePage extends StatefulWidget {
  static const String path = 'passwordChangePage';

  const PasswordChangePage({Key? key}) : super(key: key);

  @override
  State<PasswordChangePage> createState() => _PasswordChangePageState();
}

class _PasswordChangePageState extends State<PasswordChangePage> {
  bool? obSecureOld = true;
  bool? obSecure = true;
  bool? obSecureRetype = true;
  String? oldPassword = '';
  String? newPassword = '';
  String? reNewPassword = '';

  final _formKey = GlobalKey<FormState>();
  Map<String, dynamic> param = {};
  Map<String, dynamic> paramType = {};

  late PasswordChangeData _passwordChangeData;

  late List<String?>? errorList = [];
  bool? isEnable = true;
  final mutationSendMail = GlobalKey<MutationState>();

  @override
  void initState() {
    param = {'\$oldPassword': 'String!', '\$pass1': 'String!', '\$pass2': 'String!'};
    paramType = {'oldPassword': '\$oldPassword', 'newPassword1': '\$pass1', 'newPassword2': '\$pass2'};

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: BaseWidget(
        appbar: Text(
          changePassword,
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
                  isObscure: obSecureOld,
                  textInputAction: TextInputAction.next,
                  onTap: () {},
                  hint: enterOldPass,
                  onTextChange: (value) {
                    oldPassword = value;
                  },
                  suffixIcon: IconButton(
                      icon: Icon(
                        obSecureOld! ? Icons.remove_red_eye_rounded : Icons.visibility_off_rounded,
                        color: aGreen,
                      ),
                      onPressed: () {
                        obSecureOld = !obSecureOld!;
                        setState(() {});
                      }),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: EditTextFormField(
                  isEnable: isEnable!,
                  textInputAction: TextInputAction.next,
                  onTextChange: (value) {
                    newPassword = value;
                  },
                  onTap: () {},
                  isObscure: obSecure,
                  validator: passwordValidator,
                  hint: enterNewRePass,
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
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: EditTextFormField(
                  isEnable: isEnable!,
                  textInputAction: TextInputAction.send,
                  onTextChange: (value) {
                    reNewPassword = value;
                  },
                  onTap: () {},
                  isObscure: obSecureRetype,
                  validator: (val) =>
                      MatchValidator(errorText: 'Password do not match').validateMatch(val!, newPassword!),
                  hint: enterNewRePass,
                  suffixIcon: IconButton(
                      icon: Icon(
                        obSecureRetype! ? Icons.remove_red_eye_rounded : Icons.visibility_off_rounded,
                        color: aGreen,
                      ),
                      onPressed: () {
                        obSecureRetype = !obSecureRetype!;
                        setState(() {});
                      }),
                ),
              ),
            ],
          ),
        ),
        bottomBar: Mutation(
          options: MutationOptions(
            document: gql(passwordChange(param, paramType)),
            // update: update,
            onError: (OperationException? error) {
              debugPrint('${PasswordChangePage.path} erroR -- $error');
              isEnable = true;
              setState(() {});
              // Text('$error');
            },
            // _simpleAlert(context, error.toString()),
            onCompleted: (dynamic resultData) async {
              // Text('Thanks for your star!');

              isEnable = true;
              setState(() {});
              debugPrint('${PasswordChangePage.path}**** $resultData');

              if (resultData != null) {
                _passwordChangeData = PasswordChangeData.fromJson(resultData);
                errorList = [];

                if (_passwordChangeData.passwordChange!.success!) {
                  SharedPreferencesUtils.setToken(_passwordChangeData.passwordChange?.token);
                  SharedPreferencesUtils.setRefreshToken(_passwordChangeData.passwordChange?.refreshToken);

                  errorList!.add(passwordChanged);
                } else {
                  if (_passwordChangeData.passwordChange?.errors?.oldPassword! != null)
                    errorList!.add(_passwordChangeData.passwordChange?.errors?.oldPassword!.first.message);

                  // if (_passwordChangeData.passwordChange?.errors?.newPassword! != null)
                  //   errorList!.add(_passwordChangeData.passwordChange?.errors?.newPassword!.first.message);
                }

                _showAlert(_passwordChangeData.passwordChange!.success!);
              }
            },
            // 'Sorry you changed your mind!',
          ),
          builder: (RunMutation _resetPass, QueryResult? addResult) {
            final doResetPass = (result) {
              _resetPass(result);
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
                    'oldPassword': oldPassword,
                    'pass1': newPassword,
                    'pass2': reNewPassword
                  };

                  debugPrint('passVariable - $passVariable');
                  doResetPass(passVariable);
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

  Future<Widget> _showAlert(bool? success) async {
    return await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AppDialog(
            title: changePassword,
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
            btnNegativeText: success! ? 'OKAY ' : 'Dismiss',
            onNegativeClick: () {
              if (success) {
                Navigator.of(context).pop();
                Navigator.pop(context);
              } else {
                Navigator.pop(context);
              }
            },
            onPositiveClick: () {
              Navigator.of(context).pop();
            },
          );
        });
  }
}
