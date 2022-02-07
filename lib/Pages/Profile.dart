import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:tenniston/Pages/RecentMacthesPages.dart';
import 'package:tenniston/Pages/SchedulePage.dart';
import 'package:tenniston/components/HeadToHead.dart';
import 'package:tenniston/components/MatchCard.dart';
import 'package:tenniston/components/ProfileCard.dart';
import 'package:tenniston/components/StatsTile.dart';
import 'package:tenniston/utils/Constants.dart' as Constants;

import 'HeadtoHeadpage.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String readRepositories = Constants.homepageQuery;
  int cuurent_index = 1;
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xff31A05F),
        onPressed: () {},
        child: Image.asset(
          "assets/Geolocation.png",
          fit: BoxFit.cover,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: SizedBox(
        height: 58,
        child: Align(
          alignment: Alignment.center,
          child: BottomNavigationBar(
              selectedItemColor: Color(0xff31A05F),
              unselectedItemColor: Color(0xff808080),
              selectedFontSize: 10,
              unselectedFontSize: 10,
              onTap: (d) {
                setState(() {
                  cuurent_index = d;
                });
              },
              showUnselectedLabels: true,
              currentIndex: cuurent_index,
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
                        color: cuurent_index == 0 ? Colors.green : Colors.grey,
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
                        color: cuurent_index == 1 ? Colors.green : Colors.grey,
                        fit: BoxFit.cover,
                      ),
                    ))
              ]),
        ),
      ),
      body: cuurent_index == 0
          ? SchedulePage()
          : Container(
              height: mq.height,
              child: Query(
                  options: QueryOptions(
                    document: gql(
                        readRepositories), // this is the query string you just created
                    variables: {
                      'userId': "bcb1a25f-1bf1-4d98-b77d-b52df8e13a39",
                    },
                    pollInterval: Duration(seconds: 100),
                  ),
                  builder: (result, {fetchMore, refetch}) {
                    if (result.hasException) {
                      return Text(result.exception.toString());
                    }

                    if (result.isLoading) {
                      return Text('Loading');
                    }
                    var data = result.data;
                    print(data);
                    return ListView(
                      children: [
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 360,
                          child: Stack(
                            children: [
                              Container(
                                height: 240,
                                decoration: BoxDecoration(
                                    gradient: LinearGradient(colors: [
                                      Color(0xff47BA79),
                                      Color(0xff47BA79),
                                      Color(0xff3E4982)
                                    ]),
                                    borderRadius: BorderRadius.only(
                                        bottomLeft: Radius.circular(16),
                                        bottomRight: Radius.circular(16))),
                              ),
                              Positioned(
                                  left: 16,
                                  right: 16,
                                  top: 32,
                                  child: Container(
                                      height: 300,
                                      child: ProfileCard(
                                        name: result.data!["userProfiles"]
                                                    ["firstName"]
                                                .toString() +
                                            " " +
                                            result.data!["userProfiles"]
                                                    ["lastName"]
                                                .toString(),
                                        location: result.data!["userProfiles"]
                                                    ["city"]
                                                .toString() +
                                            ", " +
                                            result.data!["userProfiles"]
                                                    ["state"]
                                                .toString(),
                                        age: result.data!["userProfiles"]["age"]
                                            .toString(),
                                      ))),
                            ],
                          ),
                        ),
                        Container(
                          width: mq.width,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              StatsTile(
                                title: "Matches",
                                subtitle: result.data!["userProfiles"]
                                        ["matchesCount"]
                                    .toString(),
                              ),
                              StatsTile(
                                  title: "Victories",
                                  subtitle: result.data!["userProfiles"]
                                          ["wonCount"]
                                      .toString()),
                              StatsTile(
                                title: "Defeats",
                                subtitle: result.data!["userProfiles"]
                                        ["lostCount"]
                                    .toString(),
                              ),
                              StatsTile(
                                title: "Rating",
                                subtitle: "4.5",
                              )
                            ],
                          ),
                        ),
                        Divider(
                          color: Color(0xff8C8C8C),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Recent Matches",
                                style: GoogleFonts.poppins(
                                    fontSize: 16, color: Color(0xff263238)),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) =>
                                                RecentMatchesPage()));
                                  },
                                  child: Text("See All"))
                            ],
                          ),
                        ),
                        for (int i = 0; i < 2; i++)
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 16.0, right: 16, top: 10),
                            child: MatchCard(),
                          ),
                        SizedBox(
                          height: 20,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0, right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "Head to Heads",
                                style: GoogleFonts.poppins(
                                    fontSize: 16, color: Color(0xff263238)),
                              ),
                              GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (_) => HeadtoHeadpage()));
                                  },
                                  child: Text("See All"))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 16.0, right: 16, top: 10),
                          child: HeadToHead(),
                        )
                      ],
                    );
                  }),
            ),
    );
  }
}
