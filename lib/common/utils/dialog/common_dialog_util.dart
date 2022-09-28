import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/widgets/ex_text_field.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';



///通用弹框工具
class CommonDialogUtil {
  static Future? waitFuture;

  static bool isWaiting = waitFuture!=null;


  //等待弹框
  static showWaitDialog(BuildContext context,{CancelToken? cancelToken,bool canCancel=true}){
    waitFuture = showGeneralDialog(
        context: context,
        barrierColor: Color(0x73000000),
        barrierDismissible: canCancel,
        barrierLabel: "",
        pageBuilder: (_,anim,secondAnim){
          return WillPopScope(
              child: Scaffold(
                backgroundColor: Colors.transparent,
                body: Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CircularProgressIndicator(backgroundColor: Colors.transparent,strokeWidth: 2,valueColor: AlwaysStoppedAnimation<Color>(AppColors.successColor),).container(w: 60.w,h: 60.w,pad: 4.w),
                    ],
                  ).container(w: 60.w,h: 60.w,radius: 60/*,bgColor: AppColors().viewBg*/),
                ),
              ),
              onWillPop: (){
                // if(cancelToken!=null) cancelToken.cancel("手动取消~~");
                waitFuture=null;
                isWaiting = false;
                // LogUtil.printE("等待弹框手动取消...");
                return Future.value(canCancel);
              }
          );
        }
    ).whenComplete((){
      // LogUtil.printE("等待弹框关闭...");
      waitFuture=null;
      isWaiting = false;
    });
    return waitFuture;
  }


  //通用选择弹框
  static Future showChoiceDialog(BuildContext context,List<String> contentList,{int selectedIndex=-1,Function(int)? selectedFunc}){
    return showGeneralDialog(
        context: context,
        barrierColor: Color(0x73000000),
        barrierDismissible: true,
        barrierLabel: "",
        transitionBuilder: (_,anim1,anim2,child){
          return SlideTransition(
            position: Tween<Offset>(
                begin: Offset(0.0, 1.0),
                end: Offset(0,0)
            ).animate(anim1),
            child: child,
          );
        },
        pageBuilder: (_,anim,secondAnim){
          return Material(
            color: Colors.transparent,
            child: Column(
              children: [
                "".container().onTap(() {
                  Navigator.of(context).pop();
                }).exp(),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //选项列表
                    Column(
                      children: List.generate(contentList.length, (index) => ExTextView(contentList[index],
                        size: 16,
                      ).container(h: 56,align: Alignment.center,onlyBottomBorder: true,borderColor: AppColors.borderColor).onTap(() {
                        Navigator.of(context).pop();
                        if(selectedFunc!=null) selectedFunc(index);
                      })),
                    ),
                    "".container(h: 7,bgColor: AppColors.borderColor),
                    //取消按钮
                    ExTextView(S.of(context).text_39,
                      size: 16,
                    ).container(h: 56,align: Alignment.center).onTap(() {
                      Navigator.of(context).pop();
                    }),
                  ],
                ).container(topRightRadius: 12,topLeftRadius: 12,bgColor: AppColors.white,padB: paddingBottom),
              ],
            ),
          );
        }
    );
  }


}