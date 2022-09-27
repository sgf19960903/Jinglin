
import 'dart:io';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:decimal/decimal.dart';
import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';


///字符串扩展类
extension StringExtention on String {

  //验证邮箱
  bool get isEmail {
    if (this.isEmpty) return false;
    return RegExp(r'^[A-Za-z0-9.\u4e00-\u9fa5]+@[a-zA-Z0-9._-]+(\.[a-zA-Z0-9._-]+)+$').hasMatch(this);
  }

  //验证密码
  bool get isPwd {
    if (this.isEmpty) return false;
    return RegExp(r'.{8,20}')
        .hasMatch(this);
  }

  //验证交易密码
  bool get isFundsPwd {
    if (this.isEmpty) return false;
    return RegExp(r'.{6,20}')
        .hasMatch(this);
  }

  //验证手机号
  bool isPhone(code) {
    if (this.isNotEmpty != true) return false;
    if(code=="86"||code=="+86") return RegExp(r'^(1[2-9])\d{9}$').hasMatch(this);
    else return true;
  }


  //显示精确小数的字符串
  String toDecimalString ({errorShow="--"}){
    Decimal? decimal = Decimal.tryParse(this);
    if(decimal==null) return errorShow;
    else return decimal.toString();
  }

  //显示精确小数的数字
  num toDecimalNum (){
    Decimal? decimal = Decimal.tryParse(this);
    if(decimal==null) return 0;
    else return num.tryParse(decimal.toString())??0;
  }


  // //精确小数加法
  // String decimalAdd(other,{int precision=-1,errorShow="--"}) {
  //   other = other.toString();
  //   if(this=="null"||other=="null") return errorShow;
  //   Decimal firstDec = Decimal.tryParse(this)??Decimal.parse("0");
  //   Decimal result = firstDec+(Decimal.tryParse(other)??Decimal.parse("0"));
  //   if(precision>-1) return result.toString().byPrecision(precision);
  //   else return result.toString();
  // }
  //
  //
  // //精确小数减法
  // String decimalCut(other,{int precision=-1,errorShow="--"}) {
  //   other = other.toString();
  //   if(this=="null"||other=="null") return errorShow;
  //   Decimal firstDec = Decimal.tryParse(this)??Decimal.parse("0");
  //   Decimal result = firstDec-(Decimal.tryParse(other)??Decimal.parse("0"));
  //   if(precision>-1) return result.toString().byPrecision(precision);
  //   else return result.toString();
  // }
  //
  // //精确小数乘法
  // String decimalMul(other,{int precision=-1,errorShow="--"}) {
  //   other = other.toString();
  //   if(this=="null"||other=="null") return errorShow;
  //   Decimal firstDec = Decimal.tryParse(this)??Decimal.parse("0");
  //   Decimal result = firstDec*(Decimal.tryParse(other)??Decimal.parse("0"));
  //   if(precision>-1) return result.toString().byPrecision(precision);
  //   else return result.toString();
  // }
  //
  // //精确小数除法
  // String decimalDiv(other,{int precision=-1,errorShow="--"}) {
  //   other = other.toString();
  //   if(this=="null"||other=="null") return errorShow;
  //   num otherNum = num.tryParse(other)??0;
  //   if(otherNum==0) return errorShow;
  //   Decimal firstDec = Decimal.tryParse(this)??Decimal.parse("0");
  //   Decimal result = firstDec/(Decimal.tryParse(other)??Decimal.parse("0"));
  //   if(precision>-1) return result.toString().byPrecision(precision);
  //   else return result.toString();
  // }
  //
  // //获取指定精度的小数字符串
  // String byPrecision(int precision){
  //   String doubleStr = (Decimal.tryParse(this)??Decimal.parse("0")).toString();
  //   if(precision>0){
  //     if(doubleStr.contains(".")){
  //       String intStr = doubleStr.split(".")[0];
  //       String decimalStr = doubleStr.split(".")[1];
  //       if(decimalStr.length>=precision){
  //         decimalStr = decimalStr.substring(0,precision);
  //       }else{
  //         StringBuffer sb = StringBuffer();
  //         for(int i=0;i<precision-decimalStr.length;i++){
  //           sb.write("0");
  //         }
  //         decimalStr += sb.toString();
  //       }
  //       if(precision>0) return "$intStr.$decimalStr";
  //       else return "$intStr";
  //     }else{
  //       StringBuffer sbStr = StringBuffer();
  //       sbStr.write(doubleStr);
  //       if(precision>0) sbStr.write(".");
  //       for(int i=0;i<precision;i++){
  //         sbStr.write("0");
  //       }
  //       return sbStr.toString();
  //     }
  //   }else{
  //     //需要重新计算
  //     num thePrecision = precision.abs();
  //     num finalPrecision = thePrecision.toString().length-1;
  //     if(doubleStr.contains(".")) doubleStr = doubleStr.substring(0,doubleStr.indexOf("."));
  //     num len = doubleStr.length;
  //     if(len<=finalPrecision) return doubleStr;
  //     else{
  //       num endIndex = len - finalPrecision;
  //       StringBuffer sbStr = StringBuffer();
  //       sbStr.write(doubleStr.substring(0,endIndex.toInt()));
  //       for(num i=0;i<finalPrecision;i++){
  //         sbStr.write("0");
  //       }
  //       return sbStr.toString();
  //     }
  //   }
  //
  // }

