import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tenniston/Pages/other_player_profile_page.dart';
import 'package:tenniston/Pages/submit_score_details.dart';
import 'package:tenniston/bean/all_users/all_users.dart';
import 'package:tenniston/bean/league_stat/league_stat.dart';
import 'package:tenniston/bean/user_profiles/user_profiles.dart';
import 'package:tenniston/providers/user_id_provider.dart';
import 'package:tenniston/utils/Constants.dart';
import 'package:tenniston/utils/shared_preferences_utils.dart';

import '../Pages/profile_page.dart';
import '../Pages/submit_score_list.dart';
import '../Pages/base_activity.dart';
import '../bean/chat_dto.dart';
import '../components/chatting_list_tile.dart';
import '../components/chatting_list_header_tile.dart';
import '../components/edit_text_form_field.dart';
import '../components/rate_badges.dart';
import '../utils/app_colors.dart';

//Created on 20220223
//20220321
class ChallengesChat extends StatefulWidget {
  static const String path = 'challengesChat';

  const ChallengesChat({Key? key}) : super(key: key);

  @override
  _ChallengesChatState createState() => _ChallengesChatState();
}

class _ChallengesChatState extends State<ChallengesChat> with SharedPrefUtils{
  List<Chat>? chatList = [
    Chat(
        message: 'Are you up for a challenge?',
        dateTime: '3:27 PM',
        isMe: false),
    Chat(message: 'Yes, count me in', dateTime: '3:28 PM', isMe: true),
    Chat(message: 'No, I am not available', dateTime: '3:28 PM', isMe: true),
    Chat(message: 'Yes, count me in', dateTime: '3:28 PM', isMe: false)
  ];

  ScrollController? _scrollController;
  var _stackKey = GlobalKey();
  var _textTitleKey = GlobalKey();

  double? _totalHeight = 0.0;
  bool? _visibility = true;
  bool? _isSilverCollapsed = false;
  FocusNode? _chatNode;
  TextEditingController? _textController = TextEditingController(text: '');

  // var scrollPosition;
  // String? userName = '';
  String? userRate = '';
  String? userImage = '';

  bool? isBuildWidgets = false;
  late AllUsersData _allUsersData;

  double? _getHeight(GlobalKey? gKey) {
    try {
      final RenderBox? rBox =
          gKey?.currentContext?.findRenderObject() as RenderBox;
      return rBox?.size.height;
    } catch (e) {}
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

  void _getListItems() async {
    SchedulerBinding.instance?.addPostFrameCallback((_) {
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

  @override
  void initState() {
    _scrollController = ScrollController();
    _chatNode = FocusNode();
    WidgetsBinding.instance?.addPostFrameCallback(_getTotalHeight);

    // _getListItems(); No Need for right now
    setToolbarTitle();
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

    return BaseWidget(
      appbar: AppBar(
        centerTitle: true,
        // title: SizedBox(
        //   child: ChattingListHeaderTile(),
        //   key: _headerContentSize,
        // ), // This is used for getting dynamic height of contents!!!
        toolbarHeight: 0,
      ),

      body :Container(
        color: aWhite,
        child: Consumer<UserIdProvider>(
          builder: (context, value, child) {

            Map<String, dynamic> param = {
              '\$userId': 'UUID',
            };
            Map<String, dynamic> paramType = {
              'userId': '\$userId',
            };
            Map<String, dynamic> passVariable = {'userId': '${value.getUserId}'};

            return Query(
              options: QueryOptions(
                document: gql(allUsers(param, paramType)),
                // this is the query string you just created
                variables:passVariable,
                pollInterval: Duration(seconds: 100),
              ),
              builder: (userResult, {fetchMore, refetch}) {
                if (userResult.hasException) {
                  return Text(userResult.exception.toString());
                }

                if (userResult.isLoading && userResult.data == null) {
                  return const Center(child: CupertinoActivityIndicator());
                }

                try {
                  _allUsersData = AllUsersData.fromJson(userResult.data!);

                  if (!isBuildWidgets!) {
                    isBuildWidgets = true;
                    WidgetsBinding.instance?.addPostFrameCallback(_getTotalHeight);
                  }


                } catch (e) {
                  debugPrint('Exception -- $e');
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
                                  icon: Icon(Icons.arrow_back)),
                              titleTextStyle: TextStyle(
                                  fontSize: 10,
                                  color:
                                  _isSilverCollapsed! ? Colors.black : Colors.white),
                              iconTheme: IconThemeData(
                                  color:
                                  _isSilverCollapsed! ? Colors.black : Colors.white),
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
                                    playerName: '${_allUsersData.allUsers?.edges?.first.node?.firstName} ${_allUsersData.allUsers?.edges?.first.node?.lastName}',
                                    playerLocation: '${_allUsersData.allUsers?.edges?.first.node?.city}, ${_allUsersData.allUsers?.edges?.first.node?.state}',
                                    playerImg: _allUsersData.allUsers?.edges?.first.node?.picture,// NOT RECEIVED
                                    playerRate: '${_allUsersData.allUsers?.edges?.first.node?.rating}',// NOT RECEIVED
                                    onViewProfile: () {
                                      Navigator.pushNamed(context, ProfilePage.path);
                                    },
                                    onSubmitScore: () {
                                      Navigator.pushNamed(context, SubmitScoreDetails.path);
                                    },
                                    stackKey: _stackKey,
                                    textTitleKey: _textTitleKey,
                                  ),
                                  title: _isSilverCollapsed!
                                      ? Center(
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        SizedBox(
                                          width: 40,
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.all(5.0),
                                          child: CircleAvatar(
                                            backgroundColor: aLightGray,
                                            radius: 20,
                                            child: CircleAvatar(
                                              backgroundImage: NetworkImage('${_allUsersData.allUsers?.edges?.first.node?.picture}'),
                                              //'assets/Ellipse 1.png'
                                              radius: 19,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            '${_allUsersData.allUsers?.edges?.first.node?.firstName} ${_allUsersData.allUsers?.edges?.first.node?.lastName}',
                                            maxLines: 1,
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                          const EdgeInsets.only(right: 10.0),
                                          child: RateBadges(
                                            rate: '${_allUsersData.allUsers?.edges?.first.node?.rating}',
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
                            SliverList(
                              delegate: SliverChildBuilderDelegate(
                                    (context, index) => ChattingListTile(
                                  key: ValueKey(index),
                                  isMe: chatList![index].isMe,
                                  msg: chatList![index].message,
                                  time: chatList![index].dateTime,
                                ),
                                childCount: chatList!.length,
                              ),
                            )
                          ], //<Widget>[]
                        ),
                        flex: 1),
                    EditTextFormField(
                      onTap: () {},
                      focusNode: _chatNode,
                      hint: 'Enter Message',
                      onTextChange: (dynamic value) {
                        setState(() {
                          _textController?.text = value;
                          _textController?.selection = TextSelection.fromPosition(
                              TextPosition(offset: _textController!.text.length));
                        });
                      },
                      prefixIcon: SizedBox(),
                      suffixIcon: _textController!.text.trim().isNotEmpty
                          ? IconButton(
                        onPressed: () {
                          if (_textController!.text.trim().isNotEmpty) {
                            setState(() {
                              chatList!.add(
                                Chat(
                                    message: _textController?.text,
                                    dateTime: '3:27 PM',
                                    isMe: true),
                              );
                            });
                            _textController!.text = '';

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
                          color: Color(0XFF808080),
                        ),
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
  }
}
