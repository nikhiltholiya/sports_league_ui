import 'dart:async';
import 'dart:collection';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/no_internet_page.dart';
import '../Pages/submit_score_details.dart';
import '../bean/all_messaging/all_messaging.dart';
import '../bean/all_users/all_users.dart';
import '../components/edit_text_form_field.dart';
import '../components/no_data_list_tile.dart';
import '../components/submit_score_list_tile.dart';
import '../providers/internet_provider.dart';
import '../providers/league_id_provider.dart';
import '../providers/user_id_provider.dart';
import '../utils/Constants.dart';
import '../utils/Internet.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/common.dart';
import '../utils/shared_preferences_utils.dart';

//Created on 20220315
//RESOLVE BUG USER //20220608
class SubmitScoreList extends StatefulWidget {
  static const String path = 'submitScore';

  const SubmitScoreList({Key? key}) : super(key: key);

  @override
  _SubmitScoreListState createState() => _SubmitScoreListState();
}

class _SubmitScoreListState extends State<SubmitScoreList> with isInternetConnection {
  ScrollController? _scrollController;

  String? Search = '';
  FocusNode? _chatNode;

  late AllUsersData _allUsersData;

  List<dynamic>? _listAllUsers;
  List<dynamic>? _listAllUsersTemp = [];

  // List<dynamic>? _foundUsers = [];

  late AllMessagingData _allMessagingData;

  // List<MsgRecipient>? _listMessagedUsers;
  // List<MsgRecipient>? _foundMessagedUsers = [];

  bool? flagSearch = false;

  // bool? isLoaded = false;

  Map<String, dynamic> paramForMsg = {};
  Map<String, dynamic> paramTypeForMsg = {};
  // Map<String, dynamic> variableForMsg = {};

  Map<String, dynamic> param = {};
  Map<String, dynamic> paramType = {};
  Map<String, dynamic> passVariable = {};

  var _streamController;

  @override
  void initState() {
    initInternet(context);
    _chatNode = FocusNode();
    _scrollController = ScrollController();

    paramForMsg = {
      '\$senderReceipientSearch': 'String!',
    };
    paramTypeForMsg = {
      'senderReceipientSearch': '\$senderReceipientSearch',
    };
    _streamController = StreamController<List<dynamic>>();
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
            onBackClick: () => Navigator.pop(context),
            appbar: Text(
              submitScore,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            body: /*Consumer<UserIdProvider>(
              builder: (context, UserId, child) {
                variableForMsg = {'senderReceipientSearch': '${UserId.getUserId}'};

                return */
            StreamBuilder<List<dynamic>?>(
                  stream: _streamController.stream,
                  builder: (context, snapshot) {
                    if (snapshot.hasData) {
                      return Container(
                        color: aWhite,
                        child: Query(
                          options: QueryOptions(
                            document: gql(allMessaging(paramForMsg, paramTypeForMsg)),
                            // this is the query string you just created
                            variables: {'senderReceipientSearch': '${SharedPreferencesUtils.getUserId}'},
                            pollInterval: Duration(seconds: 100),
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
                                _listAllUsersTemp = [];

                                // for (var data in _allMessagingData.allMessaging!.edges!){
                                //   print('data  -R-${data.node?.recipient?.firstName}');
                                //   print('data  -S-${data.node?.recipient?.firstName}');
                                // }

                                for (var data in _allMessagingData.allMessaging!.edges!)
                                  _listAllUsers?.add(data.node?.recipient?.userId != SharedPreferencesUtils.getUserId
                                      ? data.node!.recipient!
                                      : data.node!.sender!);

                                var uniques = LinkedHashMap<MsgRecipient, bool>();
                                for (var s in _listAllUsers!) {
                                  uniques[s] = true;
                                }
                                _listAllUsersTemp!.addAll(uniques.keys);

                                _streamController.sink.add(_listAllUsersTemp!);
                              } catch (e) {
                                debugPrint('${SubmitScoreDetails.path}  * Exception -- $e');
                              }
                            // }
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
                                          Search = value;
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
                                            _streamController.sink.add(_listAllUsersTemp!);
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
                                  child: snapshot.data!.length > 0
                                      ? Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            submitMatchScore,
                                            style: TextStyle(
                                                color: aLightGray, fontWeight: FontWeight.bold, fontSize: 16.0),
                                          ),
                                        )
                                      : SizedBox(),
                                ),
                                snapshot.data!.length > 0
                                    ? SliverList(
                                        delegate: SliverChildBuilderDelegate(
                                          (context, index) => SubmitScoreListTile(
                                            userName:
                                                '${snapshot.data![index].firstName} ${snapshot.data![index].lastName}',
                                            // profileImg: _foundUsers![index].node?.picture,
                                            profileImg: snapshot.data![index].picture,
                                            rating: '${snapshot.data![index].rating}',
                                            playerLocation:
                                                '${snapshot.data![index].city != null ? snapshot.data![index].city : ''}${snapshot.data![index].state != null ? ', ' + snapshot.data![index].state : ''}${snapshot.data![index].country != null ? ', ' + snapshot.data![index].country : ''}',
                                            onTileClick: () {
                                              Provider.of<UserIdProvider>(context, listen: false)
                                                  .setUserId(snapshot.data![index].userId);
                                              Navigator.pushNamed(context, SubmitScoreDetails.path);

                                              Provider.of<LeagueIdProvider>(context, listen: false).setLeagueId('');

                                              FocusManager.instance.primaryFocus?.unfocus();
                                              _chatNode?.enclosingScope;
                                            },
                                            onProfileClick: () {},
                                          ),
                                          childCount: snapshot.data!.length,
                                        ),
                                      )
                                    : SliverToBoxAdapter(
                                        child: NoDataListTile(
                                          onTileClick: () {},
                                          noCaption: noPlayerFound,
                                          noMsg: '',
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
                                            if (data.node!.userId != SharedPreferencesUtils.getUserId)
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
                    return Center(
                      child: CupertinoActivityIndicator(),
                    );
                  },
                )
          );
        } else {
          _streamController.close();
          _streamController = StreamController<List<dynamic>>();
          _streamController.sink.add([]);
          return NoInternetPage(
            onClick: () {},
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _streamController.close();
    disposeInternet();
    _chatNode?.dispose();
    _scrollController!.dispose();
    super.dispose();
  }
}
