import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';
import 'package:tenniston/bean/all_users/all_users.dart';
import 'package:tenniston/providers/user_id_provider.dart';
import 'package:tenniston/utils/Constants.dart';
import 'package:tenniston/utils/shared_preferences_utils.dart';

import '../Pages/base_activity.dart';
import '../Pages/submit_score_details.dart';
import '../components/edit_text_form_field.dart';
import '../components/submit_score_list_tile.dart';
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

class _SubmitScoreListState extends State<SubmitScoreList>
    with SharedPrefUtils {
  ScrollController? _scrollController;

  String? Search = '';
  FocusNode? _chatNode;

  late AllUsersData _allUsersData;
  List<Edges>? _listAllUsers;
  List<Edges>? _foundUsers = [];
  bool? isLoaded = false;

  @override
  void initState() {
    _chatNode = FocusNode();
    _scrollController = ScrollController();

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
    Map<String, dynamic> param = {
      '\$userId': 'UUID',
    };
    Map<String, dynamic> paramType = {
      'userId': '\$userId',
    };
    Map<String, dynamic> passVariable = {'userNameSearch': ''};

    return BaseWidget(
      appbarHeight: kToolbarHeight,
      appbar: Text(
        submitScore,
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
      body: Container(
          color: aWhite,
          child: Query(
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
                return const Center(child: CupertinoActivityIndicator());
              }

              if (!isLoaded!) {
                isLoaded = true;
                try {
                  _allUsersData = AllUsersData.fromJson(userResult.data!);
                  _listAllUsers = [];
                  _listAllUsers = _allUsersData.allUsers?.edges;

                  _foundUsers = _listAllUsers;
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
                          // focusNode: _chatNode,
                          hint: searchPlayer,
                          onTextChange: (value) {
                            // setState(() {
                            // _textController?.text = value;
                            // _textController?.selection = TextSelection.fromPosition(
                            //     TextPosition(offset: _textController!.text.length));
                            // });
                            _runFilter(value);
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
                        style: TextStyle(
                            color: aLightGray,
                            fontWeight: FontWeight.bold,
                            fontSize: 16.0),
                      ),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => SubmitScoreListTile(
                        userName: '${_foundUsers![index].node?.firstName} ${_foundUsers![index].node?.lastName}',
                        // profileImg: _foundUsers![index].node?.picture,
                        profileImg: 'assets/Ellipse 1.png',
                        rating: '${_foundUsers![index].node?.rating}',
                        playerLocation: '${_foundUsers![index].node?.city}, ${_foundUsers![index].node?.state}, ${_foundUsers![index].node?.country}',
                        onTileClick: () {
                          Provider.of<UserIdProvider>(context,listen: false).setUserId(_foundUsers![index].node?.userId);
                          Navigator.pushNamed(context, SubmitScoreDetails.path);
                        },
                        onProfileClick: () {},
                      ),
                      childCount: _foundUsers!.length,
                    ),
                  )
                ],
              );
            },
          )),
    );
  }

  void _runFilter(String enteredKeyword) {
    List<Edges>? results = [];
    if (enteredKeyword.isEmpty) {
      // if the search field is empty or only contains white-space, we'll display all users
      results = _listAllUsers;
    } else {
      results = _listAllUsers!
          .where((Edges) =>
              Edges.node!.firstName!
                  .toLowerCase()
                  .contains(enteredKeyword.toLowerCase()) ||
              Edges.node!.lastName!
                  .toLowerCase()
                  .contains(enteredKeyword.toLowerCase()))
          .toList();

      // we use the toLowerCase() method to make it case-insensitive
    }

    // Refresh the UI
    setState(() {
      _foundUsers = results;
    });
  }
}
