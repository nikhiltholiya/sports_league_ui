import 'package:flutter/material.dart';

import '../Pages/base_activity.dart';
import '../components/app_chips.dart';
import '../components/drop_down_view.dart';
import '../components/elevated_buttons.dart';
import '../components/set_details_list_tile.dart';
import '../components/submit_score_details_header_tile.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';

//Created on 20220315
class SubmitScoreDetails extends StatefulWidget {
  static const String path = 'submitScoreDetails';

  const SubmitScoreDetails({Key? key}) : super(key: key);

  @override
  _SubmitScoreDetailsState createState() => _SubmitScoreDetailsState();
}

class _SubmitScoreDetailsState extends State<SubmitScoreDetails> {
  ScrollController? _scrollController;
  GlobalKey? _stackKey = GlobalKey();
  GlobalKey? _userKey = GlobalKey();

  double? _dynamicTotalHeight = 0;
  List<double>? _childWidgetHeights = [];
  var scrollPosition;
  int setListSize = 3;

  FocusNode? _chatNode;
  TextEditingController? _textController = TextEditingController(text: '');
  late String? dropDownValue = null;

  double _getWidgetHeight(GlobalKey? key) {
    final RenderBox renderBoxRed =
        key?.currentContext?.findRenderObject() as RenderBox;
    return renderBoxRed.size.height;
  }

  _getTotalHeight(_) {
    _dynamicTotalHeight = 0;
    _childWidgetHeights = [];

    _childWidgetHeights?.add(_getWidgetHeight(_userKey));
    _childWidgetHeights?.add(_getWidgetHeight(_stackKey));

    for (double height in _childWidgetHeights!) {
      _dynamicTotalHeight = height + _dynamicTotalHeight!;
    }
    print(_childWidgetHeights);

    setState(() {
      _dynamicTotalHeight = _dynamicTotalHeight! + kToolbarHeight;
    });

    return _dynamicTotalHeight;
  }

