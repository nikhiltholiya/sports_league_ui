import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/dashboard.dart';
import '../Pages/home_page.dart';
import '../Pages/no_internet_page.dart';
import '../providers/internet_provider.dart';
import '../utils/Constants.dart';
import '../utils/Internet.dart';
import '../utils/app_colors.dart';
import '../utils/shared_preferences_utils.dart';

//Created on 20220422
class SplashPage extends StatefulWidget {
  static const String path = 'splashPage';

  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage>
    with SingleTickerProviderStateMixin, isInternetConnection {
  late AnimationController _animController;
  // TODO GHOST #
  // var _mutationVerifyToken = GlobalKey<MutationState>();
  late RunMutation _mutationVerifyToken;
  Map<String, dynamic> paramVerifyToken = {};
  Map<String, dynamic> paramTypeVerifyToken = {};
  late Future<void> getDelay;

  @override
  void initState() {
    super.initState();

    _animController =
        AnimationController(vsync: this, duration: const Duration(seconds: 1));

    _animController.addListener(() {
      setState(() {});
    });

    _animController.addStatusListener((status) async {
      await Future.delayed(Duration(milliseconds: 500), () async {
        setState(() async {
          if (status == AnimationStatus.completed) {
            getDelay = await Future.delayed(const Duration(seconds: 2));
            if (SharedPreferencesUtils.getToken != null) {
              // TODO GHOST #
              getDelay.then((value) => _mutationVerifyToken(
                  {'token': SharedPreferencesUtils.getToken}));
              // getDelay.then((value) => _mutationVerifyToken.currentState!
              //     .runMutation({'token': SharedPreferencesUtils.getToken}));
            } else {
              getDelay.then((value) =>
                  Navigator.pushReplacementNamed(context, HomePage.path));
            }
          }
        });
      });
    });

    paramVerifyToken = {'\$token': 'String!'};
    paramTypeVerifyToken = {'token': '\$token'};

    initInternet(context);
  }

  @override
  void dispose() {
    disposeInternet();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<InternetProvider>(builder: (context, valueNet, child) {
      if (valueNet.getConnected != ConnectivityResult.none) {
        return BaseWidget(
          appbarHeight: 0.0,
          appbar: Text(''),
          body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage('assets/splash_screen.png'),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                AnimatedIcon(),
                Mutation(
                  // TODO GHOST #
                  // key: _mutationVerifyToken,
                  options: MutationOptions(
                    document: gql(
                        verifyToken(paramVerifyToken, paramTypeVerifyToken)),
                    // update: update,
                    onError: (OperationException? error) {
                      debugPrint('${SplashPage.path} * erroR -- $error');
                    },
                    // _simpleAlert(context, error.toString()),
                    onCompleted: (dynamic resultData) async {
                      if (resultData != null) {
                        print(resultData);
                        var success = resultData['verifyToken']['success'];
                        Navigator.pushReplacementNamed(context,
                            success ? DashboardPage.path : HomePage.path);
                      }
                    },
                    // 'Sorry you changed your mind!',
                  ),
                  builder: (RunMutation _resetEmail, QueryResult? addResult) {
                    final sendResetEmail = (result) {
                      _resetEmail(result);
                    };

                    bool? anyLoading = addResult!.isLoading;
                    // _streamController.sink.add(addResult!.isLoading);
                    return anyLoading
                        ? Center(
                            child: CupertinoActivityIndicator(color: aWhite),
                          )
                        : SizedBox();
                  },
                ),
              ],
            ),
          ),
        );
      } else {
        return NoInternetPage(
          onClick: () {},
        );
      }
    });
  }

  Widget AnimatedIcon() {
    _animController.forward();
    return AnimatedContainer(
      duration: const Duration(seconds: 1),
      curve: Curves.bounceIn,
      width: _animController.value * 200,
      height: _animController.value * 200,
      child: Image.asset('assets/app_icon.png'),
    );
  }
}
