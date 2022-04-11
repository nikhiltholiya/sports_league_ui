import 'dart:io';

import 'package:flutter/material.dart';

//Created on 20220303
class BaseWidget extends StatefulWidget {
  final Widget? body;
  final Widget? appbar;
  final double? appbarHeight;
  final Widget? bottomBar;
  final Widget? drawer;
  final Widget? fab;
  final Function? onBackClick;
  final bool? isLeading;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const BaseWidget(
      {Key? key,
      this.scaffoldKey,
      required this.body,
      required this.appbar,
      this.appbarHeight = 0.0,
      this.bottomBar,
      this.drawer,
      this.fab,
      this.onBackClick,
      this.isLeading = true})
      : super(key: key);

  @override
  _BaseWidgetState createState() => _BaseWidgetState();
}

class _BaseWidgetState extends State<BaseWidget> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      bottom: false,
      maintainBottomViewPadding: true,
      minimum: EdgeInsets.only(bottom: 2.0),
      child: Scaffold(
        key: widget.key,
        body: SafeArea(top: true, right: true, left: true, bottom: true, child: widget.body!),
        appBar: AppBar(
          leading: IconButton(
              icon: Icon(Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back),
              onPressed: () => widget.onBackClick!()),
          elevation: 0.0,
          centerTitle: true,
          toolbarHeight: widget.appbarHeight ?? 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          title: widget.appbar!,
        ),
        floatingActionButton: widget.fab,
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: widget.bottomBar,
        backgroundColor: Colors.white,
        drawer: widget.drawer,
      ),
    );
    // return SafeArea(top: true, right: true, left: true, bottom: true, child: Scaffold(
    //   key: widget.key,
    //   body: SafeArea(top: true, right: true, left: true, bottom: true, child: widget.body!),
    //   appBar: AppBar(
    //     elevation: 0.0,
    //     centerTitle: true,
    //     toolbarHeight: widget.appbarHeight ?? 0.0,
    //     iconTheme: IconThemeData(color: Colors.black),
    //     title: widget.appbar!,
    //   ),
    //   floatingActionButton: widget.fab,
    //   floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    //   bottomNavigationBar: widget.bottomBar,
    //   backgroundColor: Colors.white,
    //   drawer: widget.drawer,
    // ));
  }
}
