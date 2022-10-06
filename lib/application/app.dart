import 'dart:convert';
import 'dart:io';
import 'package:event_bus/event_bus.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jinglin/common/utils/shared_preferences_util.dart';

class App {
  //登录失效
  static bool loginInvalid = false;
  //是否登录
  static bool isLogin = false;
  //用户Token
  static String token = "";
  //全局Key
  static GlobalKey<NavigatorState> appGlobal = new GlobalKey();
  //Main Key
  static GlobalKey<ScaffoldState> mainKey = GlobalKey();
  //Main页面控制器
  static late PageController mainPageController;
  //页面监听
  static RouteObserver<ModalRoute> routeObserver = RouteObserver();
  //时间传递
  static EventBus eventBus = EventBus();

  //当前语言位置
  static int languageIndex = 0;

  //交易页行情初始化位置
  static int quotationIndex = 0;



  //启动加载资源
  onCreate() async{
    if(kIsWeb){
      SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.light,
          systemNavigationBarColor: Colors.transparent
      );
      SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
    }else{
      if(Platform.isAndroid){
        SystemUiOverlayStyle systemUiOverlayStyle = SystemUiOverlayStyle(
          statusBarColor: Colors.transparent,
          systemNavigationBarIconBrightness: Brightness.dark,
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.dark,
          systemNavigationBarColor: Colors.transparent
        );
        SystemChrome.setSystemUIOverlayStyle(systemUiOverlayStyle);
      }
    }

    await judgeIsLogin();
    await Future.delayed(Duration(seconds: 3));
  }

  //判断是否登录
  judgeIsLogin() async{
    App.token = await SharedPreferencesUtil.getString(SharedPreferencesName.TOKEN)??"";
  }


}