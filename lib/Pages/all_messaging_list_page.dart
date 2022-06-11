import 'dart:async';
import 'dart:collection';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/challenges_chat.dart';
import '../Pages/no_internet_page.dart';
import '../bean/all_messaging/all_messaging.dart';
import '../components/all_messaging_list_tile.dart';
import '../components/no_data_list_tile.dart';
import '../providers/internet_provider.dart';
import '../providers/user_id_provider.dart';
import '../utils/Constants.dart';
import '../utils/Internet.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/shared_preferences_utils.dart';

//Created on 20220408
//RESOLVE BUG USER //20220608
class AllMessagesListPage extends StatefulWidget {
  static const String path = 'allMessagesListPage';

  const AllMessagesListPage({Key? key}) : super(key: key);

  @override
  _AllMessagesListPageState createState() => _AllMessagesListPageState();
}

class _AllMessagesListPageState extends State<AllMessagesListPage> with isInternetConnection {
  ScrollController? _scrollController;
  List<dynamic>? _listAllUsers;

  late AllMessagingData _allMessagingData;
  bool? flagSearch = false;

  // bool? isLoaded = false;

  Map<String, dynamic> paramForMsg = {};
  Map<String, dynamic> paramTypeForMsg = {};

  var _streamController;

  @override
  void initState() {
    initInternet(context);
    _scrollController = ScrollController();

    paramForMsg = {
      '\$senderReceipientSearch': 'String!',
      '\$orderBy': 'String!',
    };
    paramTypeForMsg = {
      'senderReceipientSearch': '\$senderReceipientSearch',
      'orderBy': '\$orderBy',
    };
    _streamController = StreamController<List<dynamic>?>();
    _streamController.sink.add([]);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<InternetProvider>(
      builder: (context, valueNet, child) {
        print(valueNet.isConnectivity);
        if (valueNet.getConnected != ConnectivityResult.none) {
          return BaseWidget(
              appbarHeight: kToolbarHeight,
              appbar: Text(
                messages,
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
              onBackClick: () => Navigator.pop(context),
              body: StreamBuilder<List<dynamic>?>(
                stream: _streamController.stream,
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Container(
                      color: aWhite,
                      child: Query(
                        options: QueryOptions(
                          document: gql(allMessaging(paramForMsg, paramTypeForMsg)),
                          // this is the query string you just created
                          variables: {
                            'senderReceipientSearch': '${SharedPreferencesUtils.getUserId}',
                            'orderBy': 'createdAt'
                          },
                          pollInterval: Duration(seconds: 50),
                        ),
                        builder: (msgresult, {fetchMore, refetch}) {
                          if (msgresult.hasException) {
                            return Text(msgresult.exception.toString());
                          }

                          if (msgresult.isLoading && msgresult.data == null) {
                            return const Center(child: CupertinoActivityIndicator());
                          }

                          // if (!isLoaded!) {
                          //   isLoaded = true;
                          try {
                            _allMessagingData = AllMessagingData.fromJson(msgresult.data!);
                            _listAllUsers = [];

                            for (var data in _allMessagingData.allMessaging!.edges!)
                              _listAllUsers?.add(data.node?.recipient?.userId != SharedPreferencesUtils.getUserId
                                  ? data.node!.recipient!
                                  : data.node!.sender!);
                            // _listAllUsers?.where((element) => element.node!.node!.recipient!.userId == )

                            List<dynamic>? _listAllUsersTemp = [];
                            var uniques = LinkedHashMap<dynamic, bool>();
                            for (var s in _listAllUsers!) {
                              uniques[s] = true;
                            }
                            _listAllUsersTemp.addAll(uniques.keys);

                            _streamController.sink.add(_listAllUsersTemp);
                            // _foundUsers = _listAllUsers;

                          } catch (e) {
                            debugPrint('Exception -- $e');
                          }
                          // }
                          return CustomScrollView(
                            controller: _scrollController,
                            physics: const BouncingScrollPhysics(),
                            shrinkWrap: true,
                            slivers: <Widget>[
                              snapshot.data!.length > 0
                                  ? SliverList(
                                      delegate: SliverChildBuilderDelegate(
                                        (context, index) => AllMessagesListTile(
                                          userName:
                                              '${snapshot.data![index].firstName} ${snapshot.data![index].lastName}',
                                          profileImg: snapshot.data?[index].picture,
                                          // profileImg: 'assets/Ellipse 1.png',
                                          onTileClick: () {
                                            Provider.of<UserIdProvider>(context, listen: false)
                                                .setUserId('${snapshot.data![index].userId}');
                                            Navigator.pushNamed(context, ChallengesChat.path);

                                            // Provider.of<UserIdProvider>(context,
                                            //         listen: false)
                                            //     .setUserId(snapshot.data![index].userId);
                                            // Navigator.pushNamed(
                                            //     context, SubmitScoreDetails.path);
                                            //
                                            // Provider.of<LeagueIdProvider>(context,listen: false).setLeagueId('');
                                          },
                                          onProfileClick: () {},
                                        ),
                                        childCount: snapshot.data!.length,
                                      ),
                                    )
                                  : SliverToBoxAdapter(
                                      child: NoDataListTile(
                                        onTileClick: () {},
                                        noCaption: noMsgFound,
                                        noMsg: '',
                                      ),
                                    ),
                            ],
                          );
                        },
                      ),
                    );
                  }
                  return Center(
                    child: CupertinoActivityIndicator(),
                  );
                },
              ));
        } else {
          _streamController.close();
          _streamController = StreamController<List<dynamic>?>();
          _streamController.sink.add([]);
          // isLoaded = false;
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
