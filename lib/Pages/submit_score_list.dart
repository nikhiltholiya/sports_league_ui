import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/submit_score_details.dart';
import '../bean/all_messaging/all_messaging.dart';
import '../bean/all_users/all_users.dart';
import '../components/edit_text_form_field.dart';
import '../components/submit_score_list_tile.dart';
import '../providers/league_id_provider.dart';
import '../providers/user_id_provider.dart';
import '../utils/Constants.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/common.dart';

//Created on 20220315
class SubmitScoreList extends StatefulWidget {
  static const String path = 'submitScore';

  const SubmitScoreList({Key? key}) : super(key: key);

  @override
  _SubmitScoreListState createState() => _SubmitScoreListState();
}

class _SubmitScoreListState extends State<SubmitScoreList> {
  ScrollController? _scrollController;

  String? Search = '';
  FocusNode? _chatNode;

  late AllUsersData _allUsersData;

  List<dynamic>? _listAllUsers;

  // List<dynamic>? _foundUsers = [];

  late AllMessagingData _allMessagingData;

  // List<MsgRecipient>? _listMessagedUsers;
  // List<MsgRecipient>? _foundMessagedUsers = [];

  bool? flagSearch = false;

  bool? isLoaded = false;

  Map<String, dynamic> paramForMsg = {};
  Map<String, dynamic> paramTypeForMsg = {};
  Map<String, dynamic> variableForMsg = {};

  Map<String, dynamic> param = {};
  Map<String, dynamic> paramType = {};
  Map<String, dynamic> passVariable = {};

  var _streamController = StreamController<List<dynamic>>();

  @override
  void initState() {
    _chatNode = FocusNode();
    _scrollController = ScrollController();

    paramForMsg = {
      '\$senderReceipientSearch': 'String!',
    };
    paramTypeForMsg = {
      'senderReceipientSearch': '\$senderReceipientSearch',
    };
    variableForMsg = {'senderReceipientSearch': '1211d15f-5147-4394-812e-47c801d567c5'};
    _streamController.sink.add([]);
    super.initState();
  }

  @override
  void dispose() {
    _chatNode?.dispose();
    _scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      appbarHeight: kToolbarHeight,
      appbar: Text(
        submitScore,
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
      body: Consumer<UserIdProvider>(
        builder: (context, UserId, child) {
          return StreamBuilder<List<dynamic>>(
            stream: _streamController.stream,
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                return Container(
                  color: aWhite,
                  child: Query(
                    options: QueryOptions(
                      document: gql(allMessaging(paramForMsg, paramTypeForMsg)),
                      // this is the query string you just created
                      variables: variableForMsg,
                      pollInterval: Duration(seconds: 100),
                    ),
                    builder: (msgresult, {fetchMore, refetch}) {
                      if (msgresult.hasException) {
                        return Text(msgresult.exception.toString());
                      }

                      if (msgresult.isLoading && msgresult.data == null) {
                        return const Center(child: CupertinoActivityIndicator());
                      }

                      if (!isLoaded!) {
                        isLoaded = true;
                        try {
                          _allMessagingData = AllMessagingData.fromJson(msgresult.data!);
                          _listAllUsers = [];

                          // for (var data in _allMessagingData.allMessaging!.edges!){
                          //   print('data  -R-${data.node?.recipient?.firstName}');
                          //   print('data  -S-${data.node?.recipient?.firstName}');
                          // }

                          for (var data in _allMessagingData.allMessaging!.edges!)
                            _listAllUsers?.add(data.node?.recipient?.userId != UserId.getUserId
                                ? data.node!.recipient!
                                : data.node!.sender!);

                          _streamController.sink.add(_listAllUsers ?? []);
                          // _foundUsers = _listAllUsers;

                        } catch (e) {
                          debugPrint('Exception -- $e');
                        }
                      }
                      return CustomScrollView(
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
                                  focusNode: _chatNode,
                                  hint: searchPlayer,
                                  onTextChange: (value) {
                                    // setState(() {
                                    // _textController?.text = value;
                                    // _textController?.selection = TextSelection.fromPosition(
                                    //     TextPosition(offset: _textController!.text.length));
                                    // });
                                    // _runFilter(value);
                                    if (value.toString().trim().length > 2) {
                                      flagSearch = true;
                                      param = {
                                        '\$userNameSearch': 'String!',
                                      };
                                      paramType = {
                                        'userNameSearch': '\$userNameSearch',
                                      };
                                      passVariable = {'userNameSearch': value};
                                    } else {
                                      // _foundUsers = [];
                                      // _foundUsers = _listAllUsers;
                                      _streamController.sink.add(_listAllUsers ?? []);
                                      flagSearch = false;
                                    }

                                    setState(() {});
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
                          SliverToBoxAdapter(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                submitMatchScore,
                                style: TextStyle(color: aLightGray, fontWeight: FontWeight.bold, fontSize: 16.0),
                              ),
                            ),
                          ),
                          SliverList(
                            delegate: SliverChildBuilderDelegate(
                              (context, index) => SubmitScoreListTile(
                                userName: '${snapshot.data![index].firstName} ${snapshot.data![index].lastName}',
                                // profileImg: _foundUsers![index].node?.picture,
                                profileImg: 'assets/Ellipse 1.png',
                                rating: '${snapshot.data![index].rating}',
                                playerLocation:
                                    '${snapshot.data![index].city}, ${snapshot.data![index].state}, ${snapshot.data![index].country}',
                                onTileClick: () {
                                  Provider.of<UserIdProvider>(context, listen: false)
                                      .setUserId(snapshot.data![index].userId);
                                  Navigator.pushNamed(context, SubmitScoreDetails.path);

                                  Provider.of<LeagueIdProvider>(context, listen: false).setLeagueId('');

                                  _chatNode?.enclosingScope;
                                },
                                onProfileClick: () {},
                              ),
                              childCount: snapshot.data!.length,
                            ),
                          ),
                          if (flagSearch!)
                            SliverToBoxAdapter(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Query(
                                  options: QueryOptions(
                                    document: gql(allUsers(param, paramType)),
                                    // this is the query string you just created
                                    variables: passVariable,
                                  ),
                                  builder: (result, {fetchMore, refetch}) {
                                    if (result.hasException) {
                                      return Text(result.exception.toString());
                                    }

                                    if (result.isLoading && result.data == null) {
                                      return const Center(child: CupertinoActivityIndicator());
                                    }

                                    _allUsersData = AllUsersData.fromJson(result.data!);

                                    List<dynamic>? temp = [];
                                    // _foundUsers = [];
                                    for (var data in _allUsersData.allUsers!.edges!) {
                                      temp.add(data.node);
                                    }

                                    _streamController.sink.add(temp);
                                    return SizedBox(
                                      width: 0,
                                      height: 0,
                                      child: Text('HERE'),
                                    );
                                  },
                                ),
                              ),
                            ),
                        ],
                      );
                    },
                  ),
                );
              }
              return Text('Load');
            },
          );
        },
      ),
    );
  }
}
