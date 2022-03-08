import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenniston/Pages/base_activity.dart';
import 'package:tenniston/Pages/challenges_chat.dart';
import 'package:tenniston/components/elevated_buttons.dart';
import 'package:tenniston/components/league_detail_tile.dart';
import 'package:tenniston/components/league_details_header_tile.dart';
import 'package:tenniston/components/league_details_winner_tile.dart';

//Created on 20220222

class LeagueDetails extends StatefulWidget {
  final String path = 'leagueDetail';

  const LeagueDetails({Key? key}) : super(key: key);

  @override
  _LeagueDetailsState createState() => _LeagueDetailsState();
}

class _LeagueDetailsState extends State<LeagueDetails> {
  ScrollController? _scrollController;
  GlobalKey? _stackKey = GlobalKey();
  GlobalKey? _textTitleKey = GlobalKey();
  GlobalKey? _imgLocationKey = GlobalKey();
  GlobalKey? _imgCalendarKey = GlobalKey();
  GlobalKey? _textDescKey = GlobalKey();
  GlobalKey? _textStatusKey = GlobalKey();
  double? _dynamicTotalHeight;
  List<double>? _childWidgetHeights = [];

  @override
  void initState() {
    _scrollController = ScrollController();
    WidgetsBinding.instance?.addPostFrameCallback(_getTotalHeight);
    super.initState();
  }

  double _getWidgetHeight(GlobalKey? key) {
    final RenderBox renderBoxRed =
        key?.currentContext?.findRenderObject() as RenderBox;
    return renderBoxRed.size.height;
  }

  _getTotalHeight(_) {
    _dynamicTotalHeight = 0;
    _childWidgetHeights = [];

    _childWidgetHeights!.add(_getWidgetHeight(_textTitleKey));
    _childWidgetHeights!.add(_getWidgetHeight(_imgLocationKey));
    _childWidgetHeights!.add(_getWidgetHeight(_imgCalendarKey));
    _childWidgetHeights!.add(_getWidgetHeight(_textDescKey));
    _childWidgetHeights!.add(_getWidgetHeight(_textStatusKey));
    _childWidgetHeights!.add(_getWidgetHeight(_stackKey));

    for (double height in _childWidgetHeights!) {
      _dynamicTotalHeight = height + _dynamicTotalHeight!;
    }
    print(_childWidgetHeights);

    setState(() {
      _dynamicTotalHeight = _dynamicTotalHeight! + 56.0;
    });

    return _dynamicTotalHeight;
  }

  @override
  void dispose() {
    _scrollController!.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double? height = (size.height / 2) - 56;
    var scrollPosition;

    int? leagueStatus = 0; //0 = Ongoing | 1 = Completed

    return BaseWidget(
      appbar: AppBar(
        centerTitle: true,
        title: Text(''),
        toolbarHeight: 0,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
              child: CustomScrollView(
                controller: _scrollController,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                slivers: <Widget>[
                  SliverLayoutBuilder(
                    builder: (context, constraints) {
                      scrollPosition = constraints.scrollOffset + 56;
                      return SliverAppBar(
                        elevation: 0,
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
                            color: height <= scrollPosition
                                ? Colors.black
                                : Colors.transparent),
                        iconTheme: IconThemeData(
                            color: height <= scrollPosition
                                ? Colors.black
                                : Colors.white),
                        flexibleSpace: FlexibleSpaceBar(
                          background: LeagueDetailsHeaderTile(
                            stackKey: _stackKey,
                            textTitleKey: _textTitleKey,
                            imgLocationKey: _imgLocationKey,
                            imgCalendarKey: _imgCalendarKey,
                            textDescKey: _textDescKey,
                            textStatusKey: _textStatusKey,
                            leagueStatus: leagueStatus,
                          ),
                          centerTitle: true,
                          // title: size.height / 2 <= constraints.scrollOffset ? Text('Participating Players') : SizedBox(),
                          title: height <= scrollPosition
                              ? Text('Participating Players')
                              : SizedBox(),
                        ),
                        expandedHeight: _dynamicTotalHeight,
                        backgroundColor: Colors.white,
                      );
                    },
                  ),
                  if (leagueStatus == 1)
                    SliverToBoxAdapter(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text('League Winner'),
                          ),
                          LeagueDetailsWinnerTile(),
                        ],
                      ),
                    ),
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text('Participating Players'),
                    ),
                  ),
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) => LeagueDetailTile(
                        name: 'Novak J.',
                        games: 12,
                        loss: 15,
                        win: 5,
                        profileImg: 'assets/Ellipse 3.png',
                        onTileClick: () {
                          if (leagueStatus == 0) {
                            // Navigator.pushNamed(context, ChallengesChat().path);
                            Navigator.pushNamed(context, ChallengesChat().path);
                          }
                        },
                        onProfileClick: () {},
                      ),
                      childCount: 10,
                    ),
                  )
                ],
              ),
              flex: 1),
          if (leagueStatus == 0)
            ElevatedButtons(
              width: double.infinity,
              label: 'Join Now',
              fontSize: 25,
              radius: 0.0,
              onClick: () {},
              primary: true,
            )
        ],
      ),
    );
  }
}
