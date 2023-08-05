import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:form_field_validator/form_field_validator.dart';
import 'package:graphql_flutter/graphql_flutter.dart';
import 'package:provider/provider.dart';

import '../Pages/base_activity.dart';
import '../Pages/league_details.dart';
import '../Pages/no_internet_page.dart';
import '../bean/all_leagues/all_leagues.dart';
import '../bean/cities_query/cities_query.dart';
import '../components/drop_down_view.dart';
import '../components/edit_text_form_field.dart';
import '../components/my_league_list_tile.dart';
import '../components/no_data_list_tile.dart';
import '../providers/internet_provider.dart';
import '../providers/league_id_provider.dart';
import '../utils/Constants.dart';
import '../utils/Internet.dart';
import '../utils/app_colors.dart';
import '../utils/app_labels.dart';
import '../utils/common.dart';
import '../utils/shared_preferences_utils.dart';

//Created on 20220312
class MyLeagueList extends StatefulWidget {
  static const String path = 'myLeague';

  const MyLeagueList({Key? key}) : super(key: key);

  @override
  _MyLeagueListState createState() => _MyLeagueListState();
}

class _MyLeagueListState extends State<MyLeagueList> with isInternetConnection {
  ScrollController? _scrollController;

  late AllLeaguesData? allLeaguesApps;
  late List<LeagueEdges>? applicantsList;
  late String? selectedCity = '';
  late String? selectedState = '';

  Map<String, dynamic> param = {};
  Map<String, dynamic> paramType = {};
  Map<String, dynamic> passVariable = {};

  late String? dropDownValue = null;
  bool? isParams = false;

  var streamController;
  int completed = 0;

  //20230805 Added this for search cities with typing
  String? Search = '';
  var _citySearchStream = StreamController<List<Edges>>();
  late CitiesQueryData _citiesQueryData;
  Map<String, dynamic> paramForSearchCity = {};
  Map<String, dynamic> paramTypeForSearchCity = {};
  final TextEditingController _cityTextController = TextEditingController();
  late List<String>? cityList = [];
  FocusNode? cityFocusNode;