  @override
  void initState() {
    _chatNode = FocusNode();
    _scrollController = ScrollController();
    WidgetsBinding.instance?.addPostFrameCallback(_getTotalHeight);
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
      appbarHeight: 0,
      appbar: Text(
        submitScore,
        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
      ),
      body: Container(
        color: aWhite,
        child: CustomScrollView(
          controller: _scrollController,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          slivers: <Widget>[
            SliverLayoutBuilder(
              builder: (context, constraints) {
                scrollPosition = constraints.scrollOffset + kToolbarHeight;
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
                      color: _dynamicTotalHeight! <= scrollPosition
                          ? Colors.black
                          : Colors.transparent),
                  iconTheme: IconThemeData(
                      color: _dynamicTotalHeight! <= scrollPosition
                          ? Colors.black
                          : Colors.white),
                  flexibleSpace: FlexibleSpaceBar(
                    background: SubmitScoreDetailsHeaderTile(
                      stackKey: _stackKey,
                      userKey: _userKey,
                      player1Img: 'assets/Ellipse 3.png',
                      player1Name: 'Novak J.',
                      player2Img: 'assets/Ellipse 1.png',
                      player2Name: 'John S.',
                    ),
                    centerTitle: true,
                    // title: size.height / 2 <= constraints.scrollOffset ? Text('Participating Players') : SizedBox(),
                    title: _dynamicTotalHeight! <= scrollPosition
                        ? Text(submitScore)
                        : SizedBox(),
                  ),
                  expandedHeight: _dynamicTotalHeight,
                  backgroundColor: Colors.white,
                );
              },
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      gameDetail,
                      style: TextStyle(
                          color: aLightGray,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                    Text(
                      matchWinner,
                      style: TextStyle(color: aLightGray, fontSize: 12.0),
                    ),
                    Wrap(
                      verticalDirection: VerticalDirection.down,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: [
                        AppChip(
                          isChipSelected: true,
                          Label: 'Novak J.',
                          onChipTap: () {},
                        ),
                        AppChip(
                          isChipSelected: false,
                          Label: 'John S.',
                          onChipTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      matchDateTime,
                      style: TextStyle(color: aLightGray, fontSize: 12.0),
                    ),
                    Wrap(
                      verticalDirection: VerticalDirection.down,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: [
                        AppChip(
                          iconData: Icons.calendar_today,
                          isAvatar: true,
                          isChipSelected: false,
                          Label: '31/01/2022',
                          onChipTap: () {},
                        ),
                        AppChip(
                          iconData: Icons.access_time,
                          isAvatar: true,
                          isChipSelected: false,
                          Label: '09:00 PM',
                          onChipTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      matchCourt,
                      style: TextStyle(color: aLightGray, fontSize: 12.0),
                    ),
                    DropDownView(
                      cityList: [
                        'Portland, Oregon',
                        'Los Angeles, California',
                        'Atlanta, Georgia'
                      ],
                      hint: matchCourt,
                      dropdownValue: dropDownValue,
                      onValueChange: (value) {
                        dropDownValue = value;
                        // final split = value.split(',');
                        // selectedCity = split![0].toString().trim();
                        // selectedState = split![1].toString().trim();
                      },
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      gameType,
                      style: TextStyle(color: aLightGray, fontSize: 12.0),
                    ),
                    Wrap(
                      verticalDirection: VerticalDirection.down,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: [
                        AppChip(
                          isAvatar: false,
                          isChipSelected: true,
                          Label: 'Single',
                          onChipTap: () {},
                        ),
                        AppChip(
                          isAvatar: false,
                          isChipSelected: false,
                          Label: 'Double',
                          onChipTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      status,
                      style: TextStyle(color: aLightGray, fontSize: 12.0),
                    ),
                    Wrap(
                      verticalDirection: VerticalDirection.down,
                      crossAxisAlignment: WrapCrossAlignment.start,
                      children: [
                        AppChip(
                          isAvatar: false,
                          isChipSelected: true,
                          Label: 'Completed',
                          onChipTap: () {},
                        ),
                        AppChip(
                          isAvatar: false,
                          isChipSelected: false,
                          Label: 'Drawn',
                          onChipTap: () {},
                        ),
                        AppChip(
                          isAvatar: false,
                          isChipSelected: false,
                          Label: 'Tied',
                          onChipTap: () {},
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      leagueOpt,
                      style: TextStyle(color: aLightGray, fontSize: 12.0),
                    ),
                    DropDownView(
                      cityList: [],
                      hint: leagueOpt,
                      dropdownValue: dropDownValue,
                      onValueChange: (value) {
                        dropDownValue = value;
                        // final split = value.split(',');
                        // selectedCity = split![0].toString().trim();
                        // selectedState = split![1].toString().trim();
                      },
                    ),
                    SizedBox(
                      height: 40,
                    ),
                    Text(
                      setDetails,
                      style: TextStyle(
                          color: aLightGray,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0),
                    ),
                  ],
                ),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) => SetDetailsListTile(),
                  childCount: setListSize,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ElevatedButtons(
                      fontSize: 14,
                      primary: false,
                      onClick: () {
                        setState(() {
                          setListSize = setListSize+1;
                        });
                      },
                      label: addMoreSets,
                    ),
                  ),
                  ElevatedButtons(
                    fontSize: 16,
                    primary: true,
                    onClick: () {},
                    label: submit,
                    width: double.infinity,
                    radius: 0.0,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

////Query For City and State
// Query(
//   options: QueryOptions(
//     document: gql(fetchAllLeagueCities),
//     variables: {
//       'league_State': 'Oregon',
//       'league_City': 'Portland'
//     },
//     pollInterval: Duration(seconds: 100),
//   ),
//   builder: (result, {fetchMore, refetch}) {
//     print('CITY');
//     if (result.hasException) {
//       return Text(result.exception.toString());
//     }
//
//     if (result.isLoading) {
//       return Center(child: CupertinoActivityIndicator());
//     }
//
//     allLeaguesApps = AllLeaguesApps.fromJson(result.data!);
//     for (var data
//         in allLeaguesApps!.allLeagueApplications!.edges!) {
//       print('${data.node!.id} -- ${data.node!.status}');
//     }
//     return Text('${result.data}');
//   },
// ),
