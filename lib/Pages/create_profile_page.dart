import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_datetime_picker/flutter_datetime_picker.dart';
import 'package:provider/provider.dart';
import '../Pages/create_profile_picture_page.dart';
import '../components/drop_down_view.dart';
import '../providers/profile_pic_provider.dart';

import '../Pages/base_activity.dart';
import '../components/edit_text_form_field.dart';
import '../components/elevated_buttons.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/common.dart';
import '../utils/shared_preferences_utils.dart';

//Created on 20220326
class CreateProfilePage extends StatefulWidget {
  static const String path = 'createProfile';

  const CreateProfilePage({Key? key}) : super(key: key);

  @override
  State<CreateProfilePage> createState() => _CreateProfilePageState();
}

class _CreateProfilePageState extends State<CreateProfilePage>
    with SharedPrefUtils {
  String? bDate;
  String? dropDownValueCity;
  String? selectedCity;
  String? selectedState;
  String? dropDownValueRate;
  String? selectedRate;
  List<String>? rate;

  @override
  void initState() {
    rate = [];
    for (int i = 3; i <= 10; i++) {
      rate?.add('$i.0');
      if (i < 10) rate?.add('$i.5');
    }
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
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: EditTextFormField(
                textInputAction: TextInputAction.send,
                onTextChange: (value) {},
                onTap: () {},
                hint: firstName,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: EditTextFormField(
                textInputAction: TextInputAction.send,
                onTextChange: (value) {},
                onTap: () {},
                hint: lastName,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: FutureBuilder<String?>(
                future: getEmailId(),
                builder: (context, snapshot) {
                  print(snapshot.data);
                  if (snapshot.hasData) {
                    return EditTextFormField(
                      isEnable: false,
                      textInputAction: TextInputAction.next,
                      onTextChange: (value) {},
                      onTap: () {},
                      hint: snapshot.data,
                    );
                  }
                  return Center(child: CupertinoActivityIndicator());
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: EditTextFormField(
                textInputAction: TextInputAction.send,
                textInputType: TextInputType.number,
                inputFormatter: [
                  FilteringTextInputFormatter.allow(
                    RegExp(r'^\d+?\d*'),
                  )
                ],
                maxLength: 12,
                onTextChange: (value) {},
                onTap: () {},
                hint: phoneNo,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5),
              child: GestureDetector(
                onTap: () {
                  DatePicker.showDatePicker(
                    context,
                    theme: DatePickerTheme(
                      backgroundColor: aWhite,
                      itemStyle: TextStyle(color: aLightGray),
                    ),
                    showTitleActions: true,
                    minTime: DateTime(DateTime.now().year - 70,
                        DateTime.now().month, DateTime.now().day),
                    maxTime: DateTime.now(),
                    onChanged: (date) {
                      print('change $date');
                    },
                    onConfirm: (date) {
                      bDate = date.toString();
                      setState(() {});
                      print('confirm $date');
                    },
                    currentTime:
                        datePickerDate(bDate ?? DateTime.now().toString()),
                  );
                },
                child: Container(
                  margin: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(100),
                          side: BorderSide(color: aPartGray30))),
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Text(
                      '${convertDate(bDate ?? DateTime.now().toString(), null)}',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: DropDownView(
                dropList: [
                  'Portland, Oregon',
                  'Los Angeles, California',
                  'Atlanta, Georgia'
                ],
                hint: selectCity,
                dropdownValue: dropDownValueCity,
                onValueChange: (value) {
                  dropDownValueCity = value;
                  final split = value.split(',');
                  selectedCity = split![0].toString().trim();
                  selectedState = split![1].toString().trim();
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: DropDownView(
                dropList: rate,
                hint: selectRate,
                dropdownValue: dropDownValueRate,
                onValueChange: (value) {
                  dropDownValueRate = value;
                },
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
        onClick: () {
          Provider.of<ProfilePicProvider>(context, listen: false)
              .setXFile(null);
          Navigator.pushNamed(context, CreateProfilePicturePage.path);
        },
        borderColor: aGreen,
        buttonColor: aGreen,
        labelColor: aWhite,
      ),
    );
  }
}
