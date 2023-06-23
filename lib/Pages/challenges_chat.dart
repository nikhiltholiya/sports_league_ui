import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/no_internet_page.dart';
import '../Pages/profile_page.dart';
import '../Pages/submit_score_details.dart';
import '../bean/all_messaging/all_messaging.dart';
import '../bean/all_users/all_users.dart';
import '../bean/send_message/send_message.dart';
import '../bean/token_auth/token_auth.dart';
import '../components/chatting_list_header_tile.dart';
import '../components/chatting_list_tile.dart';
import '../components/edit_text_form_field.dart';
import '../components/profile_pic_avatar.dart';
import '../components/rate_badges.dart';
import '../providers/internet_provider.dart';
import '../providers/user_id_provider.dart';
import '../utils/Constants.dart';
import '../utils/Internet.dart';
import '../utils/app_colors.dart';
import '../utils/common.dart';
import '../utils/shared_preferences_utils.dart';

//Created on 20220223
class ChallengesChat extends StatefulWidget {
  static const String path = 'challengesChat';

  const ChallengesChat({Key? key}) : super(key: key);

  @override
  _ChallengesChatState createState() => _ChallengesChatState();
}

class _ChallengesChatState extends State<ChallengesChat>
    with isInternetConnection {
  ScrollController? _scrollController;
  var _stackKey = GlobalKey();
  var _textTitleKey = GlobalKey();

  double? _totalHeight = 0.0;
  bool? _visibility = true;
  bool? _isSilverCollapsed = false;
  bool? _isLoaded = false;
  FocusNode? _chatNode;
  TextEditingController? _textController = TextEditingController(text: '');

  Map<String, dynamic> paramSendMsg = {};
  Map<String, dynamic> paramTypeSendMsg = {};
  Map<String, dynamic> passVariableSendMsg = {};
  late SendMessageData? _sendMessageData;
  late AllMessagingData _allMessagingData;
  late List<MsgNode>? _chatList;

  Map<String, dynamic> paramForMsg = {};
  Map<String, dynamic> paramTypeForMsg = {};
  Map<String, dynamic> variableForMsg = {};

  var _streamController;

  // var scrollPosition;
  // String? userName = '';
  String? userRate = '';
  String? userImage = '';

  bool? isBuildWidgets = false;
  late AllUsersData _allUsersData;
  List<String>? errorList = [];

  double? _getHeight(GlobalKey? gKey) {
    try {
      final RenderBox? rBox =
          gKey?.currentContext?.findRenderObject() as RenderBox;
      return rBox?.size.height;
    } catch (e) {
      return null;
    }
  }

  void _getTotalHeight(_) {
    _totalHeight = 0;
    double? stack = _getHeight(_stackKey);
    double? title = _getHeight(_textTitleKey);
    // double? location = _getHeight(_imgLocationKey);
    // double? btn = _getHeight(_btnKey);

    setState(() {
      _visibility = false;
    });

    _totalHeight = (stack ?? 0.0) +
        (title ?? 0.0) /*+ (location ?? 0.0) + (btn ?? 0.0)*/ +
        kToolbarHeight;

    // print('Height == $_totalHeight');
  }

  // if(_chatList!.isNotEmpty) {
  // Timer(Duration(milliseconds: 300),
  // () =>
  // _scrollController!.jumpTo(
  // _scrollController!.position.maxScrollExtent));
  // }
  //

  void scrollToLast() async {
    if (_chatList!.isNotEmpty) {
      _scrollController!.animateTo(
        _scrollController!.position.maxScrollExtent,
        duration: const Duration(milliseconds: 100),
        curve: Curves.bounceIn,
      );

      // Timer(Duration(microseconds : 300),
      //         () =>
      //         _scrollController!.jumpTo(
      //             _scrollController!.position.maxScrollExtent));
    }
  }

  void _getListItems() async {
    SchedulerBinding.instance.addPostFrameCallback((_) {
      // _scrollController!
      //     .jumpTo(_scrollController!.position.maxScrollExtent);
      _scrollController!.animateTo(
        _scrollController!.position.maxScrollExtent,
        duration: const Duration(milliseconds: 100),
        curve: Curves.ease,
      );
    });

    setState(() {
      try {
        if (_scrollController!.offset >
                _totalHeight! -
                    kToolbarHeight /*&&
          !_scrollController!.position.outOfRange*/
            //100
            ) {
          _isSilverCollapsed = true;
        } else {
          _isSilverCollapsed = false;
        }
      } catch (e) {}
    });
  }

  void setToolbarTitle() {
    _scrollController!.addListener(() {
      // print(_scrollController!.offset);
      // collapsing
      if (_scrollController!.offset >
              _totalHeight! -
                  kToolbarHeight /*&&
          !_scrollController!.position.outOfRange*/
          //100
          ) {
        _isSilverCollapsed = true;
      } else {
        _isSilverCollapsed = false;
      }
      setState(() {});
    });
  }

  //20230623 Adding new Mutation for read messages.
  late RunMutation _mutationReadMessages;
  Map<String, dynamic> paramReadMsg= {};
  Map<String, dynamic> paramTypeReadMsg = {};

  Future<void> getDelay(String sender) async {
    await Future.delayed(const Duration(seconds: 2)).then((value) {
        _mutationReadMessages({'recipient': SharedPreferencesUtils.getUserId,
          'sender': sender});
    });
  }

  @override
  void initState() {

    initInternet(context);
    _scrollController = ScrollController();
    _chatNode = FocusNode();
    WidgetsBinding.instance.addPostFrameCallback(_getTotalHeight);

    // _getListItems(); No Need for right now
    setToolbarTitle();

    paramSendMsg = {
      '\$passParam': ' MessagingInput!',
    };
    paramTypeSendMsg = {
      'input': '\$passParam',
    };

    paramForMsg = {
      '\$senderReceipientSearch': 'String!',
    };
    paramTypeForMsg = {
      'senderReceipientSearch': '\$senderReceipientSearch',
    };

    paramReadMsg = {
      '\$recipient': 'String',
      '\$sender': 'String',
    };
    paramTypeReadMsg = {
      'recipient': '\$recipient',
      'sender': '\$sender',
    };

    _chatList = [];
    _streamController = StreamController<List<MsgNode>>();
    _streamController.sink.add(_chatList!);

    super.initState();
  }

  @override
  void dispose() {
    _chatNode?.dispose();
    _scrollController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // _userStat = ModalRoute.of(context)?.settings.arguments as UserStat;
    return Consumer<InternetProvider>(
      builder: (context, valueNet, child) {
        print(valueNet.isConnectivity);
        if (valueNet.getConnected != ConnectivityResult.none) {
          return BaseWidget(
            appbar: AppBar(
              centerTitle: true,
              toolbarHeight: 0.0,
            ),
            body: Container(
              color: aWhite,
              child: Consumer<UserIdProvider>(
                builder: (context, value, child) {
                  Map<String, dynamic> param = {
                    '\$userId': 'UUID',
                  };
                  Map<String, dynamic> paramType = {
                    'userId': '\$userId',
                  };
                  Map<String, dynamic> passVariable = {
                    'userId': '${value.getUserId}'
                  };

                  variableForMsg = {
                    'senderReceipientSearch':
                        '${value.getUserId}|${SharedPreferencesUtils.getUserId}'
                  };

                  print('${value.getUserId}|${SharedPreferencesUtils.getUserId}');
                  Mutation(
                    // key: _mutationVerifyToken,
                    options: MutationOptions(
                      document: gql(readMessages(paramReadMsg, paramTypeForMsg)),
                      // update: update,
                      onError: (OperationException? error) {
                        debugPrint('${ChallengesChat.path} * erroR -- $error');
                      },
                      onCompleted: (dynamic resultData) async {
                        if (resultData != null) {
                          print(resultData);
                          var status = resultData['readMessages']['status'];
                        }
                      },
                      // 'Sorry you changed your mind!',
                    ),
                    builder: (RunMutation _mutationReadMsg, QueryResult? result) {
                      this._mutationReadMessages = _mutationReadMsg;
                      if (result != null) {
                        result.isLoading
                            ? Center(
                          child: CupertinoActivityIndicator(color: aWhite),
                        )
                            : SizedBox();

                      }
                      return SizedBox();
                      // _streamController.sink.add(addResult!.isLoading);
                    },
                  );

                  getDelay('${value.getUserId}');


                  return Query(
                    options: QueryOptions(
                      document: gql(allUsers(param, paramType)),
                      // this is the query string you just created
                      variables: passVariable,
                      pollInterval: Duration(seconds: 100),
                    ),
                    builder: (userResult, {fetchMore, refetch}) {
                      if (userResult.hasException) {
                        return Text(userResult.exception.toString());
                      }

                      if (userResult.isLoading && userResult.data == null) {
                        return const Center(
                            child: CupertinoActivityIndicator());
                      }

                      try {
                        _allUsersData = AllUsersData.fromJson(userResult.data!);

                        if (!isBuildWidgets!) {
                          isBuildWidgets = true;
                          WidgetsBinding.instance
                              .addPostFrameCallback(_getTotalHeight);
                        }
                      } catch (e) {
                        debugPrint('Exception -- allUsers -- $e');
                      }

                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                              child: CustomScrollView(
                                controller: _scrollController,
                                keyboardDismissBehavior:
                                    ScrollViewKeyboardDismissBehavior.onDrag,
                                physics: const BouncingScrollPhysics(),
                                shrinkWrap: true,
                                slivers: <Widget>[
                                  SliverAppBar(
                                    automaticallyImplyLeading: false,
                                    elevation: _isSilverCollapsed! ? 2 : 0,
                                    snap: false,
                                    pinned: true,
                                    floating: false,
                                    stretch: true,
                                    centerTitle: true,
                                    leading: IconButton(
                                      onPressed: () {
                                        Navigator.pop(context);
                                      },
                                      icon: Icon(kIsWeb
                                          ? Icons.arrow_back
                                          : Platform.isIOS
                                              ? Icons.arrow_back_ios
                                              : Icons.arrow_back),
                                    ),
                                    titleTextStyle: TextStyle(
                                        fontSize: 10,
                                        color: _isSilverCollapsed!
                                            ? Colors.black
                                            : Colors.white),
                                    iconTheme: IconThemeData(
                                        color: _isSilverCollapsed!
                                            ? Colors.black
                                            : Colors.white),
                                    // titleTextStyle: TextStyle(
                                    //        fontSize: 10.0,
                                    //        color: scrollPosition >= _totalHeight
                                    //            ? Colors.black
                                    //            : Colors.transparent),
                                    //    iconTheme: IconThemeData(
                                    //        color:  scrollPosition >= _totalHeight
                                    //            ? Colors.black
                                    //            : Colors.white),
                                    flexibleSpace: FlexibleSpaceBar(
                                        titlePadding: EdgeInsets.zero,
                                        centerTitle: true,
                                        background: ChattingListHeaderTile(
                                          playerName:
                                              '${_allUsersData.allUsers?.edges?.first.node?.firstName} ${_allUsersData.allUsers?.edges?.first.node?.lastName}',
                                          playerLocation:
                                              '${_allUsersData.allUsers?.edges?.first.node?.city}, ${_allUsersData.allUsers?.edges?.first.node?.state}',
                                          playerImg: _allUsersData.allUsers
                                              ?.edges?.first.node?.picture,
                                          // NOT RECEIVED
                                          playerRate:
                                              '${_allUsersData.allUsers?.edges?.first.node?.rating}',
                                          // NOT RECEIVED
                                          onViewProfile: () {
                                            Navigator.pushReplacementNamed(
                                                context, ProfilePage.path);
                                          },
                                          onSubmitScore: () {
                                            Navigator.pushNamed(context,
                                                SubmitScoreDetails.path);
                                          },
                                          stackKey: _stackKey,
                                          textTitleKey: _textTitleKey,
                                        ),
                                        title: _isSilverCollapsed!
                                            ? Center(
                                                child: Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    SizedBox(
                                                      width: 40,
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.all(
                                                              5.0),
                                                      child: ProfilePicAvatar(
                                                          radius: 20,
                                                          path: _allUsersData
                                                              .allUsers
                                                              ?.edges
                                                              ?.first
                                                              .node
                                                              ?.picture),
                                                    ),
                                                    Expanded(
                                                      flex: 1,
                                                      child: Text(
                                                        '${_allUsersData.allUsers?.edges?.first.node?.firstName} ${_allUsersData.allUsers?.edges?.first.node?.lastName}',
                                                        maxLines: 1,
                                                        style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 10.0),
                                                      child: RateBadges(
                                                        rate:
                                                            '${_allUsersData.allUsers?.edges?.first.node?.rating}',
                                                        textSize: 16.0,
                                                      ),
                                                    )
                                                  ],
                                                ),
                                              )
                                            : SizedBox()),
                                    expandedHeight: _totalHeight,
                                    backgroundColor: Colors.white,
                                  ),
                                  StreamBuilder<List<MsgNode>?>(
                                    stream: _streamController.stream,
                                    builder: (context, snapshot) {
                                      if (snapshot.hasData) {
                                        return Query(
                                          options: QueryOptions(
                                            document: gql(allMessaging(
                                                paramForMsg, paramTypeForMsg)),
                                            // this is the query string you just created
                                            variables: variableForMsg,
                                            pollInterval: Duration(seconds: 5),
                                          ),
                                          builder: (msgresult,
                                              {fetchMore, refetch}) {
                                            if (msgresult.hasException) {
                                              return SliverToBoxAdapter(
                                                child: Text(
                                                  msgresult.exception
                                                      .toString(),
                                                ),
                                              );
                                            }

                                            if (msgresult.isLoading &&
                                                msgresult.data == null) {
                                              return SliverToBoxAdapter(
                                                child: const Center(
                                                  child:
                                                      CupertinoActivityIndicator(),
                                                ),
                                              );
                                            }

                                            if (msgresult.data != null) {
                                              try {
                                                _allMessagingData =
                                                    AllMessagingData.fromJson(
                                                        msgresult.data!);

                                                _chatList = [];
                                                // MsgNode
                                                for (var msgData
                                                    in _allMessagingData
                                                        .allMessaging!.edges!) {
                                                  _chatList!.add(msgData.node!);
                                                }

                                                _streamController.sink
                                                    .add(_chatList ?? []);

                                                if (!_isLoaded!) {
                                                  _isLoaded = true;
                                                  scrollToLast();
                                                }
                                              } catch (e) {
                                                debugPrint(
                                                    'Exception -- allMessaging -- $e');
                                              }

                                              // return SliverToBoxAdapter(
                                              //   child: Text('Loaded'),
                                              // );
                                              return SliverList(
                                                delegate:
                                                    SliverChildBuilderDelegate(
                                                  (context, index) =>
                                                      ChattingListTile(
                                                    key: ValueKey(index),
                                                    isMe: _chatList![index]
                                                            .sender
                                                            ?.userId ==
                                                        SharedPreferencesUtils
                                                            .getUserId,
                                                    msg: _chatList![index]
                                                        .message,
                                                    time:
                                                        '${convertTime(_chatList![index].createdAt, null)}',
                                                  ),
                                                  childCount: _chatList!.length,
                                                ),
                                              );

                                              // return ListView.builder(
                                              //   itemBuilder: (context, index) {
                                              //     return ChattingListTile(
                                              //       key: ValueKey(index),
                                              //       isMe: _chatList![index].sender?.userId ==
                                              //           SharedPreferencesUtils.getUserId,
                                              //       msg: _chatList![index].message,
                                              //       time: _chatList![index].createdAt,
                                              //     );
                                              //   },
                                              //   shrinkWrap: true,
                                              //   physics: const BouncingScrollPhysics(),
                                              //   itemCount: _chatList!.length,
                                              // );
                                            } else {
                                              return SliverToBoxAdapter(
                                                child: Text('Null'),
                                              );
                                              // return SliverPadding(
                                              //   padding: EdgeInsets.zero,
                                              //   sliver: Center(
                                              //     child: Text(enterFirstMsg),
                                              //   ),
                                              // );
                                            }
                                          },
                                        );
                                      }
                                      return SliverToBoxAdapter(
                                        child: Text('Error'),
                                      );
                                      // return SliverPadding(
                                      //   padding: EdgeInsets.zero,
                                      //   sliver: Center(
                                      //     child: CupertinoActivityIndicator(),
                                      //   ),
                                      // );
                                    },
                                  ),
                                  SliverToBoxAdapter(
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            bottom: MediaQuery.of(context)
                                                .viewInsets
                                                .bottom)),
                                  )
                                ], //<Widget>[]
                              ),
                              flex: 1),
                          EditTextFormField(
                            onTap: () {
                              scrollToLast();
                            },
                            focusNode: _chatNode,
                            hint: 'Enter Message',
                            onTextChange: (dynamic value) {
                              setState(() {
                                _textController?.text = value;
                                _textController?.selection =
                                    TextSelection.fromPosition(TextPosition(
                                        offset: _textController!.text.length));
                              });
                            },
                            suffixIcon: _textController!.text.trim().isNotEmpty
                                ? Mutation(
                                    options: MutationOptions(
                                      document: gql(
                                        sendMessage(
                                            paramSendMsg, paramTypeSendMsg),
                                      ),
                                      onError: (OperationException? error) {
                                        debugPrint(
                                            '${ChallengesChat.path} * erroR -- $error');
                                        errorList = [];
                                        errorList!.add('$error');

                                        // Text('$error');
                                      },
                                      // _simpleAlert(context, error.toString()),
                                      onCompleted: (dynamic resultData) {
                                        // Text('Thanks for your star!');

                                        debugPrint(
                                            '${ChallengesChat.path} **** RESULT * $resultData');

                                        if (resultData != null) {
                                          _sendMessageData =
                                              SendMessageData.fromJson(
                                                  resultData);

                                          _chatList!.add(_sendMessageData!
                                              .sendMessage!.messaging!);

                                          _streamController.sink
                                              .add(_chatList ?? []);

                                          scrollToLast();
                                        }
                                      },
                                      // 'Sorry you changed your mind!',
                                    ),
                                    builder: (RunMutation _sendMessage,
                                        QueryResult? addResult) {
                                      final doSendMsg = (result) {
                                        _sendMessage(result);
                                      };

                                      final anyLoading = addResult!.isLoading;

                                      return IconButton(
                                        onPressed: () {
                                          if (_textController!.text
                                              .trim()
                                              .isNotEmpty) {
                                            var data = LoggedUser.fromJson(
                                                jsonDecode(
                                                    SharedPreferencesUtils
                                                        .getUserData
                                                        .toString()));

                                            Map<String, dynamic>
                                                passVariableSendMsg = {
                                              'message':
                                                  '${_textController?.text}',
                                              'sender': '${data.userId}',
                                              'recipient': '${value.getUserId}',
                                            };

                                            doSendMsg({
                                              'passParam': passVariableSendMsg
                                            });

                                            _textController!.text = '';

                                            scrollToLast();
                                            // _getListItems();

                                            // Timer(
                                            //     Duration(milliseconds: 300),
                                            //         () => _scrollController!.jumpTo(
                                            //         _scrollController!
                                            //             .position.minScrollExtent));
                                            // Timer(
                                            //     Duration(milliseconds: 300),
                                            //         () => _scrollController!.jumpTo(
                                            //         _scrollController!
                                            //             .position.maxScrollExtent));
                                            //
                                            // print(_scrollController!
                                            //     .position.maxScrollExtent);
                                          }
                                        },
                                        icon: Icon(
                                          Icons.send,
                                          color: aGreen,
                                        ),
                                      );
                                    },
                                  )
                                : SizedBox(),
                            textController: _textController,
                          )
                        ],
                      );
                    },
                  );
                },
              ),
            ),
          );
        } else {
          _streamController.close();
          _chatList = [];
          _streamController = StreamController<List<MsgNode>>();
          _streamController.sink.add(_chatList!);

          // isLoaded = false;
          return NoInternetPage(
            onClick: () {},
          );
        }
      },
    );
  }
}
