import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import '../Pages/contact_us_page.dart';
import '../Pages/password_change_page.dart';
import '../Pages/password_reset_page.dart';

import '../Pages/all_messaging_list_page.dart';
import '../Pages/challenges_chat.dart';
import '../Pages/create_profile_page.dart';
import '../Pages/create_profile_picture_page.dart';
import '../Pages/dashboard.dart';
import '../Pages/head_to_head_details.dart';
import '../Pages/head_to_head_page.dart';
import '../Pages/home_page.dart';
import '../Pages/league_details.dart';
import '../Pages/my_league_list.dart';
import '../Pages/profile_page.dart';
import '../Pages/recent_matches_pages.dart';
import '../Pages/sign_in_page.dart';
import '../Pages/sign_up_page.dart';
import '../Pages/submit_score_details.dart';
import '../Pages/submit_score_list.dart';
import '../Pages/verify_email_page.dart';
import '../graphql/graphql_view.dart';
import '../providers/league_id_provider.dart';
import '../providers/profile_pic_provider.dart';
import '../providers/user_id_provider.dart';
import '../utils/shared_preferences_utils.dart';

// final HttpLink httpLink = HttpLink('http://52.144.47.85:8000/graphql/',);
final graphqlEndpoint = 'http://52.144.47.85:8000/graphql/';
// final graphqlEndpoint = 'https://api.github.com/graphql'; //Test purpose
final subscriptionEndpoint = null;


void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SharedPreferencesUtils.init();
  await initHiveForFlutter();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClientProvider(
      uri: graphqlEndpoint,
      subscriptionUri: subscriptionEndpoint,
      authLink: AuthLink(
        // getToken: () async => Provider.of<TokenProvider>(context, listen: false).getToken != null
        //     ? 'JWT ${Provider.of<TokenProvider>(context, listen: false).getToken}'
        //     : '',

        getToken: () async =>
        // 'Bearer <YOUR GIT TOKEN>' //Test purpose
            SharedPreferencesUtils.getToken != null ? '''JWT ${SharedPreferencesUtils.getToken}''' : '',
      ),
      child: AppBody(),
    );
  }
}



/*OLD*/
//
// void main() async {
//   await initHiveForFlutter();
//
//   final HttpLink httpLink = HttpLink(
//     'http://52.144.47.85:8000/graphql/',
//   );
//   final AuthLink authLink = AuthLink(
//     getToken: () async => '',
//   );
//   final Link link = authLink.concat(httpLink);
//
//   ValueNotifier<GraphQLClient> client = ValueNotifier(
//     GraphQLClient(link: link, cache: GraphQLCache()),
//   );
//   runApp(GraphQLProvider(client: client, child: const AppBody()));
// }

/*OLD*/

class AppBody extends StatelessWidget {
  const AppBody({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<UserIdProvider>(
          create: (context) => UserIdProvider(),
        ),
        ChangeNotifierProvider<LeagueIdProvider>(
          create: (context) => LeagueIdProvider(),
        ),
        ChangeNotifierProvider<ProfilePicProvider>(
          create: (context) => ProfilePicProvider(),
        ),
      ],
      child: MaterialApp(
        title: 'Tennis Toon',
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
            primaryTextTheme: GoogleFonts.poppinsTextTheme(Theme.of(context).textTheme),
            appBarTheme: AppBarTheme(
                systemOverlayStyle: SystemUiOverlayStyle.dark,
                backgroundColor: Colors.white,
                titleTextStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                ),
                centerTitle: true)),

        //20220223
        // initialRoute: LeagueDetails.path,
        initialRoute: DashboardPage.path,
        onGenerateRoute: (settings) {
          if (settings.name == HomePage.path) {
            return CupertinoPageRoute(builder: (context) => HomePage(), settings: settings);
          } else if (settings.name == SignUpPage.path) {
            return CupertinoPageRoute(builder: (context) => SignUpPage(), settings: settings);
          } else if (settings.name == SignInPage.path) {
            return CupertinoPageRoute(builder: (context) => SignInPage(), settings: settings);
          } else if (settings.name == VerifyEmailPage.path) {
            return CupertinoPageRoute(builder: (context) => VerifyEmailPage(), settings: settings);
          } else if (settings.name == PasswordResetPage.path) {
            return CupertinoPageRoute(builder: (context) => PasswordResetPage(), settings: settings);
          } else if (settings.name == PasswordChangePage.path) {
            return CupertinoPageRoute(builder: (context) => PasswordChangePage(), settings: settings);
          } else if (settings.name == CreateProfilePage.path) {
            return CupertinoPageRoute(builder: (context) => CreateProfilePage(), settings: settings);
          } else if (settings.name == CreateProfilePicturePage.path) {
            return CupertinoPageRoute(builder: (context) => CreateProfilePicturePage(), settings: settings);
          } else if (settings.name == DashboardPage.path) {
            return CupertinoPageRoute(builder: (context) => DashboardPage(), settings: settings);
          } else if (settings.name == LeagueDetails.path) {
            return CupertinoPageRoute(builder: (context) => LeagueDetails(), settings: settings);
          } else if (settings.name == ContactUsPage.path) {
            return CupertinoPageRoute(builder: (context) => ContactUsPage(), settings: settings);
          } else if (settings.name == ChallengesChat.path) {
            return CupertinoPageRoute(builder: (context) => ChallengesChat(), settings: settings);
          } else if (settings.name == ProfilePage.path) {
            return CupertinoPageRoute(builder: (context) => ProfilePage(), settings: settings);
          } else if (settings.name == AllMessagesListPage.path) {
            return CupertinoPageRoute(builder: (context) => AllMessagesListPage(), settings: settings);
          } else if (settings.name == HeadToHeadDetails.path) {
            return CupertinoPageRoute(builder: (context) => HeadToHeadDetails(), settings: settings);
          } else if (settings.name == HeadtoHeadpage.path) {
            return CupertinoPageRoute(builder: (context) => HeadtoHeadpage(), settings: settings);
          } else if (settings.name == RecentMatchesPage.path) {
            return CupertinoPageRoute(builder: (context) => RecentMatchesPage(), settings: settings);
          } else if (settings.name == MyLeagueList.path) {
            return CupertinoPageRoute(builder: (context) => MyLeagueList(), settings: settings);
          } else if (settings.name == SubmitScoreList.path) {
            return CupertinoPageRoute(builder: (context) => SubmitScoreList(), settings: settings);
          } else if (settings.name == SubmitScoreDetails.path) {
            return CupertinoPageRoute(builder: (context) => SubmitScoreDetails(), settings: settings);
          } else {
            return null;
          }
        },
      ),
    );
  }
}
