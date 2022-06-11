import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../Pages/no_internet_page.dart';
import '../components/decorated_app_header_tile.dart';
import '../components/edit_text_form_field.dart';
import '../components/upcomming_match_list_tile.dart';
import '../providers/internet_provider.dart';
import '../utils/Internet.dart';
import '../utils/app_colors.dart';

//Edited on 20220308
class SchedulePage extends StatefulWidget {
  const SchedulePage({Key? key}) : super(key: key);

  @override
  _SchedulePageState createState() => _SchedulePageState();
}

class _SchedulePageState extends State<SchedulePage> with isInternetConnection {
  ScrollController? _scrollController;

  bool? isLoaded = false;
  FocusNode? _chatNode;
  TextEditingController? _textController = TextEditingController(text: '');

  @override
  void initState() {
    // _chatNode = FocusNode();
    // _scrollController = ScrollController();
    initInternet(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    var size = MediaQuery.of(context).size;
    double? height = (size.height / 2) - 56;
    var scrollPosition;

    return Consumer<InternetProvider>(
      builder: (context, valueNet, child) {
        print(valueNet.isConnectivity);
        if (valueNet.getConnected != ConnectivityResult.none) {
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
                    titleTextStyle: TextStyle(color: height <= scrollPosition ? Colors.black : Colors.transparent),
                    iconTheme: IconThemeData(color: height <= scrollPosition ? Colors.black : Colors.white),
                    flexibleSpace: FlexibleSpaceBar(
                      background: Stack(children: [
                        DecoratedAppHeader(
                          height: 200.0,
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: SizedBox(),
                                flex: 1,
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                                child: Text(
                                  'Hello',
                                  style: TextStyle(color: aWhite, fontSize: 20.0, fontWeight: FontWeight.bold),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Text(
                                  'Look for someone who is up for \nchallenge',
                                  style: TextStyle(color: aWhite, fontSize: 14.0, fontWeight: FontWeight.normal),
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              EditTextFormField(
                                onTap: () {},
                                focusNode: _chatNode,
                                hint: 'Search Here',
                                onTextChange: (dynamic value) {
                                  // _textController?.text = value;
                                  // _textController?.selection = TextSelection.fromPosition(
                                  //     TextPosition(offset: _textController!.text.length));
                                },
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: aLightGray,
                                ),
                                suffixIcon: SizedBox(),
                                textController: _textController,
                              )
                            ],
                          ),
                        )
                      ]),

                      centerTitle: true,
                      // title: size.height / 2 <= constraints.scrollOffset ? Text('Participating Players') : SizedBox(),
                      title: height <= scrollPosition ? Text('Upcomming Matches') : SizedBox(),
                    ),
                    expandedHeight: 200.0,
                    // backgroundColor: Colors.white,
                  );
                },
              ),

              // SliverPersistentHeader(
              //   pinned: true,
              //   floating: false,
              //   delegate: Delegate(
              //     child: Container(
              //       color: aWhite,
              //       child:EditTextFormField(
              //         onTap: () {},
              //         focusNode: _chatNode,
              //         hint: 'Search Here',
              //         onTextChange: (dynamic value) {},
              //         prefixIcon: Icon(
              //           Icons.search,
              //           color: aLightGray,
              //         ),
              //         suffixIcon: SizedBox(),
              //         textController: _textController,
              //       )
              //     ),
              //   ),
              // ),

              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 16.0, right: 16),
                  child: Text(
                    'Upcomming Match',
                    style: GoogleFonts.poppins(fontSize: 16, color: aLightGray),
                  ),
                ),
              ),

              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => UpcommingMatchListTile(
                    playerName: 'John K.',
                    rivalName: 'Novak J.',
                    location: 'CBS Arena, Los Angeles, CA',
                    profileImg: 'assets/Ellipse 5.png',
                    date: 'Saturday 21st Jan',
                    time: '08:00 - 10:00',
                    gameType: 'Single',
                    matchStatus: 'open',
                    onTileClick: () {},
                    onProfileClick: () {},
                  ),
                  childCount: 10,
                ),
              )
            ],
          );
        } else {
          return NoInternetPage(
            onClick: () {},
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _chatNode?.dispose();
    // _scrollController!.dispose();
    disposeInternet();
    super.dispose();
  }
}

class Delegate extends SliverPersistentHeaderDelegate {
  final Widget? child;

  Delegate({this.child});

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    return child!;
  }

  @override
  double get maxExtent => 60;

  @override
  double get minExtent => 60;

  @override
  bool shouldRebuild(SliverPersistentHeaderDelegate oldDelegate) {
    return true;
  }
}
