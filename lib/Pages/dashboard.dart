import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenniston/Pages/Profile.dart';

import 'league_details.dart';

//Changes on 20220225
class dashboardHeader extends StatelessWidget {
  const dashboardHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(16),
          bottomRight: Radius.circular(16),
        ),
        gradient: LinearGradient(
            colors: [Color(0xff47BA79), Color(0xff47BA79), Color(0xff3E4982)]),
        image: DecorationImage(
          image: AssetImage(
            "assets/tennis.png",
          ),
          fit: BoxFit.fill,
          colorFilter: new ColorFilter.mode(
              Colors.black.withOpacity(0.19), BlendMode.dstATop),
        ),
      ),
      child: Stack(
        children: [
          RichText(
              text: TextSpan(children: <TextSpan>[
            TextSpan(
              text: "Hello,\n",
              style: GoogleFonts.poppins(
                fontSize: 14,
                color: Colors.white,
              ),
            ),
            TextSpan(
              text: "Kalpesh\n",
              style: GoogleFonts.poppins(
                fontSize: 26,
                color: Colors.white,
              ),
            ),
          ])),
          Positioned(
              right: 20,
              child: CircleAvatar(
                radius: 40,
                child : Image.asset('assets/Ellipse 5.png')
                // backgroundImage: NetworkImage(
                //     'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              ))
        ],
      ),
    );
  }
}

class dashboardMenu extends StatelessWidget {
  final menu_image, menu_color, title, subtitle;
  final Function? onMenuClick;

