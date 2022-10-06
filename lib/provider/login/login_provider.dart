/// 登录Provider
/// @Author Tongzongwen
/// @Date 2022/9/30 17:22
/// @Description TODO

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/common/utils/toast_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/provider/base/base_provider.dart';
import 'package:jinglin/common/res/res_path.dart';


class LoginProvider extends BaseProvider {
  TextEditingController phoneController = TextEditingController();
  TextEditingController verifyCodeController = TextEditingController();
  Timer? verifyTimer;
  int countDown = -1;//倒计时
  bool autoCatchPhoto = true;//自动获取手机号
  bool selectedProtocol = false;//是否勾选协议
  bool canLogin = true;//是否能登录


  //输入框监听
  textChanged(value){
    canLogin = phoneController.text.isPhone(86)&&verifyCodeController.text.length==6;
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


  //点击登录
  login(BuildContext context){
    //自己输入手机验证码登录
    if(!autoCatchPhoto) {
      String phone = phoneController.text;
      String verifyCode =verifyCodeController.text;
      //手机号不为空
      if(phone.isEmpty) return ToastUtil.showMsg(S.of(context).text_10);
      //手机号不正确
      if(!phone.isPhone(86)) return ToastUtil.showMsg(S.of(context).text_158);
      //验证码为空
      if(phone.isEmpty) return ToastUtil.showMsg(S.of(context).text_11);
      //验证码长度不为6位
      if(verifyCode.length!=6) return ToastUtil.showMsg(S.of(context).text_159);
    }
    //未勾选协议
    if(!selectedProtocol) return ToastUtil.showMsg(S.of(context).text_160);

    NavigatorUtil.gotPage(context, RouterName.improveInfo);
  }


  @override
  void dispose() {
    phoneController.dispose();
    verifyCodeController.dispose();
    super.dispose();
  }





}