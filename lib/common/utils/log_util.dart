import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';


class LogUtil{
  static bool isDebug = true;

  //打印信息
  static void printM(String msg){
    if(isDebug) print("--Message--：$msg");
  }

  //打印错误信息
  static void printE(String msg){
    if(isDebug) print("--Error--：$msg");
  }


  //打印完整信息
  static void printFull(msg){
    if(isDebug) log("$msg");
  }

}