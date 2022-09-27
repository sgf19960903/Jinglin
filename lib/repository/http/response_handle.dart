import 'dart:convert';

import 'package:bittchainpro/application/app.dart';
import 'package:bittchainpro/bean/base/base_http_response_bean.dart';
import 'package:bittchainpro/common/utils/log_util.dart';
import 'package:bittchainpro/common/utils/toast_util.dart';
import 'package:bittchainpro/generated/l10n.dart';
import 'package:dio/dio.dart';



class ResponseHandle {
  static int lastTimeOutTime = 0;//上次超时时间

  //处理异常
  static dynamic handleException(dynamic Function() done,{bool needDialog=false,String? url,String? method,params,forms}) async{
    try{
      return await done();
    } catch(e){
      LogUtil.printE("handleException:$url---${e.toString()}");
      if(e.toString().contains("timed out")||e.toString().contains("timeout")) {
        int nowTime = DateTime.now().millisecondsSinceEpoch;
        // if(nowTime-lastTimeOutTime>5000) ToastUtil.showMsg(S.current.code_100104);
        lastTimeOutTime = nowTime;
      }
      // if(e.toString().contains("Http status error [500]")) ToastUtil.showMsg(S.current.code_500);
      // if(e.toString().contains("Http status error [502]")) ToastUtil.showMsg(S.current.code_500);
      // if(e.toString().contains("Http status error [404]")) ToastUtil.showMsg(S.current.code_500);
      // if(e.toString().contains("Http status error [400]")) ToastUtil.showMsg(S.current.code_500);
      //处理Token失效
      if(e.toString().contains("Http status error [401]")||
          e.toString().contains("Http status error [403]")) {
        return null;
      }
      if(e.toString().contains("Http status error [500]")) {
        ToastUtil.showMsg(S.of(App.appGlobal.currentContext!).text_405);
        return null;
      }
      return null;
    }
  }


  //处理响应结果
  static dynamic handleResponse(Response response,{bool showHintError=true}){
    var data = response.data;
    BaseHttpResponseBean? bean;
    if(data==null) return null;
    if(data is String) {
      try{
        bean = BaseHttpResponseBean.fromJson(json.decode(data));
      }catch(e){
        LogUtil.printE("响应结果转化失败..$e");
        return null;
      }
    } else if(data is Map) {
      if(data.containsKey("data")&&data.containsKey("code")) bean = BaseHttpResponseBean.fromJson(data);
      else return data;
    }
    else return data;
    return _dealWithResponse(bean,response,showHintError: showHintError);
  }



  //处理普通响应
  static dynamic _dealWithResponse(BaseHttpResponseBean? bean,Response response,{showHintError=true}){
    if(bean==null) return null;
    int? statusCode = bean.code;
    String statusMsg = "";
    switch(statusCode){
      case 200://返回成功
        return bean.data??"";
      case 300://请求失败
        statusMsg = S.of(App.appGlobal.currentContext!).text_173;
        break;
      case 202://账号不能为空
        statusMsg = S.of(App.appGlobal.currentContext!).text_143;
        break;
      case 203://密码不能为空
        statusMsg = S.of(App.appGlobal.currentContext!).text_144;
        break;
      case 209://密码不一致
        statusMsg = S.of(App.appGlobal.currentContext!).text_150;
        break;
      case 210://账号已存在
        statusMsg = S.of(App.appGlobal.currentContext!).text_151;
        break;
      case 234://请使用正确的邮箱
        statusMsg = S.of(App.appGlobal.currentContext!).text_169;
        break;
      case 235://验证码不正确
        statusMsg = S.of(App.appGlobal.currentContext!).text_170;
        break;
      case 204://账号错误
        statusMsg = S.of(App.appGlobal.currentContext!).text_145;
        break;
      case 205://密码错误
        statusMsg = S.of(App.appGlobal.currentContext!).text_146;
        break;
      case 206://信息错误，请联系管理员
        statusMsg = S.of(App.appGlobal.currentContext!).text_147;
        break;
      case 211://原始密码错误
        statusMsg = S.of(App.appGlobal.currentContext!).text_152;
        break;
      case 212://新密码不能为空
        statusMsg = S.of(App.appGlobal.currentContext!).text_153;
        break;
      case 213://名称不能为空
        statusMsg = S.of(App.appGlobal.currentContext!).text_154;
        break;
      case 214://姓氏不能为空
        statusMsg = S.of(App.appGlobal.currentContext!).text_155;
        break;
      case 215://请选择证件类型
        statusMsg = S.of(App.appGlobal.currentContext!).text_156;
        break;
      case 216://证件号码不能为空
        statusMsg = S.of(App.appGlobal.currentContext!).text_157;
        break;
      case 217://正面证件照不能为空
        statusMsg = S.of(App.appGlobal.currentContext!).text_158;
        break;
      case 218://反面证件照不能为空
        statusMsg = S.of(App.appGlobal.currentContext!).text_159;
        break;
      case 219://请选择国籍
        statusMsg = S.of(App.appGlobal.currentContext!).text_160;
        break;
      case 220://手持证件照不能为空
        statusMsg = S.of(App.appGlobal.currentContext!).text_161;
        break;
      case 221://手持协议书不能为空
        statusMsg = S.of(App.appGlobal.currentContext!).text_162;
        break;
      case 208://购买数量超出范围
        statusMsg = S.of(App.appGlobal.currentContext!).text_149;
        break;
      case 231://选择的币种不能为空
        statusMsg = S.of(App.appGlobal.currentContext!).text_166;
        break;
      case 232://网络地址不能为空
        statusMsg = S.of(App.appGlobal.currentContext!).text_167;
        break;
      case 233://数量必须大于零
        statusMsg = S.of(App.appGlobal.currentContext!).text_168;
        break;
      case 222://购买金额超出范围
        statusMsg = S.of(App.appGlobal.currentContext!).text_163;
        break;
      case 207://币种不存在
        statusMsg = S.of(App.appGlobal.currentContext!).text_148;
        break;
      case 223://订单错误，请联系管理员
        statusMsg = S.of(App.appGlobal.currentContext!).text_164;
        break;
      case 237://当前账号暂未注册，请注册
        statusMsg = S.of(App.appGlobal.currentContext!).text_172;
        break;
    }
    if(statusMsg.isNotEmpty&&showHintError) ToastUtil.showMsg(statusMsg);
    return null;
  }

}