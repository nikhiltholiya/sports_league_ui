import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:tenniston/Pages/head_to_head_page.dart';
import 'package:tenniston/Pages/recent_macthes_pages.dart';
import 'package:tenniston/components/head_to_head_details_list_tile.dart';
import 'package:tenniston/components/head_to_head_list_tile.dart';
import 'package:tenniston/components/profile_header_tile.dart';
import 'package:tenniston/components/stats_tile.dart';
import 'package:tenniston/utils/Constants.dart' as Constants;
import 'package:tenniston/utils/app_colors.dart';

//Updated on 20220308
class ProfileDetailPage extends StatefulWidget {
  const ProfileDetailPage({Key? key}) : super(key: key);

  @override
  _ProfileDetailPageState createState() => _ProfileDetailPageState();
}

class _ProfileDetailPageState extends State<ProfileDetailPage> {
  String readRepositories = Constants.homepageQuery;
  var dataRecent;

  ScrollController? _scrollController;
  GlobalKey? _stackKey = GlobalKey();
  GlobalKey? _profileImgKey = GlobalKey();
  GlobalKey? _playerNameKey = GlobalKey();
  GlobalKey? _imgLocationKey = GlobalKey();
  GlobalKey? _btnKey = GlobalKey();

  double? _dynamicTotalHeight;
  List<double>? _childWidgetHeights = [];
  bool? isLoaded = false;

