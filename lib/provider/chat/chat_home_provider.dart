/// 聊天首页Provider
/// @Author Tongzongwen
/// @Date 2022/9/30 17:26
/// @Description TODO

import 'package:flutter/cupertino.dart';
import 'package:jinglin/common/utils/log_util.dart';
import 'package:jinglin/provider/base/base_provider.dart';


class ChatHomeProvider extends BaseProvider {
  PageController pageController = PageController();
  int listTabIndex = 0;//

  //更改列表Tab位置
  changeListTabIndex(index){
    listTabIndex = index;
    notifyListeners();
  }


  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }



}