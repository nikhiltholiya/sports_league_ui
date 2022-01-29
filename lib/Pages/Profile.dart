import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:tenniston/Pages/RecentMacthesPages.dart';
import 'package:tenniston/components/MatchCard.dart';
import 'package:tenniston/components/ProfileCard.dart';
import 'package:tenniston/components/StatsTile.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  String readRepositories = """
  query (\$userId: String!) {
    userProfiles(userId:\$userId){
    matchesCount
    drawCount
    lostCount
    city
    dob
    state
    firstName
    lastName
    userId
    wonCount
    age
    }
  }
""";
  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Scaffold(
      bottomNavigationBar: SizedBox(
        height: 58,
        child: Align(
          alignment: Alignment.center,
          child: BottomNavigationBar(
              selectedItemColor: Color(0xff31A05F),
              unselectedItemColor: Color(0xff808080),
              selectedFontSize: 10,
              unselectedFontSize: 10,
              showUnselectedLabels: true,
              currentIndex: 3,
              showSelectedLabels: true,
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    label: ("Matches"),
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Image.asset(
                        "assets/Vector (3).png",
                        height: 18,
                        width: 18,
                        fit: BoxFit.cover,
                      ),
                    )),
                BottomNavigationBarItem(
                    label: ("Schedule"),
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Image.asset(
                        "assets/Vector (2).png",
                        height: 18,
                        width: 18,
                        fit: BoxFit.cover,
                      ),
                    )),
                BottomNavigationBarItem(
                    label: ("Stats"),
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Image.asset(
                        "assets/Active (1).png",
                        height: 18,
                        width: 18,
                        fit: BoxFit.cover,
                      ),
                    )),
                BottomNavigationBarItem(
                    label: ("Profile"),
                    icon: Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Image.asset(
                        "assets/Active (2).png",
                        height: 18,
                        width: 18,
                        fit: BoxFit.cover,
                      ),
                    ))
              ]),
        ),
      ),
      body: Container(
        height: mq.height,
        child: Query(
            options: QueryOptions(
              document: gql(
                  readRepositories), // this is the query string you just created
              variables: {
                'userId': "058d69d6-ebc4-4d93-8aa8-9ecf6139fdc9",
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
              print(result.data!["userProfiles"]["matchesCount"]);
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
                              color: Colors.green,
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
                                      result.data!["userProfiles"]["lastName"]
                                          .toString(),
                                  location: result.data!["userProfiles"]["city"]
                                          .toString() +
                                      ", " +
                                      result.data!["userProfiles"]["state"]
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
                          subtitle: result.data!["userProfiles"]["matchesCount"]
                              .toString(),
                        ),
                        StatsTile(
                            title: "Victories",
                            subtitle: result.data!["userProfiles"]["wonCount"]
                                .toString()),
                        StatsTile(
                          title: "Defeats",
                          subtitle: result.data!["userProfiles"]["lostCount"]
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
                                      builder: (_) => RecentMatchesPage()));
                            },
                            child: Text("See All"))
                      ],
                    ),
                  ),
                  for (int i = 0; i < 2; i++)
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 16.0, right: 16, top: 10),
                      child: MatchCard(),
                    )
                ],
              );
            }),
      ),
    );
  }
}
