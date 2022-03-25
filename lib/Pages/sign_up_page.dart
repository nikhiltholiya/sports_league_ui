import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import '../Pages/base_activity.dart';
import '../components/edit_text_form_field.dart';
import '../components/elevated_buttons.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/validators.dart';

//Created on 20220325

class SignUpPage extends StatefulWidget {
  static const String path = 'signUpPage';

  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

bool? obSecure = true;
bool? obSecureRetype = true;
String? email = '';
String? password = '';
String? rePassword = '';

final _formKey = GlobalKey<FormState>();
final keyEmail = GlobalKey();

class _SignUpPageState extends State<SignUpPage> {
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

              EditTextFormField(
                key: keyEmail,
                textInputType: TextInputType.emailAddress,
                validator: emailValidator,
                onTap: () {},
                hint: 'Email',
                onTextChange: (value) {
                  email = value;
                },
              ),
              EditTextFormField(
                onTextChange: (value) {
                  password = value;
                },
                onTap: () {},
                isObscure: obSecure,
                validator: passwordValidator,
                hint: 'Password',
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
              EditTextFormField(
                onTextChange: (value) {
                  rePassword = value;
                },
                onTap: () {},
                isObscure: obSecureRetype,
                validator: (val) =>
                    MatchValidator(errorText: 'Password do not match')
                        .validateMatch(val!, password!),
                hint: 'Retype Password',
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
            ],
          ),
        ),
        bottomBar: ElevatedButtons(
          width: double.infinity,
          label: next,
          fontSize: 25,
          radius: 0.0,
          onClick: () {
            if (_formKey.currentState!.validate()) {}
          },
          borderColor: aGreen,
          buttonColor: aGreen,
          labelColor: aWhite,
        ),
      ),
    );
  }
}
