import 'package:bittchainpro/repository/http/http_manager.dart';
import 'package:bittchainpro/repository/http/urls.dart';
import 'package:dio/dio.dart';

class HttpRequest{


  ///账户********************************************************************************************
  //登录
  static Future? login({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.login,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //注册
  static Future? register({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.register,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //获取用户信息
  static Future? getUserInfo({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.getUserInfo,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //用户修改登录密码
  static Future? updateLoginPass({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.updateLoginPass,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //用户设置交易密码
  static Future? setFundsPass({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.setFundsPass,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //用户修改交易密码
  static Future? updateFundsPass({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.updateFundsPass,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //初级认证
  static Future? primaryCert({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.primaryCert,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //高级认证
  static Future? advancedCert({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.advancedCert,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //发送邮箱验证码
  static Future? emailSendVerifyCode({bool needAuth=false,bool needDialog=false,data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.emailSendVerifyCode,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //忘记登录密码
  static Future? forgetLoginPass({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.forgetLoginPass,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }


  ///资产********************************************************************************************
  //我的资产
  static Future? getAssets({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.getAssets,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //地址簿列表
  static Future? addressList({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.addressList,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  ///账单********************************************************************************************
  //交易密码认证
  static Future? fundsPassCert({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.fundsPassCert,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //提币-金额操作
  static Future? withDraw({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.withDraw,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //转换-金额操作
  static Future? transfer({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.transfer,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //兑换-金额获取
  static Future? getExchangeAmount({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.getExchangeAmount,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //兑换-金额操作
  static Future? exchange({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.exchange,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //兑换-记录
  static Future? exchangeRecords({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.exchangeRecords,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //充币-记录
  static Future? rechargeRecords({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.rechargeRecords,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //提币-记录
  static Future? withDrawRecords({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.withDrawRecords,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //转换-记录
  static Future? transferRecords({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.transferRecords,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }


  ///基础信息********************************************************************************************
  //公告
  static Future? getNotices({bool needAuth=false,bool needDialog=false,data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.getNotices,needAuth: needAuth,needDialog: needDialog,arguments: args,data:data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //二维码获取
  static Future? getQrCode({bool needAuth=false,bool needDialog=false,dynamic data,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpGet(Urls.getQrCode,needAuth: needAuth,needDialog: needDialog,arguments: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //选项值
  static Future? getOptions({bool needAuth=false,bool needDialog=false,dynamic data,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpGet(Urls.getOptions,needAuth: needAuth,needDialog: needDialog,arguments: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //上传文件
  static Future? loadFile({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.loadFile,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //下载文件
  static Future? downloadFile(savePath,{dynamic data,CancelToken? cancelToken,Function(int,int)? onReceiveProgress,showErrorHint=true}){
    return HttpManager().download(Urls.downloadFile,savePath,data: data,cancelToken: cancelToken,);
  }

  //图片信息列表
  static Future? photoList({bool needAuth=false,bool needDialog=false,dynamic data,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpGet(Urls.photoList,needAuth: needAuth,needDialog: needDialog,arguments: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //币种信息
  static Future? coinInfo({bool needAuth=false,bool needDialog=false,dynamic data,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpGet(Urls.coinInfo,needAuth: needAuth,needDialog: needDialog,arguments: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //联系我们
  static Future? contactUs({bool needAuth=false,bool needDialog=false,dynamic data,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpGet(Urls.contactUs,needAuth: needAuth,needDialog: needDialog,arguments: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //首页/行情列表数据
  static Future? getQuotations({bool needAuth=false,bool needDialog=false,data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.getQuotations,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }


  ///订单********************************************************************************************
  //创建订单
  static Future? createOrder({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.createOrder,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //高级认证
  static Future? closeOrder({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.closeOrder,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //目前持仓
  static Future? getPositions({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.getPositions,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //历史合约
  static Future? getHistoryPositions({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.getHistoryPositions,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //获取币种最高值和最低值
  static Future? getCurrency24Price({bool needAuth=false,bool needDialog=false,dynamic data,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpGet(Urls.getCurrency24Price,needAuth: needAuth,needDialog: needDialog,arguments: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //获取币种的交易量
  static Future? getCoinTurn({bool needAuth=false,bool needDialog=false,dynamic data,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpGet(Urls.getCoinTurn,needAuth: needAuth,needDialog: needDialog,arguments: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //订单详情
  static Future? orderDetails({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.orderDetails,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //获取数据
  static Future? getData({bool needAuth=false,bool needDialog=false,dynamic data,args,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpPost(Urls.getData,needAuth: needAuth,needDialog: needDialog,arguments: args,data: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }

  //获取火币K线
  static Future? getHuobiKLine({bool needAuth=false,bool needDialog=false,dynamic data,CancelToken? cancelToken,showErrorHint=true}){
    return HttpManager().httpGet(Urls.getHuobiKLine,needAuth: needAuth,needDialog: needDialog,arguments: data,cancelToken: cancelToken,showErrorHint: showErrorHint);
  }


}