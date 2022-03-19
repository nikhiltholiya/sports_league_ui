import 'package:flutter/material.dart';

import '../Pages/base_activity.dart';
import '../Pages/submit_score_details.dart';
import '../components/edit_text_form_field.dart';
import '../components/submit_score_list_tile.dart';
import '../utils/Constants.dart' as Constants;
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

class _SubmitScoreListState extends State<SubmitScoreList> {
  ScrollController? _scrollController;

  String fetchAllLeagueApplicants = Constants.allLeagueApplications;

  FocusNode? _chatNode;
  TextEditingController? _textController = TextEditingController(text: '');

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
    return BaseWidget(
      appbarHeight: kToolbarHeight,
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
            SliverPersistentHeader(
              delegate: SilverDelegates(
                child: Container(
                  width: double.infinity,
                  color: aWhite,
                  child: EditTextFormField(
                    onTap: () {},
                    focusNode: _chatNode,
                    hint: searchPlayer,
                    onTextChange: (dynamic value) {
                      // setState(() {
                      // _textController?.text = value;
                      // _textController?.selection = TextSelection.fromPosition(
                      //     TextPosition(offset: _textController!.text.length));
                      // });
                    },
                    prefixIcon: Icon(
                      Icons.search,
                      color: aLightGray,
                    ),
                    suffixIcon: SizedBox(),
                    textController: _textController,
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
                  userName: 'John S.',
                  profileImg: 'assets/Ellipse 1.png',
                  rating: '4.5',
                  playerLocation: 'Los Angeles, CA',
                  onTileClick: () {
                    Navigator.pushNamed(context, SubmitScoreDetails.path);
                  },
                  onProfileClick: () {},
                ),
                childCount: 2,
              ),
            )
          ],
        ),
      ),
    );
  }
}
