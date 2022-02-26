import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:tenniston/bean/chat_dto.dart';
import 'package:tenniston/components/chat_tile.dart';

//Created on 20220223
class ChallengesChat extends StatefulWidget {
  final String path = 'challengesChat';

  const ChallengesChat({Key? key}) : super(key: key);

  @override
  _ChallengesChatState createState() => _ChallengesChatState();
}

class _ChallengesChatState extends State<ChallengesChat> {
  List<Chat>? chatList = [
    Chat(
        message: 'Are you up for a challenge?',
        dateTime: '3:27 PM',
        isMe: false),
    Chat(message: 'Yes, count me in', dateTime: '3:28 PM', isMe: true),
    Chat(message: 'No, I am not available', dateTime: '3:28 PM', isMe: true),
    Chat(message: 'Yes, count me in', dateTime: '3:28 PM', isMe: false)
  ];

  TextEditingController? _textController = TextEditingController(text: '');
  ScrollController? _scrollController;
  var _headerContentSize = GlobalKey();
  var _headerBackSize = GlobalKey();
  double? _totalHeight;
  bool? _visibility = true;
  bool? _isSilverCollapsed = false;
  FocusNode? _chatNode;


  // var scrollPosition;

  double? _getHeight(GlobalKey? gKey) {
    try {
      final RenderBox? rBox =
          gKey?.currentContext?.findRenderObject() as RenderBox;
      return rBox?.size.height;
    } catch (e) {}
  }

  void _getTotalHeight(_) {
    _totalHeight = 0;
    double? content = _getHeight(_headerContentSize);
    double? box = _getHeight(_headerBackSize);

    setState(() {
      _visibility = false;
    });

    _totalHeight = (content ?? 0.0) + (box ?? 0.0) + 56;

  }

