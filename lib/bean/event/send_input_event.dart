/// 
/// @Author Tongzongwen
/// @Date 2022/10/6 18:49
/// @Description TODO

import 'package:flutter/material.dart';

class SendInputEvent {
  String name;
  int type = 0;//0--获取焦点  1--移除焦点
  String? content; //获取焦点后输入框内容

  SendInputEvent(this.type,this.name,{this.content});





}