  @override
  void initState() {
    _scrollController = ScrollController();
    // WidgetsBinding.instance?.addPostFrameCallback(_getTotalHeight);
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

    // _childWidgetHeights!.add(_getWidgetHeight(_stackKey));
    _childWidgetHeights!.add(_getWidgetHeight(_profileImgKey));
    _childWidgetHeights!.add(_getWidgetHeight(_playerNameKey));
    _childWidgetHeights!.add(_getWidgetHeight(_imgLocationKey));
    _childWidgetHeights!.add(_getWidgetHeight(_btnKey));

    for (double height in _childWidgetHeights!) {
      _dynamicTotalHeight = height + _dynamicTotalHeight!;
    }

    print(_childWidgetHeights);
    setState(() {
      _dynamicTotalHeight =
          _dynamicTotalHeight! + kToolbarHeight + kToolbarHeight;
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
    final mq = MediaQuery.of(context).size;
    var size = MediaQuery.of(context).size;
    double? height = (size.height / 2) - 56;
    var scrollPosition;

    return Container(
      height: mq.height,
      child: Query(
        options: QueryOptions(
          document: gql(readRepositories),
          // this is the query string you just created
          variables: {
            'userId': "3a766ad6-3642-46dc-b31f-73e08f2df0df",
          },
          pollInterval: Duration(seconds: 100),
        ),
        builder: (result, {fetchMore, refetch}) {
          if (result.hasException) {
            return Text(result.exception.toString());
          }

          if (result.isLoading) {
            return Center(child: CupertinoActivityIndicator());
          } else {
            if (!isLoaded!) {
              isLoaded = true;
              WidgetsBinding.instance?.addPostFrameCallback(_getTotalHeight);
            }
          }

          return CustomScrollView(
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
                      background: ProfileHeaderTile(
                        playerName:
                            '${result.data!["userProfiles"]["firstName"]} ${result.data!["userProfiles"]["lastName"].toString()}',
                        playerAge: result.data!["userProfiles"]["age"],
                        playerImg: 'assets/Ellipse 2.png',
                        playerLocation: result.data!["userProfiles"]["city"]
                                .toString() +
                            ", " +
                            result.data!["userProfiles"]["state"].toString(),
                        stackKey: _stackKey,
                        btnKey: _btnKey,
                        imgLocationKey: _imgLocationKey,
                        playerNameKey: _playerNameKey,
                        profileImgKey: _profileImgKey,
                      ),
                      centerTitle: true,
                      // title: size.height / 2 <= constraints.scrollOffset ? Text('Participating Players') : SizedBox(),
                      title: height <= scrollPosition
                          ? Text(
                              '${result.data!["userProfiles"]["firstName"]} ${result.data!["userProfiles"]["lastName"].toString()}')
                          : SizedBox(),
                    ),
                    expandedHeight: _dynamicTotalHeight,
                    // backgroundColor: Colors.white,
                  );
                },
              ),

              // SliverPersistentHeader(delegate: Delegate(aBlack, 'Hello'),pinned: true,),
              SliverPersistentHeader(
                pinned: true,
                floating: false,
                delegate: Delegate(
                  child: Container(
                    color: aWhite,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        StatsTile(
                          title: "Matches",
                          subtitle: result.data!["userProfiles"]["matchesCount"]
                              .toString(),
                        ),
                        StatsTile(
                            title: "Victories",
                            subtitle: result.data!["userProfiles"]["wonCount"]
                                .toString()),
                        StatsTile(
                          title: "Defeats",
                          subtitle: result.data!["userProfiles"]["lostCount"]
                              .toString(),
                        ),
                        StatsTile(
                          title: "Rating",
                          subtitle: "4.5",
                        )
                      ],
                    ),
                  ),
                ),
              ),

              const SliverToBoxAdapter(
                child: Divider(
                  height: 10,
                  endIndent: 10.0,
                  indent: 10.0,
                  thickness: 0.5,
                  color: aLightGray,
                ),
              ),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Recent Matches",
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Color(0xff263238)),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.pushNamed(
                                context, RecentMatchesPage.path);
                          },
                          child: Text("See All"))
                    ],
                  ),
                ),
              ),

              SliverToBoxAdapter(
                child: Query(
                  builder: (result, {fetchMore, refetch}) {
                    if (result.hasException) {
                      return Text(result.exception.toString());
                    }

                    if (result.isLoading) {
                      return Text('Loading');
                    }
                    dataRecent = result.data;
                    return Column(
                      children: [
                        for (int i = 0; i < 2; i++)
                          HeadToHeadDetailsListTile(
                            title: 'CBS Arena',
                            date: 'Dec 31st 2021',
                            onProfileClick: () {},
                            onTileClick: () {},
                            player1matchScore: [5, 4, 3, 2, 1],
                            player1Img: 'assets/Ellipse 5.png',
                            player1Name: result.data!["allMatches"]["edges"][i]
                                ["node"]["playerOne"]["firstName"],
                            player1Active: true,
                            player2matchScore: [1, 2, 3, 4, 5],
                            player2Img: 'assets/Ellipse 2.png',
                            player2Name: result.data!["allMatches"]["edges"][i]
                                ["node"]["playerTwo"]["firstName"],
                            player2Active: false,
                          )
                        // Padding(
                        //   padding: const EdgeInsets.only(
                        //       left: 16.0, right: 16, top: 10),
                        //   child: MatchCard(
                        //     scores: result.data!["allMatches"]
                        //     ["edges"][i]["node"]["matchSet"]
                        //     ["edges"],
                        //     playerOneName: result.data!["allMatches"]
                        //     ["edges"][i]["node"]["playerOne"]
                        //     ["firstName"],
                        //     playerTwoName: result.data!["allMatches"]
                        //     ["edges"][i]["node"]["playerTwo"]
                        //     ["firstName"],
                        //   ),
                        // ),
                      ],
                    );
                  },
                  options: QueryOptions(
                    document: gql(Constants.matchesQuery),
                    // this is the query string you just created
                    variables: {
                      'userSearch': "3a766ad6-3642-46dc-b31f-73e08f2df0df",
                    },
                    pollInterval: Duration(seconds: 100),
                  ),
                ),
              ),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Head to Heads",
                        style: GoogleFonts.poppins(
                            fontSize: 16, color: Color(0xff263238)),
                      ),
                      GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (_) => HeadtoHeadpage()));
                          },
                          child: Text("See All"))
                    ],
                  ),
                ),
              ),

              for (int i = 0; i <= 5; i++)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: HeadToHeadListTile(
                        title: 'CBS Arena',
                        date: 'Dec 31st 2021',
                        profileImg: 'assets/Ellipse 5.png',
                        userName: 'Novak J.',
                        rating: '4.5'),
                  ),
                ),
            ],
          );
        },
      ),
    );
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  final Widget? child;

  Delegate({this.child});

  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child!;
  }

  @override
  double get maxExtent => 90;

  @override
  double get minExtent => 80;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
