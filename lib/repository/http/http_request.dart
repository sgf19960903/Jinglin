import 'package:jinglin/repository/http/http_manager.dart';
import 'package:jinglin/repository/http/urls.dart';
import 'package:dio/dio.dart';

class HttpRequest{


  ///账户********************************************************************************************
  //登录
  static Future? login({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost("",needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }


}