  const dashboardMenu(
      {Key? key,
      this.menu_image,
      this.menu_color,
      this.title,
      this.subtitle,
      this.onMenuClick})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onMenuClick!(),
      child: Container(
        decoration: BoxDecoration(
          color: menu_color,
          borderRadius: BorderRadius.circular(12),
        ),
        child : ClipRRect(
          borderRadius:
          BorderRadius.circular(12.0),
          child: Stack(
            children: [
              Positioned(
                child: Image.asset(
                  'assets/$menu_image',width: 60,
                ),
                top: -25,
                right: -25,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Center(
                    child: Text(
                      title,
                      style: GoogleFonts.workSans(
                        fontSize: 16,
                        color: Color(0xffffffff),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Text(
                    subtitle,
                    style: GoogleFonts.workSans(
                      fontSize: 12,
                      color: Color(0xffffffff),
                      fontWeight: FontWeight.w300,
                    ),
                  )
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}

class MenuItems {
  final String? title;
  final String? image;
  final String? subtitle;
  final Color? color;
  final String? path;

  MenuItems({this.title, this.image, this.subtitle, this.color, this.path});
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);
  final String path = 'dashboard';

  @override
  Widget build(BuildContext context) {
    List<MenuItems>? dashBoardMenuItems = [
      MenuItems(
          title: 'My Leagues',
          image: 'transperent_tennis_ball_icon_green.png',
          subtitle: 'Check league status',
          color: Color(0xff31a05f),
          path: LeagueDetails().path),
      MenuItems(
          title: 'Submit Score',
          image: 'transperent_tennis_ball_icon_indigo.png',
          subtitle: 'Submit your score',
          color: Color(0xff3e4982),
          path: ''),
      MenuItems(
          title: 'Matches',
          image: 'transperent_tennis_ball_icon_blue.png',
          subtitle: 'Challenge for match',
          color: Color(0xff345891),
          path: ''),
      MenuItems(
          title: 'My Profile',
          image: 'transperent_tennis_ball_icon_red.png',
          subtitle: 'Check / edit profile',
          color: Color(0xffeb5945),
          path: ProfilePage().path),
      MenuItems(
          title: 'Latest Scores',
          image: 'transperent_tennis_ball_icon_yellow.png',
          subtitle: 'Check latest scores',
          color: Color(0xffd99726),
          path: ''),
      MenuItems(
          title: 'Contact Us',
          image: 'transperent_tennis_ball_icon_black.png',
          subtitle: 'Contact support team',
          color: Color(0xff263238),
          path: ''),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      // body: Column(
      //   crossAxisAlignment: CrossAxisAlignment.stretch,
      //   children: [
      //     Container(
      //         child: dashboardHeader()),
      //     SizedBox(
      //       height: 18,
      //     ),
      //     Row(
      //       children: [
      //         Text(
      //           "Explore",
      //           style: GoogleFonts.poppins(
      //             fontSize: 16,
      //             color: Color(0xff8c8c8c),
      //           ),
      //         ),
      //       ],
      //     ),
      //
      //     // Padding(
      //     //     padding: const EdgeInsets.only(left: 20.0, right: 20),
      //     //     child: Column(children: [
      //     //       Row(
      //     //         children: [
      //     //           Text(
      //     //             "Explore",
      //     //             style: GoogleFonts.poppins(
      //     //               fontSize: 16,
      //     //               color: Color(0xff8c8c8c),
      //     //             ),
      //     //           ),
      //     //         ],
      //     //       ),
      //     //       SizedBox(
      //     //         height: 8,
      //     //       ),
      //     //       Row(
      //     //         children: [
      //     //           Expanded(
      //     //             flex: 9,
      //     //             child: Column(children: [
      //     //               GestureDetector(
      //     //                 onTap: () {
      //     //                   Navigator.pushNamed(context, LeagueDetails().path);
      //     //                 },
      //     //                 child: dashboardMenu(
      //     //                   menu_image:
      //     //                       "transperent_tennis_ball_icon_green.png",
      //     //                   menu_color: 0xff31a05f,
      //     //                   title: "My Leagues",
      //     //                   subtitle: "Check league status",
      //     //                 ),
      //     //               )
      //     //             ]),
      //     //           ),
      //     //           Expanded(flex: 1, child: Container()),
      //     //           Expanded(
      //     //             flex: 9,
      //     //             child: Column(children: [
      //     //               dashboardMenu(
      //     //                 menu_image: "transperent_tennis_ball_icon_indigo.png",
      //     //                 menu_color: 0xff3e4982,
      //     //                 title: "Submit Score",
      //     //                 subtitle: "Submit your score",
      //     //               ),
      //     //             ]),
      //     //           )
      //     //         ],
      //     //       ),
      //     //       SizedBox(
      //     //         height: 16,
      //     //       ),
      //     //       Row(
      //     //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     //         children: [
      //     //           Expanded(
      //     //             flex: 7,
      //     //             child: Column(children: [
      //     //               dashboardMenu(
      //     //                 menu_image: "transperent_tennis_ball_icon_blue.png",
      //     //                 menu_color: 0xff345891,
      //     //                 title: "Matches",
      //     //                 subtitle: "Challenge for match",
      //     //               ),
      //     //             ]),
      //     //           ),
      //     //           Expanded(flex: 1, child: Container()),
      //     //           Expanded(
      //     //             flex: 7,
      //     //             child: Column(children: [
      //     //               GestureDetector(
      //     //                 onTap: () {
      //     //                   Navigator.push(
      //     //                     context,
      //     //                     MaterialPageRoute(
      //     //                         builder: (context) => const ProfilePage()),
      //     //                   );
      //     //                 },
      //     //                 child: dashboardMenu(
      //     //                   menu_image: "transperent_tennis_ball_icon_red.png",
      //     //                   menu_color: 0xffeb5945,
      //     //                   title: "My Profile",
      //     //                   subtitle: "Check / edit profile",
      //     //                 ),
      //     //               )
      //     //             ]),
      //     //           )
      //     //         ],
      //     //       ),
      //     //       SizedBox(
      //     //         height: 16,
      //     //       ),
      //     //       Row(
      //     //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     //         children: [
      //     //           Expanded(
      //     //             flex: 7,
      //     //             child: Column(children: [
      //     //               dashboardMenu(),
      //     //             ]),
      //     //           ),
      //     //           Expanded(flex: 1, child: Container()),
      //     //           Expanded(
      //     //             flex: 7,
      //     //             child: Column(children: [
      //     //               dashboardMenu(
      //     //                 menu_image: "transperent_tennis_ball_icon_black.png",
      //     //                 menu_color: 0xff263238,
      //     //                 title: "Contact Us",
      //     //                 subtitle: "Contact support team",
      //     //               ),
      //     //             ]),
      //     //           )
      //     //         ],
      //     //       ),
      //     //     ])),
      //   ],
      // ),

      // body: CustomScrollView(
      //   slivers: <Widget>[
      //     SliverAppBar(
      //       snap: false,
      //       pinned: false,
      //       floating: false,
      //       flexibleSpace: FlexibleSpaceBar(
      //           centerTitle: true,
      //           title: Text("",
      //               style: TextStyle(
      //                 color: Colors.white,
      //                 fontSize: 16.0,
      //               ) //TextStyle
      //               ), //Text
      //           background:  dashboardHeader(),
      //           ),
      //       //FlexibleSpaceBar
      //       expandedHeight: 200,
      //     ),
      //
      //
      //     SliverToBoxAdapter(
      //       child: Padding(
      //         padding: const EdgeInsets.all(8.0),
      //         child: Text(
      //                     'Explore',
      //                     style: TextStyle(color: Color(0xff8c8c8c), fontSize: 16),
      //                   ),
      //       ),
      //     ),
      //
      //     SliverGrid(
      //       gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
      //         maxCrossAxisExtent: 200.0,
      //         mainAxisSpacing: 10.0,
      //         crossAxisSpacing: 10.0,
      //         childAspectRatio: 2.0,
      //       ),
      //       delegate: SliverChildBuilderDelegate(
      //             (BuildContext context, int index) {
      //           return dashboardMenu(
      //             // key: ValueKey(index),
      //             menu_color: dashBoardMenuItems[index].color,
      //             menu_image: dashBoardMenuItems[index].image,
      //             subtitle: dashBoardMenuItems[index].subtitle,
      //             title: dashBoardMenuItems[index].title,
      //             onMenuClick: () {
      //               if (dashBoardMenuItems[index].path!.isNotEmpty)
      //                 Navigator.pushNamed(
      //                     context, dashBoardMenuItems[index].path ?? '');
      //             },
      //           );
      //         },
      //         childCount: dashBoardMenuItems.length,
      //       ),
      //     ),
      //
      //   ],
      // ),

      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          dashboardHeader(),
          Padding(
            padding: const EdgeInsets.only(top: 10,left: 10),
            child: Text(
              'Explore',
              style: TextStyle(color: Color(0xff8c8c8c), fontSize: 16),
            ),
          ),

          Flexible(
            fit: FlexFit.loose,
            flex: 1,
            child: Container(
              color: Colors.white,
              child: GridView.builder(
                padding: EdgeInsets.all(10.0),
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                      maxCrossAxisExtent: 200,
                      childAspectRatio: 2,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10),
                  itemCount: dashBoardMenuItems.length,
                  itemBuilder: (BuildContext ctx, index) {
                    // return Container(
                    //   alignment: Alignment.center,
                    //   child: Text("name"),
                    //   decoration: BoxDecoration(
                    //       color: Colors.amber,
                    //       borderRadius: BorderRadius.circular(15)),
                    // );

                    return dashboardMenu(
                      // key: ValueKey(index),
                      menu_color: dashBoardMenuItems[index].color,
                      menu_image: dashBoardMenuItems[index].image,
                      subtitle: dashBoardMenuItems[index].subtitle,
                      title: dashBoardMenuItems[index].title,
                      onMenuClick: () {
                        if (dashBoardMenuItems[index].path!.isNotEmpty)
                          Navigator.pushNamed(
                              context, dashBoardMenuItems[index].path ?? '');
                      },
                    );
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
