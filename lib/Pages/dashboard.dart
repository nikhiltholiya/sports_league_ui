import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tenniston/Pages/Profile.dart';

import 'league_details.dart';

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
              text: "Andy\n",
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
                backgroundImage: NetworkImage(
                    'https://images.pexels.com/photos/220453/pexels-photo-220453.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500'),
              ))
        ],
      ),
    );
  }
}

class dashboardMenu extends StatelessWidget {
  final menu_image, menu_color, title, subtitle;

  const dashboardMenu({
    Key? key,
    this.menu_image,
    this.menu_color,
    this.title,
    this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 66,
      decoration: BoxDecoration(
        color: Color(menu_color),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          Positioned(
              top: -25,
              right: -25,
              child: Container(
                height: 66,
                width: 66,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage("assets/" + menu_image),
                  ),
                ),
              )),
          Positioned(
              top: 12,
              left: 20,
              child: Text(
                title,
                style: GoogleFonts.workSans(
                  fontSize: 15,
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w600,
                ),
              )),
          Positioned(
              top: 35,
              left: 20,
              child: Text(
                subtitle,
                style: GoogleFonts.workSans(
                  fontSize: 11,
                  color: Color(0xffffffff),
                  fontWeight: FontWeight.w300,
                ),
              )),
        ],
      ),
    );
  }
}

class DashboardPage extends StatelessWidget {
  const DashboardPage({Key? key}) : super(key: key);
  final String path = "dashboard";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(child: dashboardHeader()),
          SizedBox(
            height: 18,
          ),
          Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: Column(children: [
                Row(
                  children: [
                    Text(
                      "Explore",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: Color(0xff8c8c8c),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 8,
                ),
                Row(
                  children: [
                    Expanded(
                      flex: 9,
                      child: Column(children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(context, LeagueDetails().path);
                          },
                          child: dashboardMenu(
                            menu_image:
                                "transperent_tennis_ball_icon_green.png",
                            menu_color: 0xff31a05f,
                            title: "My Leagues",
                            subtitle: "Check league status",
                          ),
                        )
                      ]),
                    ),
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                      flex: 9,
                      child: Column(children: [
                        dashboardMenu(
                          menu_image: "transperent_tennis_ball_icon_indigo.png",
                          menu_color: 0xff3e4982,
                          title: "Submit Score",
                          subtitle: "Submit your score",
                        ),
                      ]),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 7,
                      child: Column(children: [
                        dashboardMenu(
                          menu_image: "transperent_tennis_ball_icon_blue.png",
                          menu_color: 0xff345891,
                          title: "Matches",
                          subtitle: "Challenge for match",
                        ),
                      ]),
                    ),
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                      flex: 7,
                      child: Column(children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ProfilePage()),
                            );
                          },
                          child: dashboardMenu(
                            menu_image: "transperent_tennis_ball_icon_red.png",
                            menu_color: 0xffeb5945,
                            title: "My Profile",
                            subtitle: "Check / edit profile",
                          ),
                        )
                      ]),
                    )
                  ],
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      flex: 7,
                      child: Column(children: [
                        dashboardMenu(
                          menu_image: "transperent_tennis_ball_icon_yellow.png",
                          menu_color: 0xffd99726,
                          title: "Latest Scores",
                          subtitle: "Check latest scores",
                        ),
                      ]),
                    ),
                    Expanded(flex: 1, child: Container()),
                    Expanded(
                      flex: 7,
                      child: Column(children: [
                        dashboardMenu(
                          menu_image: "transperent_tennis_ball_icon_black.png",
                          menu_color: 0xff263238,
                          title: "Contact Us",
                          subtitle: "Contact support team",
                        ),
                      ]),
                    )
                  ],
                ),
              ])),
        ],
      ),
    );
  }
}
