/// 广场Provider
/// @Author Tongzongwen
/// @Date 2022/9/30 17:33
/// @Description TODO

import 'package:flutter/cupertino.dart';
import 'package:jinglin/provider/base/base_provider.dart';


class SquareProvider extends BaseProvider {
  PageController pageController = PageController();
  int listTabIndex = 0;//

  //更改列表Tab位置
  changeListTabIndex(index){
    listTabIndex = index;
    // pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.linear);
    notifyListeners();
  }


  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }






}