import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class ToastUtil {


  static Future? showMsg(String msg,{ToastGravity gravity=ToastGravity.CENTER,Toast toastTime=Toast.LENGTH_SHORT,double fontSize=15,Color? bgColor,Color textColor=Colors.white}){
    if(bgColor==null) bgColor = Color(0x7F000000);
    return Fluttertoast.showToast(
      msg: msg,
      toastLength: toastTime,
      fontSize: fontSize,
      gravity: gravity,
      backgroundColor: bgColor,
      textColor: textColor,
    );
  }

}