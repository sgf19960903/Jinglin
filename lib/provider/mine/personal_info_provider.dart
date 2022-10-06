/// 个人信息Provider
/// @Author Tongzongwen
/// @Date 2022/9/30 17:29
/// @Description TODO

import 'package:flutter/cupertino.dart';
import 'package:jinglin/provider/base/base_provider.dart';


class MyPersonalInfoProvider extends BaseProvider {
  TextEditingController _userNameController = TextEditingController();
  TextEditingController _introController = TextEditingController();
  int age = 22;
  int height = 165;
  bool canUpdate = true;//是否能修改




  //判断是否能修改
  judgeCanUpdate(){
    canUpdate = _userNameController.text.length>0;
    notifyListeners();
  }




}