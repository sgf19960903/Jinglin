
import 'package:jinglin/common/router/router_manager.dart';
import 'package:flutter/material.dart';

class NavigatorUtil {
  
  static Future gotPage(BuildContext context,String name,{dynamic param,Function(dynamic)? backFun}){
    return Navigator.of(context).push(generateRoute().get(RouteSettings(name: name,arguments: param))!).then(backFun??(value)=>null);
  }
  static Future goPageAndRemove(BuildContext context,String name,{dynamic param,String? retainName,Function(dynamic)? backFun}){
    return Navigator.of(context).pushAndRemoveUntil(generateRoute().get(RouteSettings(name: name,arguments: param))!, (route){
      return retainName!=null?(route==generateRoute().get(RouteSettings(name: name,arguments: param))):false;
    }).then(backFun??(value)=>null);
  }
}