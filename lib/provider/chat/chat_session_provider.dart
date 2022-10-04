/// 聊天回话Provider
/// @Author Tongzongwen
/// @Date 2022/9/30 17:27
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/provider/base/base_provider.dart';


class ChatSessionProvider extends BaseProvider {
  bool showExpressList = false;//是否显示键盘表情列表
  bool showKeyboard = false;//是否显示键盘


  //显示或隐藏表情列表
  showOrHideExpressList(isShow){
    showExpressList = isShow;
    notifyListeners();
  }

  //显示或隐藏键盘
  showOrHideKeyboard(isShow){
    showKeyboard = isShow;
    notifyListeners();
  }


}