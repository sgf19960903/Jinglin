/// 修改手机号Provider
/// @Author Tongzongwen
/// @Date 2022/9/30 17:29
/// @Description TODO

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:jinglin/common/utils/toast_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/provider/base/base_provider.dart';
import 'package:jinglin/common/res/res_path.dart';


class UpdatePhoneProvider extends BaseProvider {
  TextEditingController phoneController = TextEditingController();
  TextEditingController verifyCodeController = TextEditingController();
  Timer? verifyTimer;
  int countDown = -1;//倒计时
  bool canUpdate = false;//是否能更改

  //输入框监听
  textChanged(value){
    String phone = phoneController.text;
    String code = verifyCodeController.text;
    canUpdate = phone.isPhone(86)&&code.length==6;
    notifyListeners();
  }
    
  
  //获取验证码
  catchVerifyCode(){
    //正在倒计时
    if(countDown>=0) return;
    String phone = phoneController.text;
    //手机号不为空
    if(phone.isEmpty) return ToastUtil.showMsg(S.current.text_10);
    //手机号不正确
    if(!phone.isPhone(86)) return ToastUtil.showMsg(S.current.text_158);
    //调获取验证码接口

    countDown = 60;
    notifyListeners();
    verifyTimer = Timer.periodic(Duration(seconds: 1), (timer) {
      if(countDown<0) return timer.cancel();
      else --countDown;
      notifyListeners();
    });
  }
  
  
  @override
  void dispose() {
    verifyTimer?.cancel();
    phoneController.dispose();
    verifyCodeController.dispose();
    super.dispose();
  }





}