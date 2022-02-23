import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
  late List<Chat> chatList = [
    Chat(
        message: 'Are you up for a challenge?',
        dateTime: '3:27 PM',
        isMe: false),
    Chat(message: 'Yes, count me in', dateTime: '3:28 PM', isMe: true),
    Chat(message: 'No, I am not available', dateTime: '3:28 PM', isMe: true)
  ];

  TextEditingController? _textController = TextEditingController(text: '');
  ScrollController _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double? height = (size.height / 2) - 56;
    var scrollPosition;

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
                            background: Stack(
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
                                ),
                                Align(
                                  heightFactor: height,
                                  alignment: Alignment.bottomCenter,
                                  child: Card(
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 15, vertical: 30),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    elevation: 2.0,
                                    child: Padding(
                                      padding: EdgeInsets.all(10),
                                      child: Wrap(
                                        direction: Axis.horizontal,
                                        crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                        alignment: WrapAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Padding(
                                                padding:
                                                const EdgeInsets.all(8.0),
                                                child: CircleAvatar(
                                                  child: Image.asset(
                                                      'assets/Ellipse 1.png'),
                                                  backgroundColor:
                                                  Color(0x808C8C8C),
                                                  radius: 30,
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Text(
                                                  'John Snow',
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                              ),
                                              Container(
                                                decoration: ShapeDecoration(
                                                    shape:
                                                    RoundedRectangleBorder(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(
                                                            12.0),
                                                        side: BorderSide
                                                            .none),
                                                    color: Color(0XFF47BA79)),
                                                padding: EdgeInsets.all(5.0),
                                                child: Text(
                                                  '4.5',
                                                  maxLines: 1,
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                      FontWeight.bold,
                                                      color: Colors.white),
                                                ),
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                            MainAxisAlignment.start,
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
                                                'Gabriel Parl, Portland, OR',
                                                style: TextStyle(
                                                    color: Color(0XFF808080),
                                                    fontWeight:
                                                    FontWeight.normal),
                                                maxLines: 1,
                                              ),
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding:
                                                const EdgeInsets.all(5.0),
                                                child: Icon(
                                                    Icons.calendar_today,
                                                    size: 16.0,
                                                    color: Color(0xFF3E4982)),
                                                // child: Image.asset('assets/Vector (2).png',color: Color(0xFF3E4982),fit: BoxFit.fill,),
                                              ),
                                              Text(
                                                'Sat 21st Jan 2022',
                                                style: TextStyle(
                                                    color: Color(0XFF808080),
                                                    fontWeight:
                                                    FontWeight.normal),
                                                maxLines: 1,
                                              ),
                                              Padding(
                                                padding:
                                                const EdgeInsets.all(5.0),
                                                child: Icon(Icons.circle,
                                                    size: 5.0,
                                                    color: Color(0XFF808080)),
                                                // child: Image.asset('assets/Vector (1).png',color: Color(0xFF3E4982),fit: BoxFit.none),
                                              ),
                                              Text(
                                                '08:00 -10:00',
                                                style: TextStyle(
                                                    color: Color(0XFF808080),
                                                    fontWeight:
                                                    FontWeight.normal),
                                                maxLines: 1,
                                              )
                                            ],
                                          ),
                                          Row(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding:
                                                const EdgeInsets.all(5.0),
                                                child: Icon(Icons.circle,
                                                    size: 16.0,
                                                    color: Color(0xFF3E4982)),
                                                // child: Image.asset('assets/Vector (2).png',color: Color(0xFF3E4982),fit: BoxFit.fill,),
                                              ),
                                              Text(
                                                'Double',
                                                style: TextStyle(
                                                    color: Color(0XFF808080),
                                                    fontWeight:
                                                    FontWeight.normal),
                                                maxLines: 1,
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            centerTitle: true,
                            // title: size.height / 2 <= constraints.scrollOffset ? Text('Participating Players') : SizedBox(),
                            title: height <= scrollPosition
                                ? Text('John Snow')
                                : SizedBox(),
                          ),
                          expandedHeight: height,
                          backgroundColor: Colors.white,
                        );
                      },
                    ),

                    SliverToBoxAdapter(
                      child: Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text('Participating Players'),
                      ),
                    ),

                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                            (context, index) => ChattingListTile(
                          key: ValueKey(index),
                          isMe: chatList[index].isMe,
                          msg: chatList[index].message,
                          time: chatList[index].dateTime,
                        ),
                        childCount: chatList.length,
                      ), //SliverChildBuildDelegate
                    ) //SliverList
                  ], //<Widget>[]
                ),
                flex: 1),
            Container(
              color: Colors.transparent,
              width: double.infinity,
              height: 56.0,
              padding: EdgeInsets.all(5),
              child: TextFormField(
                controller: _textController,
                onTap: (){
                  Timer(
                      Duration(milliseconds: 300),
                          () => _scrollController
                          .jumpTo(_scrollController.position.maxScrollExtent));

                },
                onChanged: (value) {
                  setState(() {
                    _textController?.text = value;
                    _textController?.selection = TextSelection.fromPosition(TextPosition(offset: _textController!.text.length));
                  });
                },
                decoration: InputDecoration(
                  focusColor: Colors.black,

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),

                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 1.0,
                    ),
                  ),
                  suffixIcon: _textController!.text.trim().isNotEmpty ? IconButton(
                    onPressed: (){
                      if (_textController!.text.trim().isNotEmpty) {
                        setState(() {
                          chatList.add(
                            Chat(message: _textController?.text,
                                dateTime: '3:27 PM',
                                isMe: true),);
                        });
                        _textController!.text = '';
                        Timer(
                            Duration(milliseconds: 300),
                                () => _scrollController
                                .jumpTo(_scrollController.position.maxScrollExtent));
                      }
                    },
                    icon: Icon(
                      Icons.send,
                      color: Colors.black,
                    ),
                  ) : SizedBox(),),
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
