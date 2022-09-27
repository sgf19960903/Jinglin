

import 'package:bittchainpro/common/utils/navigator_util.dart';
import 'package:bittchainpro/common/utils/toast_util.dart';
import 'package:bittchainpro/generated/l10n.dart';
import 'package:bittchainpro/ui/widgets/ex_text_field.dart';
import 'package:bittchainpro/ui/widgets/ex_text_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bittchainpro/common/res/res_path.dart';

///交易弹框工具
class TransactionDialogUtil {



  //购买弹框
  static buyDialog(BuildContext context,{bool isBuyUp=true,Function(String,String,String,String,String,String,String)? sureFunc}){
    TextEditingController quantityController = TextEditingController(text: "0");
    List<String> priceList = ["100","","500","","1000","","3000","","5000","","10000"];
    List<String> stopProfitTextList = [S.of(context).text_179,"","20","","40","","60","","80","","100"];
    List<String> stopLossTextList = [S.of(context).text_179,"","30","","40","","50","","60","","70"];
    int priceIndex = -1;
    int stopProfitIndex = 0;
    int stopLossIndex = 0;
    String bail = "0";//保证金
    String fee = "0";//平仓手续费
    //计算开仓需要的数据
    void calcData(){
      num quantity = num.tryParse(quantityController.text)??0;
      num price = 0;
      if(priceIndex!=-1) price = num.tryParse(priceList[priceIndex])??0;
      bail = quantity.toString().decimalMul(price);//价格*数量=保证金
      fee = bail.decimalMul(0.1);//保证金*10%=平仓手续费
    }
    return showGeneralDialog(
        barrierColor: Color(0x73000000),
        context: context,
        transitionBuilder: (_,anim1,anim2,child){
          return SlideTransition(
            position: Tween<Offset>(
                begin: Offset(0.0, 1.0),
                end: Offset(0,0)
            ).animate(anim1),
            child: child,
          );
        },
        barrierLabel: "",
        barrierDismissible: true,
        transitionDuration: Duration(milliseconds: 300),
        pageBuilder: (_,anim1,anim2){
          return Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: true,
            body: Column(
              children: [
                Container().onTap(() {
                  Navigator.of(context).pop();
                }).exp(),
                StatefulBuilder(
                  builder: (_,state){
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //买涨、买跌
                        Row(
                          children: [
                            ExTextView(S.of(context).text_187,
                              color: isBuyUp?AppColors().white:AppColors().commonGrayColor,
                            ).container(align: Alignment.center,bgImg: isBuyUp?AppImage().iconBuyUpSelected:AppImage().iconBuyUpNormal).onTap(() {
                              state((){
                                isBuyUp = true;
                                priceIndex = -1;
                                stopProfitIndex = 0;
                                stopLossIndex = 0;
                                bail = "0";
                                fee = "0";
                              });
                            }).exp(),
                            ExTextView(S.of(context).text_188,
                              color: isBuyUp?AppColors().commonGrayColor:AppColors().white,
                            ).container(align: Alignment.center,bgImg: isBuyUp?AppImage().iconBuyDownNormal:AppImage().iconBuyDownSelected).onTap(() {
                              state((){
                                isBuyUp = false;
                                priceIndex = -1;
                                stopProfitIndex = 0;
                                stopLossIndex = 0;
                                bail = "0";
                                fee = "0";
                              });
                            }).exp(),
                          ],
                        ).container(h: 34,),
                        //价格
                        ExTextView("${S.of(context).text_54}(USDT)",
                          color: AppColors().commonGrayColor,
                          size: 12,
                        ).container(marginT: 10),
                        Row(
                          children: List.generate(priceList.length, (index) {
                            if(index%2!=0) return Container(width: 5.w,);
                            return ExTextView(priceList[index],
                              color: priceIndex==index?AppColors().commonTextColor:AppColors().commonGrayColor,
                              size: 12,
                            ).container(h: 25,align: Alignment.center,bgColor: AppColors().colorF6F6F6,hasBorder: true,borderColor: priceIndex==index?AppColors().commonTextColor:AppColors().commonBorderColor,borderWidth: 0.5,radius: 2).onTap(() {
                              priceIndex = index;
                              calcData();
                              state((){
                              });
                            }).exp();
                          }),
                        ).container(marginT: 10),
                        //数量加减
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AppImage().iconCutBlack.image(w: 24.w,h: 24.w,).container(pad: 6.w).onTap(() {
                              num quantity = num.tryParse(quantityController.text)??0;
                              if(quantity<=0) return;
                              quantityController.text = "${quantityController.text.decimalCut("1")}";
                              calcData();
                              state((){});
                            }),
                            ExTextFiled(
                              controller: quantityController,
                              onChanged: (value){
                                calcData();
                                state((){});
                              },
                              textAlign: TextAlign.center,
                              textSize: 20,
                              keyboardType: TextInputType.number,
                            ).exp(),
                            AppImage().iconAddBlack.image(w: 24.w,h: 24.w,).container(pad: 6.w).onTap(() {
                              quantityController.text = "${quantityController.text.decimalAdd("1")}";
                              calcData();
                              state((){});
                            }),
                          ],
                        ).container(h: 38,marginT: 10,padL: 4.w,padR: 4.w,hasBorder: true,borderWidth: 0.5,radius: 4),
                        //保证金、平仓手续费
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            ExTextView("${S.of(context).text_176}：$bail USDT",
                              color: AppColors().commonGrayColor,
                              size: 10,
                            ).exp(),
                            ExTextView("${S.of(context).text_177}：$fee USDT ",
                              color: AppColors().commonGrayColor,
                              size: 10,
                            ),
                          ],
                        ).container(marginT: 10),
                        //止盈
                        ExTextView(S.of(context).text_178,
                          color: AppColors().commonGreenColor,
                          size: 12,
                        ).container(marginT: 10),
                        Row(
                          children: List.generate(stopProfitTextList.length, (index) {
                            if(index%2!=0) return Container(width: 5.w,);
                            return ExTextView(stopProfitTextList[index],
                              color: index~/2==stopProfitIndex?AppColors().commonGreenColor:AppColors().commonGrayColor,
                              size: 12,
                            ).container(h: 25,align: Alignment.center,bgColor: AppColors().colorF6F6F6,hasBorder: true,borderColor: index~/2==stopProfitIndex?AppColors().commonGreenColor:AppColors().commonBorderColor,borderWidth: 0.5).onTap(() {
                              state((){
                                stopProfitIndex = index~/2;
                              });
                            }).exp();
                          }),
                        ).container(marginT: 10),
                        //止损
                        ExTextView(S.of(context).text_180,
                          color: AppColors().commonRedColor,
                          size: 12,
                        ).container(marginT: 10),
                        Row(
                          children: List.generate(stopLossTextList.length, (index) {
                            if(index%2!=0) return Container(width: 5.w,);
                            return ExTextView(stopLossTextList[index],
                              color: index~/2==stopLossIndex?AppColors().commonRedColor:AppColors().commonGrayColor,
                              size: 12,
                            ).container(h: 25,align: Alignment.center,bgColor: AppColors().colorF6F6F6,hasBorder: true,borderColor: index~/2==stopLossIndex?AppColors().commonRedColor:AppColors().commonBorderColor,borderWidth: 0.5).onTap(() {
                              state((){
                                stopLossIndex = index~/2;
                              });
                            }).exp();
                          }),
                        ).container(marginT: 10),
                        Container(height: 30,),
                        //买入按钮
                        ExTextView(S.of(context).text_181,
                          color: AppColors().white,
                          size: 16,
                        ).container(h: 36,align: Alignment.center,bgColor: isBuyUp?AppColors().commonGreenColor:AppColors().commonRedColor,radius: 4).onTap(() {
                          if(priceIndex==-1) {
                            ToastUtil.showMsg(S.of(context).text_341);
                            return;
                          }
                          num quantity = num.tryParse(quantityController.text)??0;
                          if(quantity<=0) {
                            ToastUtil.showMsg(S.of(context).text_342);
                            return;
                          }
                          Navigator.of(context).pop();
                          if(sureFunc!=null) sureFunc(isBuyUp?"1":"2",priceList[priceIndex],quantityController.text,bail,fee,stopProfitIndex.toString(),stopLossIndex.toString());
                        })
                      ],
                    );
                  }
                ).container(pad: 10.w,bgColor: AppColors().white),
              ],
            ),
          ).safeArea();
        }
    );
  }


}