import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/no_internet_page.dart';
import '../Pages/sign_in_page.dart';
import '../Pages/sign_up_page.dart';
import '../components/elevated_buttons.dart';
import '../providers/internet_provider.dart';
import '../utils/Internet.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';

//Created on 20220325
class HomePage extends StatefulWidget {
  static const String path = 'homePage';

  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with isInternetConnection {
  @override
  void initState() {
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
            appbarHeight: 0.0,
            appbar: Text(''),
            body: ListView(
              shrinkWrap: true,
              physics: const BouncingScrollPhysics(),
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(
                    welcomeText,
                    style:
                        TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  welcomeInst,
                  softWrap: true,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style:
                      TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: ElevatedButtons(
                    width: double.infinity,
                    fontSize: 14,
                    isIcon: true,
                    icon: Icon(
                      Icons.mail_rounded,
                      color: aGreen,
                      size: 30,
                    ),
                    label: signUpBtn,
                    labelColor: aBlack,
                    buttonColor: aWhite,
                    borderColor: aLightGray,
                    onClick: () {
                      Navigator.pushNamed(context, SignUpPage.path);
                    },
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(alreadySignup),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(context, SignInPage.path);
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Text(
                          signIn,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: aGreen,
                              decoration: TextDecoration.underline),
                        ),
                      ),
                    )
                  ],
                ),

                //Test purpose
                //     Query(
                //   options: QueryOptions(
                //     document: gql(readRepositories), // this is the query string you just created
                //     variables: {
                //       'nRepositories': 50,
                //     },
                //     pollInterval: const Duration(seconds: 10),
                //   ),
                //   // Just like in apollo refetch() could be used to manually trigger a refetch
                //   // while fetchMore() can be used for pagination purpose
                //   builder: (QueryResult result, { VoidCallback? refetch, FetchMore? fetchMore }) {
                //     if (result.hasException) {
                //       return Text(result.exception.toString());
                //     }
                //
                //     if (result.isLoading) {
                //       return const Text('Loading');
                //     }
                //
                //     List? repositories = result.data?['viewer']?['repositories']?['nodes'];
                //
                //     if (repositories == null) {
                //       return const Text('No repositories');
                //     }
                //
                //     return ListView.builder(
                //         itemCount: repositories.length,
                //         shrinkWrap: true,
                //         itemBuilder: (context, index) {
                //           final repository = repositories[index];
                //
                //           return Text(repository['name'] ?? '');
                //         });
                //   },
                // ),
              ],
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
}
