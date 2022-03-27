import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import '../bean/register/register.dart';
import '../utils/Constants.dart';
import '../utils/common.dart';
import '../utils/shared_preferences_utils.dart';
import '../Pages/base_activity.dart';
import '../components/edit_text_form_field.dart';
import '../components/elevated_buttons.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/validators.dart';

//Created on 20220326
class CreateProfilePage extends StatefulWidget {
  static const String path = 'createProfile';

  const CreateProfilePage({Key? key}) : super(key: key);

  @override
  State<CreateProfilePage> createState() => _CreateProfilePageState();
}

class _CreateProfilePageState extends State<CreateProfilePage> with SharedPrefUtils {

  String? bDate;
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {


    return BaseWidget(
      appbar: Text(
        createProfileTitle,
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
            Text(
              createProfileTitle,
              softWrap: true,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 30,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: EditTextFormField(
                textInputAction: TextInputAction.send,
                onTextChange: (value) {
                },
                onTap: () {},
                hint: fullName,
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: FutureBuilder<String?>(
                future: getEmailId(),
                builder: (context, snapshot) {
                  print(snapshot.data);
                  if(snapshot.hasData){
                    return EditTextFormField(
                      isEnable: false,
                      textInputAction: TextInputAction.next,
                      onTextChange: (value) {
                      },
                      onTap: () {},
                      hint: snapshot.data,
                    );
                  }
                  return Center(child : CupertinoActivityIndicator());
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: EditTextFormField(
                textInputAction: TextInputAction.send,
                onTextChange: (value) {
                },
                onTap: () {},
                hint: phoneNo,
              ),
            ),


            GestureDetector(
              onTap: (){
                DatePicker.showDatePicker(
                  context,
                  theme: DatePickerTheme(
                    backgroundColor: aWhite,
                    itemStyle:
                    TextStyle(color: aLightGray),
                  ),
                  showTitleActions: true,
                  minTime: DateTime(
                      DateTime.now().year - 5,
                      DateTime.now().month,
                      DateTime.now().day),
                  maxTime: DateTime.now(),
                  onChanged: (date) {
                    print('change $date');
                  },
                  onConfirm: (date) {
                    bDate = date.toString();
                    setState(() {});
                    print('confirm $date');
                  },
                  currentTime: datePickerDate(
                      bDate ??
                          DateTime.now().toString()),
                );
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 5),
                child: Container(
                  decoration: ShapeDecoration(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(100),side: BorderSide(color: aLightGray))),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Hi',style: TextStyle(fontSize: 16.0),),
                  ),
                  // isEnable: false,
                  // textInputAction: TextInputAction.send,
                  // onTextChange: (value) {
                  // },
                  // onTap: null,
                  // hint: convertDate(
                  //     bDate ??
                  //         DateTime.now().toString(),
                  //     null),
                ),
              ),
            ),

          ],
        ),
      ),
      bottomBar: ElevatedButtons(
        width: double.infinity,
        label: next,
        fontSize: 25,
        radius: 0.0,
        onClick: () {},
        borderColor: aGreen,
        buttonColor: aGreen,
        labelColor: aWhite,
      ),
    );
  }
}
