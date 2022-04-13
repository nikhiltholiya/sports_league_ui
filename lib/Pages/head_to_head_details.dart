import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../Pages/base_activity.dart';
import '../components/head_to_head_details_header_tile.dart';
import '../components/head_to_head_details_list_tile.dart';

//Edited on 20220307- Redesign with scroll
class HeadToHeadDetails extends StatefulWidget {
  static const String path = 'headToHeadDetails';

  const HeadToHeadDetails({Key? key}) : super(key: key);

  @override
  _HeadToHeadDetailsState createState() => _HeadToHeadDetailsState();
}

class _HeadToHeadDetailsState extends State<HeadToHeadDetails> {
  ScrollController? _scrollController;

  GlobalKey? _stackKey = GlobalKey();
  GlobalKey? _usersKey = GlobalKey();
  double? _dynamicTotalHeight;
  List<double>? _childWidgetHeights = [];

  // var _headerContentSize = GlobalKey();
  // var _headerBackSize = GlobalKey();
  // double? _totalHeight;
  bool? _visibility = true;
  bool? _isSilverCollapsed = false;
  FocusNode? _chatNode;

  double? _getHeight(GlobalKey? gKey) {
    try {
      final RenderBox? rBox = gKey?.currentContext?.findRenderObject() as RenderBox;
      return rBox?.size.height;
    } catch (e) {}
  }

  void _getTotalHeight(_) {
    _dynamicTotalHeight = 0;
    double? content = _getHeight(_stackKey);
    double? box = _getHeight(_usersKey);

    setState(() {
      _visibility = false;
    });

    _dynamicTotalHeight = (content ?? 0.0) + (box ?? 0.0) + kToolbarHeight;
  }

  @override
  void initState() {
    _scrollController = ScrollController();
    _chatNode = FocusNode();
    WidgetsBinding.instance?.addPostFrameCallback(_getTotalHeight);
    _scrollController!.addListener(() {
      // collapsing
      if (_scrollController!.offset > 100 /*&&
          !_scrollController!.position.outOfRange*/
          ) {
        _isSilverCollapsed = true;
      } else {
        _isSilverCollapsed = false;
      }
      setState(() {});
    });

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
    return BaseWidget(
      appbar: AppBar(
        centerTitle: true,
        // title: SizedBox(
        //   child: HeadToHeadDetailsHeaderTile(),
        //   key: _headerContentSize,
        // ), // This is used for getting dynamic height of contents!!!
        toolbarHeight: 0.0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: CustomScrollView(
                controller: _scrollController,
                keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
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
                          ? null
                          : Platform.isIOS
                              ? Icons.arrow_back_ios
                              : Icons.arrow_back),
                    ),
                    titleTextStyle: TextStyle(fontSize: 10, color: _isSilverCollapsed! ? Colors.black : Colors.white),
                    iconTheme: IconThemeData(color: _isSilverCollapsed! ? Colors.black : Colors.white),
                    /* titleTextStyle: TextStyle(
                            fontSize: 10.0,
                            color: scrollPosition >= _totalHeight
                                ? Colors.black
                                : Colors.transparent),
                        iconTheme: IconThemeData(
                            color:  scrollPosition >= _totalHeight
                                ? Colors.black
                                : Colors.white),*/
                    flexibleSpace: FlexibleSpaceBar(
                      background: HeadToHeadDetailsHeaderTile(
                        stackKey: _stackKey,
                        usersKey: _usersKey,
                        player1Name: 'John s.',
                        player1Img: 'assets/Ellipse 1.png',
                        player1win: '0',
                        player1Score: '0',
                        player1Loss: '11',
                        player2Name: 'Kalpesh T.',
                        player2Img: 'assets/Ellipse 2.png',
                        player2win: '10',
                        player2Score: '11',
                        player2Loss: '0',
                      ),
                      centerTitle: true,
                      title: _isSilverCollapsed! ? Text('Head to Head') : SizedBox(),
                    ),
                    expandedHeight: _dynamicTotalHeight,
                    backgroundColor: Colors.white,
                  ),

                  // SliverToBoxAdapter(
                  //   child: Padding(
                  //     padding: EdgeInsets.all(8.0),
                  //     child: Text('Participating Players'),
                  //   ),
                  // ),

                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => HeadToHeadDetailsListTile(
                        title: 'CBS Arena',
                        date: 'Dec 31st 2021',
                        onProfileClick: () {},
                        onTileClick: () {},
                        player1matchScore: [5, 4, 3, 2, 1],
                        player1Img: 'assets/Ellipse 5.png',
                        player1Name: 'Novak J.',
                        player1Active: true,
                        player2matchScore: [1, 2, 3, 4, 5],
                        player2Img: 'assets/Ellipse 2.png',
                        player2Name: 'Kalpesh T.',
                        player2Active: false,
                      ),
                      childCount: 10,
                    ),
                  )
                ], //<Widget>[]
              ),
              flex: 1),
        ],
      ),
    );
  }
}
