import 'package:flutter/material.dart';
import 'package:tenniston/Pages/base_activity.dart';
import 'package:tenniston/Pages/profile_detail_page.dart';
import 'package:tenniston/Pages/schedule_page.dart';
import 'package:tenniston/utils/Constants.dart' as Constants;
import 'package:tenniston/utils/app_colors.dart';



//Updated on 20220307
class ProfilePage extends StatefulWidget {
  static const String path = 'profilePage';

  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String readRepositories = Constants.homepageQuery;
  int curent_index = 1;
  var dataRecent;


  @override
  Widget build(BuildContext context) {

    return BaseWidget(
      appbar: AppBar(
        centerTitle: true,
        title: Text(''),
        toolbarHeight: 0,
      ),
      body: curent_index == 0
          ? SchedulePage()
          : ProfileDetailPage(),
      fab: FloatingActionButton(
        backgroundColor: aGreen,
        onPressed: () {},
        child: Image.asset(
          "assets/Geolocation.png",
          fit: BoxFit.cover,
        ),
      ),
      bottomBar: SizedBox(
        height: kToolbarHeight,
        child: Align(
          alignment: Alignment.center,
          child: BottomNavigationBar(
              selectedItemColor: aGreen,
              unselectedItemColor: aLightGray,
              selectedFontSize: 10,
              unselectedFontSize: 10,
              onTap: (d) {
                setState(() {
                  curent_index = d;
                });
              },
              showUnselectedLabels: true,
              currentIndex: curent_index,
              showSelectedLabels: true,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    label: ("Schedule"),
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Image.asset(
                        "assets/Vector (2).png",
                        height: 18,
                        width: 18,
                        color: curent_index == 0 ? Colors.green : Colors.grey,
                        fit: BoxFit.cover,
                      ),
                    )),
                BottomNavigationBarItem(
                  label: ("Profile"),
                  icon: Padding(
                    padding: const EdgeInsets.only(bottom: 5.0),
                    child: Image.asset(
                      "assets/Active (3).png",
                      height: 18,
                      width: 18,
                      color: curent_index == 1 ? Colors.green : Colors.grey,
                      fit: BoxFit.cover,
                    ),
                  ),
                )
              ]),
        ),
      ),
    );
  }
}