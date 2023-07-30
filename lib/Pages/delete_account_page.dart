import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../Pages/home_page.dart';
import '../Pages/base_activity.dart';
import '../Pages/no_internet_page.dart';
import '../bean/delete_account/delete_account_data.dart';
import '../components/app_dialog.dart';
import '../components/edit_text_form_field.dart';
import '../components/elevated_buttons.dart';
import '../providers/internet_provider.dart';
import '../utils/Constants.dart';
import '../utils/Internet.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/shared_preferences_utils.dart';

//Created on 20230727 For delete account functionality

class DeleteAccountPage extends StatefulWidget {
  static const String path = 'DeleteAccountPage';

  const DeleteAccountPage({Key? key}) : super(key: key);

  @override
  State<DeleteAccountPage> createState() => _DeleteAccountPageState();
}

class _DeleteAccountPageState extends State<DeleteAccountPage> with isInternetConnection {
  String? password = '';

  final _formKeyDeleteAcPass = GlobalKey<FormState>();

  Map<String, dynamic> paramDeleteAc = {};
  Map<String, dynamic> paramTypeDeleteAc = {};

  late List<String?>? errorList = [];
  bool? isEnable = true;
  late deleteAccountData _deleteAccountData;

  @override
  void initState() {
    paramDeleteAc = {'\$pass': 'String!'};
    paramTypeDeleteAc = {'password': '\$pass'};
    initInternet(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<InternetProvider>(
      builder: (context, valueNet, child) {
        print(valueNet.isConnectivity);
        if (valueNet.getConnected != ConnectivityResult.none) {
          return BaseWidget(
            appbar: Text(
              deleteAc,
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
                    height: 20,
                  ),
                  Text(
                    deleteAcHead,
                    style: TextStyle(fontSize: 20.0, color: aBlack, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    deleteAcMsg,
                    style: TextStyle(fontSize: 16.0, color: aLightGray, fontWeight: FontWeight.normal),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 25),
                      child: ElevatedButtons(
                        width: double.infinity,
                        label: deleteAc.toUpperCase(),
                        fontSize: 20,
                        onClick: () {
                          showBottomSheetView();
                        },
                        borderColor: aRed,
                        buttonColor: aRed,
                        labelColor: aWhite,
                      ),
                    ),
                  ),
                ],
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

  Future<void> showBottomSheetView() async {
    var passStream = StreamController<bool?>();
    await showModalBottomSheet(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(top: Radius.circular(12.0))),
      backgroundColor: Colors.white,
      // isDismissible: await isEnableForgotPass!,
      isDismissible: true,
      context: context,

      isScrollControlled: true,
      builder: (context) => StreamBuilder(
        stream: passStream.stream,
        initialData: true,
        builder: (context, snapshot) => Form(
          key: _formKeyDeleteAcPass,
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
                  deleteAc,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: aWhite),
                ),
                height: 56,
                width: double.infinity,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(deleteAcInst),
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
                  isObscure: snapshot.data,
                  validator: RequiredValidator(errorText: 'Password is required'),
                  hint: passwordLabel,
                  suffixIcon: IconButton(
                      icon: Icon(
                        snapshot.data! ? Icons.remove_red_eye_rounded : Icons.visibility_off_rounded,
                        color: aGreen,
                      ),
                      onPressed: () {
                        passStream.sink.add(!snapshot.data!);
                      }),
                ),
              ),
              Mutation(
                options: MutationOptions(
                  document: gql(deleteAccount(paramDeleteAc, paramTypeDeleteAc)),
                  onError: (OperationException? error) {
                    debugPrint('${DeleteAccountPage.path} * erroR -- $error');
                    Text('$error');
                  },
                  onCompleted: (dynamic resultData) async {
                    debugPrint('${DeleteAccountPage.path} * Result -- $resultData');

                    if (resultData != null) {
                      _deleteAccountData = deleteAccountData.fromJson(resultData);
                      errorList = [];

                      if (_deleteAccountData.deleteAccount.success!) {
                        SharedPreferencesUtils.dataClear();
                        Navigator.pushNamedAndRemoveUntil(
                          context,
                          HomePage.path,
                          (route) => false,
                        );
                      } else {
                        if (_deleteAccountData.deleteAccount.errors?.nonFieldErrors != null)
                          errorList!.add(_deleteAccountData.deleteAccount.errors?.nonFieldErrors?.first.message);

                        if (_deleteAccountData.deleteAccount.errors?.password != null)
                          errorList!.add(_deleteAccountData.deleteAccount.errors?.password?.first.message);
                      }
                      if (errorList!.isNotEmpty) _showAlert();
                    } else {
                      errorList = [];
                      errorList!.add('Result is Null');
                      _showAlert();
                    }
                  },
                ),
                builder: (RunMutation _delAc, QueryResult? addResult) {
                  final doDeleteAccount = (result) {
                    _delAc(result);
                  };

                  return ElevatedButtons(
                    buttonColor: aWhite,
                    onClick: () {
                      FocusManager.instance.primaryFocus?.unfocus();
                      if (_formKeyDeleteAcPass.currentState!.validate()) {
                        Map<String, dynamic> passVariable = {'pass': password};
                        doDeleteAccount(passVariable);
                        debugPrint("passVariable :$passVariable");
                      }
                    },
                    label: confDel,
                    borderColor: aLightGray,
                    labelColor: aLightGray,
                  );
                },
              ),
              Padding(padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom)),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  _showAlert() async {
    return await showDialog(
        context: context,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AppDialog(
            title: deleteAc,
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
            btnNegativeText: dialogDismiss,
            onNegativeClick: () {
              Navigator.pop(context);
            },
          );
        });
  }
}
