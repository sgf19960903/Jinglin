/// 用户首页Provider
/// @Author Tongzongwen
/// @Date 2022/9/30 17:28
/// @Description TODO


import 'package:flutter/cupertino.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/provider/base/base_provider.dart';


class UserHomePageProvider extends BaseProvider {
  PageController pageController = PageController();
  ScrollController scrollController = ScrollController();
  int tabIndex = 0;//0--用户信息  1--动态列表
  double titleOpacity = 0;//标题用户信息透明度

  //滑动监听
  scrollListener(){
    double offset = scrollController.offset;
    if(tabIndex==0) titleOpacity = offset/60;
    if(titleOpacity>=1) titleOpacity = 1;
    notifyListeners();
  }


  //改变Tab位置
  changeTabIndex(index){
    if(tabIndex==index) return;
    tabIndex = index;
    if(tabIndex==0) titleOpacity = 0;
    else if(tabIndex==1) titleOpacity = 1;
    notifyListeners();
  }


  @override
  void dispose() {
    pageController.dispose();
    scrollController.dispose();
    super.dispose();
  }



}