  Widget headerTile() {
    return Card(
      margin: EdgeInsets.symmetric(horizontal: _isSilverCollapsed!? 0.0:10, vertical: _isSilverCollapsed!? 0.0: 10),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12.0),
      ),
      elevation: _isSilverCollapsed! ? 0.0 :3.0,
      child: Padding(
        padding: EdgeInsets.all(5),
        child: Wrap(
          direction: Axis.horizontal,
          crossAxisAlignment: WrapCrossAlignment.start,
          alignment: WrapAlignment.start,
          children: [
            Row(
              children: [
                SizedBox(
                  width: _isSilverCollapsed!? 35.0: 0.0,
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: CircleAvatar(
                    child: Image.asset('assets/Ellipse 1.png'),
                    backgroundColor: Color(0x808C8C8C),
                    radius: 20,
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'John S.',
                        maxLines: 1,
                        style: TextStyle(
                          fontSize: _isSilverCollapsed! ? 15:18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      if(_isSilverCollapsed!)
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(0.0),
                            child: Icon(Icons.location_pin,
                                size: 10.0, color: Color(0xFF3E4982)),
                            // child: Image.asset('assets/Vector (1).png',color: Color(0xFF3E4982),fit: BoxFit.none),
                          ),
                          Expanded(
                            flex: 1,
                            child: Text(
                              'Gabriel Parl, Portland, OR',
                              style: TextStyle(
                                  color: Color(0XFF808080),
                                  fontWeight: FontWeight.normal,
                                  fontSize: 8,),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              softWrap: true,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: ShapeDecoration(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                          side: BorderSide.none),
                      color: Color(0XFF47BA79)),
                  padding: EdgeInsets.all(5.0),
                  child: Text(
                    '4.5',
                    maxLines: 1,
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),

            if(!_isSilverCollapsed!)
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.all( 5.0),
                  child: Icon(Icons.location_pin,
                      size: 16.0, color: Color(0xFF3E4982)),
                  // child: Image.asset('assets/Vector (1).png',color: Color(0xFF3E4982),fit: BoxFit.none),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    'Gabriel Parl, Portland, OR',
                    style: TextStyle(
                        color: Color(0XFF808080),
                        fontWeight: FontWeight.normal,
                        fontSize: 12),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }


  void _getListItems() async{
    SchedulerBinding.instance?.addPostFrameCallback((_) {
      // _scrollController!
      //     .jumpTo(_scrollController!.position.maxScrollExtent);
      _scrollController!.animateTo(
        _scrollController!.position.maxScrollExtent,
        duration: const Duration(milliseconds: 100),
        curve: Curves.ease,
      );
    });

    setState((){
      try{
        if (_scrollController!.offset > 100 /*&&
          !_scrollController!.position.outOfRange*/) {
          _isSilverCollapsed = true;
        } else {
          _isSilverCollapsed = false;
        }

      }catch(e){}
    });
  }

  void setToolbarTitle() {

    _scrollController!.addListener(() {
      // collapsing
      if (_scrollController!.offset > 100 /*&&
          !_scrollController!.position.outOfRange*/) {
        _isSilverCollapsed = true;
      } else {
        _isSilverCollapsed = false;
      }
      setState(() {

      });
    });

  }

// Widget headerTile(){
//     return Card(
//       margin: EdgeInsets.symmetric(
//           horizontal: 15, vertical: 30),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12.0),
//       ),
//       elevation: 2.0,
//       child: Padding(
//         padding: EdgeInsets.all(10),
//         child: Wrap(
//           direction: Axis.horizontal,
//           crossAxisAlignment:
//           WrapCrossAlignment.start,
//           alignment: WrapAlignment.start,
//           children: [
//             Row(
//               children: [
//                 Padding(
//                   padding:
//                   const EdgeInsets.all(8.0),
//                   child: CircleAvatar(
//                     child: Image.asset(
//                         'assets/Ellipse 1.png'),
//                     backgroundColor:
//                     Color(0x808C8C8C),
//                     radius: 30,
//                   ),
//                 ),
//                 Expanded(
//                   flex: 1,
//                   child: Text(
//                     'John Snow',
//                     maxLines: 1,
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ),
//                 Container(
//                   decoration: ShapeDecoration(
//                       shape:
//                       RoundedRectangleBorder(
//                           borderRadius:
//                           BorderRadius
//                               .circular(
//                               12.0),
//                           side: BorderSide
//                               .none),
//                       color: Color(0XFF47BA79)),
//                   padding: EdgeInsets.all(5.0),
//                   child: Text(
//                     '4.5',
//                     maxLines: 1,
//                     style: TextStyle(
//                         fontSize: 20,
//                         fontWeight:
//                         FontWeight.bold,
//                         color: Colors.white),
//                   ),
//                 ),
//               ],
//             ),
//             Row(
//               crossAxisAlignment:
//               CrossAxisAlignment.center,
//               mainAxisAlignment:
//               MainAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding:
//                   const EdgeInsets.all(5.0),
//                   child: Icon(Icons.location_pin,
//                       size: 16.0,
//                       color: Color(0xFF3E4982)),
//                   // child: Image.asset('assets/Vector (1).png',color: Color(0xFF3E4982),fit: BoxFit.none),
//                 ),
//                 Text(
//                   'Gabriel Parl, Portland, OR',
//                   style: TextStyle(
//                       color: Color(0XFF808080),
//                       fontWeight:
//                       FontWeight.normal),
//                   maxLines: 1,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }

  @override
  void initState() {
    _scrollController = ScrollController();
    _chatNode = FocusNode();
    WidgetsBinding.instance?.addPostFrameCallback(_getTotalHeight);

    _getListItems();
    // setToolbarTitle();
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
    setToolbarTitle();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: SizedBox(
          child: headerTile(),
          key: _headerContentSize,
        ), // This is used for getting dynamic height of contents!!!
        toolbarHeight: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: /*GestureDetector(
          onTap: () {
            FocusScope.of(context).requestFocus(FocusNode());
          },
          child: */ Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: CustomScrollView(
                    controller: _scrollController,
                    // keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
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
                        titleTextStyle: TextStyle(fontSize: 10,color: _isSilverCollapsed! ?Colors.black : Colors.white ),
                        iconTheme: IconThemeData(color: _isSilverCollapsed! ? Colors.black : Colors.white ),
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
                          titlePadding: EdgeInsets.zero,
                          centerTitle: true,
                          background: Stack(
                            key: _headerBackSize,
                            children: [
                              Container(
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
                              )
                            ],
                          ),

                          title: headerTile(),
                        ),
                        expandedHeight: _totalHeight,
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
              Container(
                width: double.infinity,
                height: 50.0,
                alignment: Alignment.center,
                margin: EdgeInsets.all(10),
                child: TextFormField(
                  focusNode: _chatNode,
                  controller: _textController,
                  onTap: () {

                    // _getListItems();

                  },
                  onChanged: (value) {
                    setState(() {
                      _textController?.text = value;
                      _textController?.selection = TextSelection.fromPosition(
                          TextPosition(offset: _textController!.text.length));
                    });
                  },
                  textAlign: TextAlign.justify,
                  decoration: InputDecoration(
                    hintText: 'Enter Message',
                    focusColor: Colors.black,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.0),
                      borderSide: const BorderSide(
                        color: Color(0XFF808080),
                        width: 1.0,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100.0),
                      borderSide: const BorderSide(
                        color: Color(0XFF808080),
                        width: 1.0,
                      ),
                    ),

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
                  ),
                ),
              ),
            ],
        ),
      ),
    );
  }
}

class TextEditBox extends StatefulWidget {
  final String? label;
  final String? hintText;

  // final String? initText;
  final String? suffixText;
  final Function(String)? onChange;
  final FormFieldValidator<String>? validator;
  final bool? isEnable;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final bool? isPercentage;

  const TextEditBox(
      {Key? key,
      this.label,
      this.hintText = '',
      // this.initText = '',
      this.suffixText = '',
      this.onChange,
      this.validator,
      this.isEnable = true,
      this.isPercentage = false,
      this.keyboardType =
          const TextInputType.numberWithOptions(decimal: true, signed: false),
      this.textInputAction = TextInputAction.done,
      this.controller})
      : super(key: key);

  @override
  _TextEditBoxState createState() => _TextEditBoxState();
}

class _TextEditBoxState extends State<TextEditBox> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextFormField(
        autovalidateMode: AutovalidateMode.disabled,
        maxLines: 1,
        maxLength: 10,
        minLines: 1,
        controller: widget.controller,
        style: const TextStyle(color: Colors.white, fontSize: 18),
        decoration: InputDecoration(
            suffixText: widget.suffixText!,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5.0),
              borderSide: const BorderSide(
                color: Colors.black,
                width: 1.0,
              ),
            ),
            labelText: widget.label!,
            hintText: widget.hintText!,
            counterText: ''),
        autofocus: false,
        onChanged: (value) => widget.onChange!(value),
        // initialValue: widget.initText!,
        textInputAction: widget.textInputAction,
        keyboardType: widget.keyboardType!,
        validator: widget.validator!,
        showCursor: true,
        enabled: widget.isEnable!,
        cursorColor: Colors.black,
        autocorrect: false,
      ),
    );
  }
}