  @override
  void initState() {
    _scrollController = ScrollController();

    //20230610 Adding New Param and Query.
    param = {'\$orderby': 'String', '\$league_State': 'String', '\$league_City': 'String'};
    paramType = {'orderBy': '\$orderby', 'state': '\$league_State', 'city': '\$league_City'};

    if (SharedPreferencesUtils.getLastCity != null) {
      dropDownValue = SharedPreferencesUtils.getLastCity;
      final split = SharedPreferencesUtils.getLastCity?.split(',');
      selectedCity = split?[0].toString().trim();
      selectedState = split?[1].toString().trim();

      passVariable = {
        'orderBy': '-createdAt',
        'league_State': selectedState ?? '',
        'league_City': selectedCity ?? '',
      };
    } else {
      passVariable = {
        'orderBy': '-createdAt',
        'league_State': '',
        'league_City': '',
      };
    }
    streamController = StreamController<Map<String, dynamic>>();

    //20230805 Added for search city Query
    applicantsList = [];
    cityFocusNode = FocusNode();
    paramForSearchCity = {
      '\$cityNameSearch': 'String!',
    };
    paramTypeForSearchCity = {
      'cityNameSearch': '\$cityNameSearch',
    };
    _citySearchStream.sink.add([]);
    _cityTextController.text = '';

    if (SharedPreferencesUtils.getLastCity != null) {
      final split = SharedPreferencesUtils.getLastCity!.split(',');
      selectedCity = split[0].toString().trim();
      selectedState = split[1].toString().trim();

      _cityTextController.text = '${selectedCity!}, ${selectedState}';
      cityFocusNode!.unfocus();
      _citySearchStream.sink.add([]);

      passVariable = {
        'league_State': selectedState ?? '',
        'league_City': selectedCity ?? '',
        'orderBy': '-createdAt',
      };
    }

    streamController = StreamController<Map<String, dynamic>>();
    streamController.sink.add(passVariable);
    // });
    initInternet(context);
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
            appbar: Text(
              myLeagues,
              style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            ),
            onBackClick: () => Navigator.pop(context),
            body: Container(
              color: aWhite,
              child: CustomScrollView(
                controller: _scrollController,
                physics: const BouncingScrollPhysics(),
                shrinkWrap: true,
                slivers: <Widget>[
                  SliverPersistentHeader(
                    delegate: SilverDelegates(
                      child: Container(
                        width: double.infinity,
                        color: aWhite,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          //20230805 Added new view for city searchable and states list from selected city.
                          child: EditTextFormField(
                            onTap: () {
                              _cityTextController.selection = TextSelection.fromPosition(
                                TextPosition(offset: _cityTextController.text.length),
                              );
                            },
                            textController: _cityTextController,
                            validator: RequiredValidator(errorText: errCity),
                            inputFormatter: [FilteringTextInputFormatter(RegExp(r'[a-zA-Z ,]'), allow: true)],
                            hint: selectCity,
                            focusNode: cityFocusNode,
                            onTextChange: (value) async {
                              selectedCity = value;
                              Search = value;
                              await executeForCities(Search!);
                            },
                          ),
                        ),
                      ),
                    ),
                    floating: false,
                    pinned: true,
                  ),
                  StreamBuilder<List<Edges>>(
                      stream: _citySearchStream.stream,
                      builder: (context, snapshot) {
                        cityList = [];
                        if (snapshot.hasData) {
                          for (var cityItem in snapshot.data!) {
                            cityList!.add('${cityItem.node!.name!}, ${cityItem.node!.state!}');
                          }

                          return cityList!.length > 0
                              ? SliverToBoxAdapter(
                                  child: Padding(
                                    padding: const EdgeInsets.symmetric(horizontal: 10),
                                    child: ListView.separated(
                                      itemBuilder: (context, index) => GestureDetector(
                                        onTap: () {
                                          final split = cityList![index].split(',');
                                          selectedCity = split[0].toString().trim();
                                          selectedState = split[1].toString().trim();

                                          _cityTextController.text = '${selectedCity!}, ${selectedState}';
                                          cityFocusNode!.unfocus();
                                          _citySearchStream.sink.add([]);

                                          passVariable = {
                                            'league_State': selectedState ?? '',
                                            'league_City': selectedCity ?? '',
                                            'orderBy': '-createdAt',
                                          };

                                          SharedPreferencesUtils.setLastCity(cityList![index]); //20230608

                                          streamController.sink.add(passVariable);
                                        },
                                        child: Container(
                                          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
                                          child: Text(
                                            '${cityList![index]}',
                                            style: TextStyle(
                                              color: aGray,
                                            ),
                                          ),
                                          decoration: BoxDecoration(color: aWhite),
                                        ),
                                      ),
                                      separatorBuilder: (context, index) => Divider(height: 1),
                                      itemCount: cityList!.length,
                                      shrinkWrap: true,
                                      physics: const BouncingScrollPhysics(),
                                    ),
                                  ),
                                )
                              : SliverToBoxAdapter(child: SizedBox());
                        }
                        return SliverToBoxAdapter(child: SizedBox());
                      }),
                  StreamBuilder<Map<String, dynamic>>(
                    stream: streamController.stream,
                    builder: (context, streamSnapshot) {
                      if (streamSnapshot.hasError) return SliverToBoxAdapter(child: Text('Error in Stream'));

                      if (streamSnapshot.hasData) {
                        return Query(
                          options: QueryOptions(
                            document: gql(allLeaguesQuery(param, paramType)),
                            variables: passVariable,
                            pollInterval: Duration(seconds: 100),
                          ),
                          builder: (result, {fetchMore, refetch}) {
                            if (result.hasException) {
                              return SliverToBoxAdapter(child: Text(result.exception.toString()));
                            }

                            if (result.isLoading && result.data == null) {
                              return SliverToBoxAdapter(child: const Center(child: CupertinoActivityIndicator()));
                            }

                            allLeaguesApps = AllLeaguesData.fromJson(result.data!);
                            applicantsList = [];
                            applicantsList!.addAll(allLeaguesApps!.allLeagues!.edges!);

                            return (applicantsList!.isEmpty)
                                ? SliverToBoxAdapter(
                                    child: NoDataListTile(
                                      onTileClick: () {},
                                      noCaption: myLeaguesNoData,
                                      noMsg: myLeaguesNoDataMsg,
                                    ),
                                  )
                                : SliverList(
                                    delegate: SliverChildBuilderDelegate(
                                      (context, index) => MyLeagueListTile(
                                        leagueStatus: applicantsList![index].node!.status,
                                        profileImg: 'assets/winner_cup.png',
                                        leagueLocation:
                                            '${applicantsList![index].node!.city}, ${applicantsList![index].node!.state}, ${applicantsList![index].node!.country}',
                                        leagueDate: convertDate(applicantsList?[index].node?.startDate,
                                            applicantsList?[index].node?.endDate),
                                        leagueTitle: applicantsList![index].node!.name,
                                        onTileClick: () {
                                          Provider.of<LeagueIdProvider>(context, listen: false)
                                              .setLeagueId(applicantsList![index].node!.leagueId);
                                          Navigator.pushNamed(
                                            context,
                                            LeagueDetails.path, /*arguments: applicantsList![index].node*/
                                          );
                                        },
                                        onProfileClick: () {},
                                      ),
                                      //     MyLeagueListTile(
                                      //   leagueStatus: applicantsList![index].node!.league!.status,
                                      //   profileImg: 'assets/winner_cup.png',
                                      //   leagueLocation:
                                      //       '${applicantsList![index].node!.league!.city}, ${applicantsList![index].node!.league!.state}, ${applicantsList![index].node!.league!.country}',
                                      //   leagueDate: convertDate(applicantsList?[index].node?.league?.startDate,
                                      //       applicantsList?[index].node?.league?.endDate),
                                      //   leagueTitle: applicantsList![index].node!.league!.name,
                                      //   onTileClick: () {
                                      //     Provider.of<LeagueIdProvider>(context, listen: false)
                                      //         .setLeagueId(applicantsList![index].node!.league!.leagueId);
                                      //     Navigator.pushNamed(
                                      //       context,
                                      //       LeagueDetails.path, /*arguments: applicantsList![index].node*/
                                      //     );
                                      //   },
                                      //   onProfileClick: () {},
                                      // ),
                                      childCount: applicantsList?.length,
                                    ),
                                  );
                          },
                        );
                      }
                      return SliverToBoxAdapter(child: Center(child: CupertinoActivityIndicator()));
                    },
                  ),
                ],
              ),
            ),
          );
        } else {
          streamController.close();
          streamController = StreamController<Map<String, dynamic>>();
          streamController.sink.add(passVariable);
          return NoInternetPage(
            onClick: () {},
          );
        }
      },
    );
  }

  @override
  void dispose() {
    streamController.close();
    _scrollController!.dispose();
    disposeInternet();
    super.dispose();
  }

  //20230805 Add city with searchable and states as per city selected
  Future<bool?> executeForCities(String Search) async {
    final QueryOptions getCities = QueryOptions(
      document: gql(cities(paramForSearchCity, paramTypeForSearchCity)),
      variables: {'cityNameSearch': Search},
      fetchPolicy: FetchPolicy.networkOnly,
      pollInterval: Duration(seconds: 100),
    );

    final client = GraphQLProvider.of(context).value;
    final QueryResult result = await client.query(getCities);
    _citySearchStream.sink.add([]);

    if (result.hasException) {
      print(result.exception.toString());
      return false;
    } else if (result.isLoading) {
      print('Loading..');
      return false;
    } else {
      try {
        print('$result');
        if (Search.trim().length > 0) {
          _citiesQueryData = CitiesQueryData.fromJson(result.data!);
          _citySearchStream.sink.add(_citiesQueryData.cities!.edges!);
        }
        return true;
      } catch (e) {
        debugPrint('Exception -- $e');
        return false;
      }
    }
  }
}