  //将后缀带有.000的时间转化为正确时间表现形式
  String toAvailableTime(){
    if(this=="null") return "--";
    if(this.isEmpty) return "";
    String target = this;
    if(this.contains("T")) target = this.replaceAll("T", " ");

    if(!target.contains(".")) return this;
    int index = target.lastIndexOf(".");
    if(index<=0) return target;
    return target.substring(0,index);
  }


  Widget image({String? defaultImg,double w=double.infinity,double h=double.infinity,BoxFit fit=BoxFit.contain,double sa=0,Function(BuildContext,Object)? errorCallback}){
    if(this.isEmpty) return defaultImg==null?Container():Image.asset(defaultImg,width: w,height: h,fit: fit,);
    if(this.contains("assets/")){
      return Image.asset(this,width: w,height: h,fit: fit,errorBuilder: (_,error,stackTrace){
        if(errorCallback!=null) errorCallback(_,error);
        return Image.asset(defaultImg??AppImage().iconWechat,width: w,height: h,fit: fit);
      },);
    }else if(this.contains("www.") || this.contains("http:")|| this.contains("https:")){
      return ClipRRect(
        borderRadius: BorderRadius.circular(sa),
        child: CachedNetworkImage(imageUrl: this,width: w,height: h,fit: fit,placeholder: (_,url){
          return Image.asset(defaultImg??AppImage().iconWechat,width: w,height: h,fit: fit);
        },errorWidget: (_,url,error){
          if(errorCallback!=null) errorCallback(_,error);
          return Image.asset(defaultImg??AppImage().iconWechat,width: w,height: h,fit: fit);
        },),
      );
    }else{
      return Image.file(File(this),width: w,height: h,fit: fit,errorBuilder: (_,error,stackTrace){
        if(errorCallback!=null) errorCallback(_,error);
        return Image.asset(defaultImg??AppImage().iconWechat,width: w,height: h,fit: fit);
      },);
    }
  }

  Widget container({
    Key? key,
    double? w,
    double? h,
    double marginL=0,
    double marginR=0,
    double marginT=0,
    double marginB=0,
    double margin=-1,
    double padL=0,
    double padR=0,
    double padT=0,
    double padB=0,
    double pad=-1,
    EdgeInsetsGeometry? marginG,
    EdgeInsetsGeometry? padG,
    Alignment? align,
    Decoration? dec,
    Color bgColor=Colors.transparent,
    String? bgImg,
    bool hasBorder=false,
    Color borderColor=Colors.transparent,
    double borderWidth=1,
    bool onlyBottomBorder=false,
    double radius=-1,
    Gradient? gradient,
    double topLeftRadius=0,
    double topRightRadius=0,
    double bottomLeftRadius=0,
    double bottomRightRadius=0,
    bool hasDashBorder=false,
    bool hasShadow=false,
    BoxConstraints? boxConstraints,
    List<BoxShadow>? shadow,
    BoxFit bgImgFit=BoxFit.fill}){
    ImageProvider? imgProvider;
    if(bgImg!=null){
      if(bgImg.startsWith("assets/")) imgProvider = AssetImage(bgImg);
      else if(bgImg.startsWith("http://")||bgImg.startsWith("https://")) imgProvider = NetworkImage(bgImg);
      else imgProvider = FileImage(File(bgImg));
    }
    //给默认边框颜色
    if(hasBorder&&borderColor==Colors.transparent) borderColor = AppColors.borderColor;
    return Container(
      key: key,
      width: w,
      height: h,
      constraints: boxConstraints,
      decoration: dec!=null?dec:BoxDecoration(
          color: bgColor,
          gradient: gradient,
          image: bgImg!=null?DecorationImage(
            image: imgProvider!,
            fit: bgImgFit,
          ):null,
          border: hasBorder||onlyBottomBorder?Border(
            top: onlyBottomBorder?BorderSide.none:BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
            right: onlyBottomBorder?BorderSide.none:BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
            left: onlyBottomBorder?BorderSide.none:BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
            bottom: BorderSide(
              color: borderColor,
              width: borderWidth,
            ),
          ):null,
          borderRadius: radius==-1?(topLeftRadius==0&&topRightRadius==0&&bottomLeftRadius==0&&bottomRightRadius==0)?null:BorderRadius.only(
            topLeft: Radius.circular(topLeftRadius),
            topRight: Radius.circular(topRightRadius),
            bottomLeft: Radius.circular(bottomLeftRadius),
            bottomRight: Radius.circular(bottomRightRadius),
          ):
          BorderRadius.all(Radius.circular(radius)),
          boxShadow: hasShadow?[
            BoxShadow(
                color: AppColors.lineColor,
                blurRadius: 0.5,
                spreadRadius: 0.5
            )
          ]:shadow==null?[]:shadow
      ),
      padding: padG != null? padG : (pad!=-1?EdgeInsets.all(pad):EdgeInsets.only(
          left: padL,
          right: padR,
          top: padT,
          bottom: padB
      )),
      margin: (marginG!=null)?marginG:(margin!=-1?EdgeInsets.all(margin):EdgeInsets.only(
          left: marginL,
          right: marginR,
          top: marginT,
          bottom: marginB
      )),
      alignment: align,
    );
  }

}