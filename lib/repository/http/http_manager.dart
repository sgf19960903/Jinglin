import 'dart:async';
import 'dart:io';
import 'package:bittchainpro/application/app.dart';
import 'package:bittchainpro/common/utils/dialog/common_dialog_util.dart';
import 'package:bittchainpro/common/utils/log_util.dart';
import 'package:bittchainpro/repository/http/intercept/dio_log_interceptor.dart';
import 'package:bittchainpro/repository/http/intercept/network_interceptor.dart';
import 'package:bittchainpro/repository/http/response_handle.dart';
import 'package:flutter/material.dart';
import 'package:dio/dio.dart';

///Http请求类
class HttpManager {
  static HttpManager? _httpManager;
  static Dio? _dio;
  int _connectTimeout = 30000;
  int _timeout = 5000;
  int beforeRequestTime = 0;

  factory HttpManager() => _getInstance();

  HttpManager._internal() {
    BaseOptions options = BaseOptions(
        sendTimeout: _timeout,
        receiveTimeout: _timeout,
        connectTimeout: _connectTimeout,
        responseType: ResponseType.json,
    );
    _dio = Dio(options)
    ..interceptors.add(DioLogInterceptor())
    ..interceptors.add(NetworkInterceptor());
    //设置代理 -- 抓包
    // (_dio?.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate = (HttpClient client){
    //   client.badCertificateCallback = (X509Certificate cert, String host, int port) {
    //     return Platform.isAndroid;
    //   };
    //   client.findProxy = (uri){
    //     return "PROXY 10.10.10.17:8080";//洁青
    //     // return "PROXY 10.10.10.122:8888";//陈文
    //     // return "PROXY 10.10.10.203:8080";//黄明光
    //   };
    //
    // };
  }

  static HttpManager _getInstance() {
    if (_httpManager == null) {
      _httpManager = HttpManager._internal();
    }
    return _httpManager!;
  }

  //自定义请求
  Future<Response>? httpCustom(String url,String method,{Map<String, Object>? arguments,dynamic data,CancelToken? cancelToken}){
    if(cancelToken==null) cancelToken = CancelToken();
    if(App.loginInvalid) return null;
    if(method=="POST") return _dio?.post(url,queryParameters: arguments,cancelToken: cancelToken,data: data);
    else if(method=="GET") return _dio?.get(url,queryParameters: arguments,cancelToken: cancelToken);
    return null;
  }


  //post请求
  Future<dynamic> httpPost(String url,
      {bool needAuth=false, bool needDialog=false, Map<String, Object>? arguments,dynamic data,CancelToken? cancelToken,bool isUploadFile=false,showErrorHint=true}) async {
    if(cancelToken==null) cancelToken = CancelToken();
    if (_dio == null) return Future(() => null);
    if(App.loginInvalid) return Future(() => null);

    // if(needAuth){
    //   String? token = App.nowToken;
    //   if(token==null) return null;
    // }
    _showWaitDialog(needDialog,cancelToken);
    return await ResponseHandle.handleException(() async{
      beforeRequestTime = DateTime.now().millisecondsSinceEpoch;
      return ResponseHandle.handleResponse(await _dio!.post(url,options: await _authOption(needAuth,isUploadFile: isUploadFile),queryParameters: arguments,data: data,cancelToken: cancelToken).whenComplete(()=>_closeWaitDialog(url,needDialog)),showHintError: showErrorHint);
    },needDialog: needDialog,url: url,params: arguments,forms: data,method: "POST");
  }

  //get请求
  Future<dynamic> httpGet(String url,
      {bool needAuth=false, bool needDialog=false, Map<String, Object>? arguments,CancelToken? cancelToken,showErrorHint=true}) async {
    if(cancelToken==null) cancelToken = CancelToken();
    if (_dio == null) return Future(() => null);
    if(App.loginInvalid) return Future(() => null);
    // if(needAuth){
    //   String? token = App.nowToken;
    //   if(token==null) return null;
    // }
    _showWaitDialog(needDialog,cancelToken);
    return ResponseHandle.handleException(() async{
      beforeRequestTime = DateTime.now().millisecondsSinceEpoch;
      return ResponseHandle.handleResponse(await _dio!.get(url,options: await _authOption(needAuth),queryParameters: arguments,cancelToken: cancelToken).whenComplete(()=>_closeWaitDialog(url,needDialog)),showHintError: showErrorHint);
    },needDialog: needDialog,url: url,params: arguments,method: "GET");
  }


  //下载
  Future<dynamic> download(String url,String savePath,{Map<String,Object>? data,Function(int,int)? onReceiveProgress,bool needAuth=false,CancelToken? cancelToken}) async{
    if (_dio == null) return Future(() => null);
    if(App.loginInvalid) return Future(() => null);


    return ResponseHandle.handleException(() async{
      return ResponseHandle.handleResponse(await _dio!.download(url, savePath,queryParameters: data,onReceiveProgress: onReceiveProgress,cancelToken: cancelToken,options: await _authOption(needAuth,isDownload: true)).whenComplete(() => _closeWaitDialog(url,needAuth)));
    },needDialog: true,url: url);
  }


  //授权参数
  Future<Options> _authOption(bool needAuth,{bool isUploadFile=false,bool isDownload = false}) async {
    Options options = Options(sendTimeout: isUploadFile?60*60*1000:10*10000,receiveTimeout: isDownload?60*60*1000:10000);
    return options;
  }

  //显示网络等待弹框
  _showWaitDialog(bool needDialog,CancelToken? cancelToken) {
    if (App.appGlobal.currentContext == null) return;
    if (needDialog&&CommonDialogUtil.waitFuture==null) CommonDialogUtil.showWaitDialog(App.appGlobal.currentContext!,cancelToken: cancelToken);
  }

  //关闭网络等待弹框
  _closeWaitDialog(String url,bool needDialog){
    if (needDialog && App.appGlobal.currentContext != null && !App.loginInvalid) {
      // LogUtil.printE("等待弹框还在？${CommonDialogUtil.waitFuture}--${CommonDialogUtil.isWaiting}");
      if(CommonDialogUtil.waitFuture!=null) Navigator.of(App.appGlobal.currentContext!).pop();
    }
  }

}
