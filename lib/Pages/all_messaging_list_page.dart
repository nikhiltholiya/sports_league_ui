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
import '../bean/all_users/all_users.dart';
import '../bean/unique_message_sender/unique_message_sender.dart';
import '../components/all_messaging_list_tile.dart';
import '../components/edit_text_form_field.dart';
import '../components/no_data_list_tile.dart';
import '../providers/internet_provider.dart';
import '../providers/user_id_provider.dart';
import '../utils/Constants.dart';
import '../utils/Internet.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/common.dart';
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
  List<dynamic>? _listAllUsersSearch;
  List<dynamic>? _listAllUsersSearchTemp;

  //20230617 Implement new query
  late UniqueMessageData _uniqueMessageData;
  bool? flagSearch = false;

  // bool? isLoaded = false;

  Map<String, dynamic> paramForMsg = {};
  Map<String, dynamic> paramTypeForMsg = {};

  Map<String, dynamic> paramForSearchMsg = {};
  Map<String, dynamic> paramTypeForSearchMsg = {};

  var _streamController;

  //20230623 Adding new Mutation for read messages.
  Map<String, dynamic> paramReadMsg = {};
  Map<String, dynamic> paramTypeReadMsg = {};
  Map<String, dynamic> variableTypeReadMsg = {};

  //2023062 Adding search Features in messages screen
  String? Search = '';
  FocusNode? _chatNode;
  late AllUsersData _allUsersData;
  var _chatKey = GlobalKey<EditableTextState>();
  var _textController = TextEditingController();

  @override
  void initState() {
    initInternet(context);
    _scrollController = ScrollController();

    paramForMsg = {
      '\$userId': 'String!',
    };
    paramTypeForMsg = {
      'userId': '\$userId',
    };

    //20230624 Added for Read Message mutation
    paramReadMsg = {
      '\$recipient': 'String!',
      '\$sender': 'String!',
    };
    paramTypeReadMsg = {
      'recipient': '\$recipient',
      'sender': '\$sender',
    };

    //20230624 Added for search Query
    paramForSearchMsg = {
      '\$userNameSearch': 'String!',
    };
    paramTypeForSearchMsg = {
      'userNameSearch': '\$userNameSearch',
    };

    _streamController = StreamController<List<dynamic>?>();
    _streamController.sink.add([]);

    super.initState();
  }

  //20230626 -- Manage Search Queries in this screen.
  // - uniqueMessageSenders : used for normal screen
  // - allUsers : for search filter.

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
            body: FutureBuilder<bool?>(
              future: executeGraphQLQuery(''),
              builder: (context, futureSnapshot) {
                if (futureSnapshot.hasError) return Text('${futureSnapshot.error}');

                if (futureSnapshot.hasData)
                  return !futureSnapshot.data!
                      ? const Center(child: CupertinoActivityIndicator())
                      : StreamBuilder<List<dynamic>?>(
                          stream: _streamController.stream,
                          builder: (context, snapshot) {
                            if (snapshot.hasData) {
                              return Container(
                                color: aWhite,
                                child: CustomScrollView(
                                  controller: _scrollController,
                                  physics: const BouncingScrollPhysics(),
                                  shrinkWrap: true,
                                  slivers: <Widget>[
                                    SliverPersistentHeader(
                                      delegate: SilverDelegates(
                                        child: Container(
                                          width: double.infinity,
                                          color: aWhite,
                                          child: EditTextFormField(
                                            onTap: () {},
                                            textController: _textController,
                                            key: _chatKey,
                                            focusNode: _chatNode,
                                            hint: searchPlayer,
                                            onTextChange: (value) {
                                              // setState(() {
                                              // _textController?.text = value;
                                              // _textController?.selection = TextSelection.fromPosition(
                                              //     TextPosition(offset: _textController!.text.length));
                                              // });
                                              // _runFilter(value);
                                              Search = value;
                                              executeGraphQLQuery(Search ?? '');
                                            },
                                            prefixIcon: Icon(
                                              Icons.search,
                                              color: aLightGray,
                                            ),
                                            suffixIcon: SizedBox(),
                                          ),
                                        ),
                                      ),
                                      floating: false,
                                      pinned: true,
                                    ),
                                    snapshot.data!.length > 0
                                        ? SliverList(
                                            delegate: SliverChildBuilderDelegate(
                                              (context, index) => AllMessagesListTile(
                                                isRead: snapshot.data![index].read,
                                                userName:
                                                    '${snapshot.data![index].user[0].firstName} ${snapshot.data![index].user[0].lastName}',
                                                profileImg: snapshot.data?[index].user[0].picture,
                                                playerLocation:
                                                    '${snapshot.data![index].user[0].city != null ? snapshot.data![index].user[0].city : ''}'
                                                    '${snapshot.data![index].user[0].state != null ? ', ' + snapshot.data![index].user[0].state : ''}'
                                                    '${snapshot.data![index].user[0].country != null ? ', ' + snapshot.data![index].user[0].country : ''}',
                                                // profileImg: 'assets/Ellipse 1.png',
                                                onTileClick: () {
                                                  Provider.of<UserIdProvider>(context, listen: false)
                                                      .setUserId('${snapshot.data![index].user[0].userId}');

                                                  Navigator.pushNamed(context, ChallengesChat.path);

                                                  variableTypeReadMsg = {
                                                    'recipient': SharedPreferencesUtils.getUserId,
                                                    'sender': '${snapshot.data![index].user[0].userId}'
                                                  };
                                                  ReadMessages(context);

                                                  FocusManager.instance.primaryFocus?.unfocus();
                                                  _chatNode?.enclosingScope;

                                                  Search = '';
                                                  _textController.text = Search!;
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
                                              noCaption: Search!.trim().length > 0 ? noPlayerFound :noMsgFound,
                                              noMsg: '',
                                            ),
                                          ),
                                  ],
                                ),
                              );
                            }
                            return Center(
                              child: CupertinoActivityIndicator(),
                            );
                          },
                        );

                return Center(
                  child: CupertinoActivityIndicator(),
                );
              },
            ),
          );
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

  Future<void> ReadMessages(BuildContext context) async {
    final options = MutationOptions(
      document: gql(readMessages(paramReadMsg, paramTypeReadMsg)),
      variables: variableTypeReadMsg,
    );

    final client = GraphQLProvider.of(context).value;
    final QueryResult? result = await client.mutate(options);

    if (result?.hasException ?? false) {
      print("ReadMessages EXCEPTION ${result!.exception}");
      // Handle the exception
    } else {
      _streamController.sink.add(_listAllUsers);
      print("ReadMessages ${result!.data!}");
      // Mutation was successful
    }
  }

  Future<bool?> executeGraphQLQuery(String Search) async {
    final QueryOptions uniqueMessages = QueryOptions(
      document: gql(uniqueMessageSenders(paramForMsg, paramTypeForMsg)),
      // this is the query string you just created
      variables: {
        'userId': '${SharedPreferencesUtils.getUserId}',
      },
      fetchPolicy: FetchPolicy.networkOnly,
      pollInterval: Duration(seconds: 100),
    );

    final QueryOptions allMessage = QueryOptions(
      document: gql(allUsers(paramForSearchMsg, paramTypeForSearchMsg)),
      variables: {'userNameSearch': Search},
      fetchPolicy: FetchPolicy.networkOnly,
      pollInterval: Duration(seconds: 100),
    );

    final client = GraphQLProvider.of(context).value;
    final QueryResult result = await client.query(Search.trim().length > 0 ? allMessage : uniqueMessages);

    if (result.hasException) {
      print(result.exception.toString());
      return false;
      //Text('${result.exception}');
    } else if (result.isLoading) {
      print('Loading..');
      return false;
      //Text('${result.exception}');
    } else {
      try {
        print('$result');
        if (Search.trim().length > 0) {
          _allUsersData = AllUsersData.fromJson(result.data!);

          List<dynamic>? temp = [];
          for (var data in _allUsersData.allUsers!.edges!) {
            if (data.node!.userId != SharedPreferencesUtils.getUserId) temp.add(data.node);
          }

          _listAllUsersSearch = [];
          List<dynamic> _listAllUsers1 = [];
          for (var data in temp) {
            List<User> users = [];
            users.add(User(
                userId: data.userId,
                firstName: data.firstName,
                lastName: data.lastName,
                aboutMe: 'aboutMe',
                active: data.active,
                city: data.city,
                email: 'email',
                picture: data.picture,
                phone: 'phone',
                rating: 'rating',
                state: data.state,
                country: data.country,
                id: data.id,
                dob: 'dob'));
            _listAllUsers1.add(Inbox(read: false, user: users));
          }

          _streamController.sink.add(_listAllUsers1);
        } else {
          _uniqueMessageData = UniqueMessageData.fromJson(result.data!);
          _listAllUsers = [];
          _listAllUsers = _uniqueMessageData.uniqueMessageSenders?.inbox;

          List<dynamic>? _listAllUsersTemp = [];
          var uniques = LinkedHashMap<dynamic, bool>();
          for (var s in _listAllUsers!) {
            uniques[s] = true;
          }
          _listAllUsersTemp.addAll(uniques.keys);

          _streamController.sink.add(_listAllUsersTemp);
          // _foundUsers = _listAllUsers;
        }
        return true;
      } catch (e) {
        debugPrint('Exception -- $e');
        return false;
      }
    }
  }
}
