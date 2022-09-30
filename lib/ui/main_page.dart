/// 主界面
/// @Author Tongzongwen
/// @Date 2022/9/26
/// @Description TODO

import 'dart:async';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:jinglin/application/app.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/common/utils/toast_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/home/home_page.dart';
import 'package:jinglin/ui/square/square_page.dart';
import 'package:jinglin/ui/widgets/ex_scaffold.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';

import 'chat/chat_home_page.dart';
import 'mine/mine_page.dart';


class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with WidgetsBindingObserver,RouteAware{
  List<String> normalIconList = [];
  List<String> selectedIconList = [];
  List<String> textList = [];
  List<Widget> widgetList = [HomePage(),SquarePage(),ChatHomePage(),MinePage()];
  int _currentPage = 0;
  int lastClickBackTimeStamp = 0;
  Timer? _quoTimer;
  CancelToken? _cancelToken;

  //初始化数据
  _initData(){
    textList = [S.of(context).text_2,S.of(context).text_3,S.of(context).text_4,S.of(context).text_5,];
    normalIconList = [AppImage().iconHomeNormal,AppImage().iconSquareNormal,AppImage().iconChatNormal,AppImage().iconMineNormal,];
    selectedIconList = [AppImage().iconHomeSelected,AppImage().iconSquareSelected,AppImage().iconChatSelected,AppImage().iconMineSelected,];
  }


  @override
  void initState() {
    super.initState();
    App.mainPageController = PageController();
    WidgetsBinding.instance?.addObserver(this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    App.routeObserver.subscribe(this,ModalRoute.of<dynamic>(context)!);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch(state){
      case AppLifecycleState.resumed:
        break;
      case AppLifecycleState.paused:
        break;
      case AppLifecycleState.detached:
        break;
      case AppLifecycleState.inactive:
        break;
    }
  }

  @override
  void didPushNext() {
    super.didPushNext();
  }

  @override
  void didPopNext() {
    super.didPopNext();
    }

  @override
  Widget build(BuildContext context) {
    _initData();
    return ExScaffold(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          PageView(
            controller: App.mainPageController,
            physics: NeverScrollableScrollPhysics(),
            children: widgetList,
            onPageChanged: (page) {
              setState(() {
                _currentPage = page;
              });
            },
          ).exp(),
          Container(width: double.infinity,height: 0.1,color: AppColors.textColor,),
          _navigationWidget(),
        ],
      ),
    ).willPop(() {
      //连续返回两次退出App
      int nowTimeStamp = DateTime.now().millisecondsSinceEpoch;
      if(lastClickBackTimeStamp==0){
        lastClickBackTimeStamp = nowTimeStamp;
        ToastUtil.showMsg(S.of(context).text_359);
        return Future.value(false);
      }else{
        int diff = nowTimeStamp - lastClickBackTimeStamp;
        if(diff>1000){
          lastClickBackTimeStamp = nowTimeStamp;
          ToastUtil.showMsg(S.of(context).text_359);
          return Future.value(false);
        }
      }
      return Future.value(true);
    });
  }

  //导航栏
  Widget _navigationWidget(){
    return Row(
      children: List.generate(widgetList.length, (index) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            "${_currentPage==index?selectedIconList[index]:normalIconList[index]}".image(w: 24.w,h: 24.w,),
            ExTextView(textList[index],
              size: 10,
            ).container(marginT: 2),
          ],
        ).onTap(() {
          FocusScope.of(context).unfocus();
          App.mainPageController.jumpToPage(index);
        }).exp();
      }),
    ).container(h: 48+paddingBottom,padB: paddingBottom);
  }

}
