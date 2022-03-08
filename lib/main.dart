import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:tenniston/Pages/profile_page.dart';
import 'package:tenniston/Pages/challenges_chat.dart';
import 'package:tenniston/Pages/head_to_head_details.dart';
import 'package:tenniston/Pages/league_details.dart';
import 'package:tenniston/Pages/recent_macthes_pages.dart';

import 'Pages/dashboard.dart';

void main() async {
  await initHiveForFlutter();

  final HttpLink httpLink = HttpLink(
    // 'http://0.0.0.0:8000/graphql/',
    'http://52.144.47.85:8000/graphql/',
  );
  final AuthLink authLink = AuthLink(
    getToken: () async => '',
  );
  final Link link = authLink.concat(httpLink);

  ValueNotifier<GraphQLClient> client = ValueNotifier(
    GraphQLClient(link: link, cache: GraphQLCache()),
  );
  runApp(GraphQLProvider(client: client, child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          textTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          primaryTextTheme:
              GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
          appBarTheme: AppBarTheme(
              systemOverlayStyle: SystemUiOverlayStyle.dark,
              backgroundColor: Colors.white,
              titleTextStyle: TextStyle(
                color: Colors.black,
                fontSize: 16,
              ),
              centerTitle: true)),

      //20220223
      // initialRoute: LeagueDetails().path,
      initialRoute: DashboardPage().path,
      onGenerateRoute: (settings) {
        if (settings.name == DashboardPage().path) {
          return CupertinoPageRoute(
              builder: (context) => DashboardPage(), settings: settings);
        } else if (settings.name == LeagueDetails().path) {
          return CupertinoPageRoute(
              builder: (context) => LeagueDetails(), settings: settings);
        } else if (settings.name == ChallengesChat().path) {
          return CupertinoPageRoute(
              builder: (context) => ChallengesChat(), settings: settings);
        } else if (settings.name == ProfilePage().path) {
          return CupertinoPageRoute(
              builder: (context) => ProfilePage(), settings: settings);
        } else if (settings.name == HeadToHeadDetails().path) {
          return CupertinoPageRoute(
              builder: (context) => HeadToHeadDetails(), settings: settings);
        } else if (settings.name == RecentMatchesPage().path) {
          return CupertinoPageRoute(
              builder: (context) => RecentMatchesPage(), settings: settings);
        } else {
          return null;
        }
      },

      // home: const LeagueDetailCompleted(), //20220222
    );
  }
}
