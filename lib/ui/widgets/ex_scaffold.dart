import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';

class ExScaffold extends StatelessWidget {
  ExScaffold({
    this.key,
    required this.child,
    this.appBar,
    this.needFollowTheme = true,//
    this.backgroundColor,
    this.bottomInset = false,
    this.isMain = false,
    this.bottomNavigationBar,
    this.drawerWidget,
    this.floatButton,
  }) : super(key: key);

  Widget child;
  ObstructingPreferredSizeWidget? appBar;
  bool isMain;
  bool needFollowTheme;
  bool bottomInset;
  Color? backgroundColor;
  Widget? bottomNavigationBar;
  Widget? drawerWidget;
  Widget? floatButton;
  Key? key;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: key,
      appBar: appBar,
      backgroundColor: backgroundColor==null?AppColors().commonBgColor:backgroundColor,
      body: child,
      bottomNavigationBar: bottomNavigationBar,
      resizeToAvoidBottomInset: bottomInset,
      drawer: drawerWidget,
      drawerEnableOpenDragGesture: false,
      floatingActionButton: floatButton,
    ).onTap(() {
      FocusScope.of(context).unfocus();
    });
    return Platform.isAndroid ? Scaffold(
      key: key,
      appBar: appBar,
      backgroundColor: backgroundColor==null?AppColors().commonBgColor:backgroundColor,
      body: child,
      bottomNavigationBar: bottomNavigationBar,
      resizeToAvoidBottomInset: bottomInset,
      drawer: drawerWidget,
      drawerEnableOpenDragGesture: false,
      floatingActionButton: floatButton,
    ).onTap(() {
      FocusScope.of(context).unfocus();
    }) : CupertinoPageScaffold(
      navigationBar: appBar,
      backgroundColor: backgroundColor==null?AppColors().commonBgColor:backgroundColor,
      key: key,
      resizeToAvoidBottomInset: bottomInset,
      child: Material(
        color: Colors.transparent,
        child: child,
      ),
    ).onTap(() {
      FocusScope.of(context).unfocus();
    });
  }
}

