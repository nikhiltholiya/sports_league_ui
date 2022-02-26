import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tenniston/Pages/challenges_chat.dart';
import 'package:tenniston/components/league_detail_tile.dart';

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
  List<double>? _childWidgetHeights  = [];


  @override
  void initState() {
    _scrollController = ScrollController();
    WidgetsBinding.instance?.addPostFrameCallback(_getTotalHeight);
    super.initState();
  }

  double _getWidgetHeight(GlobalKey? key) {
    final RenderBox renderBoxRed = key?.currentContext?.findRenderObject() as RenderBox;
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
    // print(_childWidgetHeights!);

    for (double height in _childWidgetHeights!) {
      _dynamicTotalHeight = height + _dynamicTotalHeight!;
    }

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

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(''),
        toolbarHeight: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
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
                              }, icon: Icon(Icons.arrow_back)),
                          titleTextStyle: TextStyle(
                              color: height <= scrollPosition
                                  ? Colors.black
                                  : Colors.transparent),
                          iconTheme: IconThemeData(
                              color: height <= scrollPosition
                                  ? Colors.black
                                  : Colors.white),
                          flexibleSpace: FlexibleSpaceBar(
                            background: Stack(

                              children: [
                                Container(
                                  key: _stackKey,
                                  width: double.infinity,
                                  height: 170,
                                  padding: EdgeInsets.symmetric(
                                      vertical: 50.0, horizontal: 20.0),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(12),
                                      bottomRight: Radius.circular(12),
                                    ),
                                    gradient: LinearGradient(colors: [
                                      Color(0xff47BA79),
                                      Color(0xff47BA79),
                                      Color(0xff3E4982)
                                    ]),
                                    image: DecorationImage(
                                      image: AssetImage(
                                        'assets/tennis.png',
                                      ),
                                      fit: BoxFit.fill,
                                      colorFilter: new ColorFilter.mode(
                                          Colors.black.withOpacity(0.19),
                                          BlendMode.dstATop),
                                    ),
                                  ),
                                ),
                                Align(

                                  alignment: Alignment.bottomCenter,
                                  child: Stack(
                                    alignment: Alignment.topLeft,
                                    fit: StackFit.loose,
                                    children: [
                                      Card(
                                        margin: EdgeInsets.symmetric(horizontal: 15,vertical: 30),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                          BorderRadius.circular(12.0),
                                        ),
                                        elevation: 2.0,
                                        child: ClipRRect(
                                          borderRadius:
                                          BorderRadius.circular(12.0),
                                          child: Stack(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 20.0,
                                                    left: 10.0,
                                                    right: 10.0,
                                                    bottom: 10),
                                                child: Wrap(
                                                  runAlignment: WrapAlignment.spaceBetween,
                                                  alignment: WrapAlignment.start,
                                                  direction: Axis.horizontal,
                                                  crossAxisAlignment: WrapCrossAlignment.start,
                                                  children: [
                                                    Text(
                                                      'Coventry Tennis League',
                                                      maxLines: 1,
                                                      key: _textTitleKey,
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          fontWeight:
                                                          FontWeight.bold),
                                                    ),
                                                    Row(
                                                      key: _imgLocationKey,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets
                                                              .all(5.0),
                                                          child: Icon(
                                                              Icons
                                                                  .location_pin,
                                                              size: 16.0,
                                                              color: Color(
                                                                  0xFF3E4982)),
                                                          // child: Image.asset('assets/Vector (1).png',color: Color(0xFF3E4982),fit: BoxFit.none),
                                                        ),
                                                        Text(
                                                          'CBS Arena, Los Angeles, CA',
                                                          maxLines: 1,
                                                        )
                                                      ],
                                                    ),
                                                    Row(
                                                      key: _imgCalendarKey,
                                                      crossAxisAlignment:
                                                      CrossAxisAlignment
                                                          .center,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                          const EdgeInsets
                                                              .all(5.0),
                                                          child: Icon(
                                                              Icons
                                                                  .calendar_today,
                                                              size: 16.0,
                                                              color: Color(
                                                                  0xFF3E4982)),
                                                          // child: Image.asset('assets/Vector (2).png',color: Color(0xFF3E4982),fit: BoxFit.fill,),
                                                        ),
                                                        Text(
                                                          'Sat 21st Jan 2022',
                                                          maxLines: 1,
                                                        ),
                                                        Text(' - '),
                                                        Text(
                                                          'Sat 20th Feb 2022',
                                                          maxLines: 1,
                                                        )
                                                      ],
                                                    ),

                                                    SizedBox(
                                                      key: _textDescKey,
                                                      child: Text(
                                                        'Friendly, competitive tennis on Coventry\'s public courts.\nLocal Tennis Leagues is for anyone, no matter your tennis experience. Play YOUR way.',
                                                        maxLines: 4,
                                                        softWrap: true,
                                                        textAlign:
                                                        TextAlign.start,
                                                        overflow:
                                                        TextOverflow.ellipsis,
                                                        style: TextStyle(
                                                          color:
                                                          Color(0XFF808080),
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Positioned(
                                                child: Image.asset(
                                                  'assets/green_tennis_ball_icon_green.png',
                                                ),
                                                top: -25,
                                                right: -25,
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),

                                      Positioned(
                                          child: Card(
                                            key: _textStatusKey,
                                            elevation: 2.0,
                                            shape: RoundedRectangleBorder(
                                                borderRadius:
                                                BorderRadius.circular(
                                                    10.0)),
                                            color: Color(leagueStatus == 0
                                                ? 0xFFD99726
                                                : 0xFF31A05F),
                                            child: Padding(
                                              padding:
                                              const EdgeInsets.symmetric(
                                                  horizontal: 10.0,
                                                  vertical: 5.0),
                                              child: Text(
                                                leagueStatus == 0
                                                    ? 'Ongoing'
                                                    : 'Completed',
                                                style: TextStyle(
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ),
                                          ),
                                          top: 10.0,
                                          left: 25.0)
                                    ],
                                  ),
                                ),
                              ],
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
                            Card(
                              margin: EdgeInsets.all(15.0),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              elevation: 2.0,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12.0),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Positioned(
                                      child: Center(
                                          child: Image.asset(
                                              'assets/Vector_round.png')),
                                      top: -15,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Wrap(
                                        crossAxisAlignment:
                                        WrapCrossAlignment.center,
                                        alignment: WrapAlignment.center,
                                        children: [
                                          Column(
                                            children: [
                                              CircleAvatar(
                                                child: Image.asset(
                                                    'assets/Ellipse 1.png'),
                                                backgroundColor:
                                                Color(0x808C8C8C),
                                                radius: 40,
                                              ),
                                              Text(
                                                'John Snow',
                                                maxLines: 1,
                                                style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight:
                                                    FontWeight.bold),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding:
                                                const EdgeInsets.all(5.0),
                                                child: Icon(Icons.location_pin,
                                                    size: 16.0,
                                                    color: Color(0xFF3E4982)),
                                                // child: Image.asset('assets/Vector (1).png',color: Color(0xFF3E4982),fit: BoxFit.none),
                                              ),
                                              Text(
                                                'California, CA',
                                                maxLines: 1,
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.all(5.0),
                                                child: Icon(
                                                    Icons.circle,
                                                    size: 5.0,
                                                    color: Color(0XFF808080)),
                                                // child: Image.asset('assets/Vector (1).png',color: Color(0xFF3E4982),fit: BoxFit.none),
                                              ),
                                              Text(
                                                '32 Yrs',
                                                maxLines: 1,
                                              )
                                            ],
                                          ),
                                          Divider(
                                            color: Color(0X1F808080),
                                            height: 1,
                                            thickness: 1,
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    'Matches',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0XFF808080),
                                                      fontSize: 14,
                                                      fontWeight:
                                                      (FontWeight.normal),
                                                    ),
                                                  ),
                                                  flex: 1,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'Victories',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0XFF808080),
                                                      fontSize: 14,
                                                      fontWeight:
                                                      (FontWeight.normal),
                                                    ),
                                                  ),
                                                  flex: 1,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'Defeats',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0XFF808080),
                                                      fontSize: 14,
                                                      fontWeight:
                                                      (FontWeight.normal),
                                                    ),
                                                  ),
                                                  flex: 1,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    'Rating',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0XFF808080),
                                                      fontSize: 14,
                                                      fontWeight:
                                                      (FontWeight.normal),
                                                    ),
                                                  ),
                                                  flex: 1,
                                                ),
                                              ],
                                            ),
                                          ),
                                          Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Row(
                                              mainAxisAlignment:
                                              MainAxisAlignment.center,
                                              crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                              children: [
                                                Expanded(
                                                  child: Text(
                                                    '32',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0XFF000000),
                                                      fontSize: 18,
                                                      fontWeight:
                                                      (FontWeight.bold),
                                                    ),
                                                  ),
                                                  flex: 1,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    '16',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0XFF31A05F),
                                                      fontSize: 18,
                                                      fontWeight:
                                                      (FontWeight.bold),
                                                    ),
                                                  ),
                                                  flex: 1,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    '16',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0XFFEB5945),
                                                      fontSize: 18,
                                                      fontWeight:
                                                      (FontWeight.bold),
                                                    ),
                                                  ),
                                                  flex: 1,
                                                ),
                                                Expanded(
                                                  child: Text(
                                                    '4.5',
                                                    textAlign: TextAlign.center,
                                                    style: TextStyle(
                                                      color: Color(0XFF3E4982),
                                                      fontSize: 18,
                                                      fontWeight:
                                                      (FontWeight.bold),
                                                    ),
                                                  ),
                                                  flex: 1,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
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
                            if(leagueStatus == 0){
                              // Navigator.pushNamed(context, ChallengesChat().path);
                              Navigator.pushNamed(context, ChallengesChat().path);
                            }

                          },
                          onProfileClick: (){

                          },
                        ),
                        childCount: 10,
                      ), //SliverChildBuildDelegate
                    ) //SliverList
                  ], //<Widget>[]
                ),
                flex: 1),

            if (leagueStatus == 0)
              SizedBox(
                width: double.infinity,
                height: 56.0,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text(
                    'Join Now',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 25, color: Colors.white),
                  ),
                  style: ButtonStyle(
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.zero,
                      ),
                    ),
                    backgroundColor:
                    MaterialStateProperty.all(Color(0XFF31A05F)),
                    elevation: MaterialStateProperty.all(0.0),
                    // textStyle: MaterialStateProperty.all(TextStyle(backgroundColor: Colors.black,))
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
