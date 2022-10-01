/// 聊天模块弹框工具
/// @Author Tongzongwen
/// @Date 2022/10/1 20:06
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';


class ChatDialogUtil {


  //余额不足弹框
  static Future showBalanceNotEnoughDialog(BuildContext context,{Function? sureFunc}){
    return showGeneralDialog(
        context: context,
        barrierColor: Color(0x73000000),
        barrierDismissible: false,
        barrierLabel: "",
        pageBuilder: (_,anim,secondAnim){
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ExTextView(S.of(context).text_141,
                  size: 16,
                  isRegular: false,
                ).container(marginT: 48),
                ExTextView(S.of(context).text_142,
                  size: 16,
                ).container(marginT: 12,marginB: 24),
                //充值按钮
                ExTextView(S.of(context).text_143,
                  size: 16,
                  color: AppColors.white,
                  isRegular: false,
                ).container(
                  w: 150.w,
                  h: 40,
                  align: Alignment.center,
                  radius: 999,
                  bgColor: AppColors.white,
                  gradient: LinearGradient(colors: [AppColors.gradientButtonBeginColor,AppColors.gradientButtonEndColor])
                ).onTap(() {
                  Navigator.of(context).pop();
                  if(sureFunc!=null) sureFunc();
                }),
                "".container(h: 24),
                //暂不充值
                ExTextView(S.of(context).text_144,
                  size: 16,
                  color: AppColors.grayColor,
                ).onTap(() {
                  Navigator.of(context).pop();
                }),
              ],
            ).container(w: screenWidth,h: 235,padL: 24.w,padR: 24.w,bgImg: AppImage().balanceNotEnoughDialogBg),
          );
        }
    );
  }

  //聊天收益提示弹框
  static Future showChatIncomeHintDialog(BuildContext context,){
    return showGeneralDialog(
        context: context,
        barrierColor: Color(0x73000000),
        barrierDismissible: false,
        barrierLabel: "",
        pageBuilder: (_,anim,secondAnim){
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ExTextView(S.of(context).text_140,
                  size: 16,
                  maxLines: 3,
                ).container(marginT: 100,).exp(),
                //按钮
                ExTextView(S.of(context).text_139,
                  size: 16,
                  color: AppColors.white,
                  isRegular: false,
                ).container(
                    w: 150.w,
                    h: 40,
                    align: Alignment.center,
                    radius: 999,
                    bgColor: AppColors.white,
                    gradient: LinearGradient(colors: [AppColors.gradientButtonBeginColor,AppColors.gradientButtonEndColor])
                ).onTap(() {
                  Navigator.of(context).pop();
                }),
                "".container(h: 24),
              ],
            ).container(w: screenWidth,h: 235,padL: 24.w,padR: 24.w,marginL: 38.w,marginR: 38.w,bgImg: AppImage().incomeHintDialogBg),
          );
        }
    );
  }

}
