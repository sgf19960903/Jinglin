import 'package:flutter/cupertino.dart';
import 'package:flutter_my_picker/picker_view.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';



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
  static Future showChoiceDialog(BuildContext context,List<String> contentList,{String? title,List<String>? iconList,int selectedIndex=-1,Function(int)? selectedFunc}){
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
                    //标题
                    if(title!=null) ExTextView(title,
                      color: AppColors.grayColor,
                    ).container(h: 56,align: Alignment.center,onlyBottomBorder: true,borderColor: AppColors.borderColor),
                    //选项列表
                    Column(
                      children: List.generate(contentList.length, (index) => Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          if(iconList!=null) iconList[index].image(w: 24.w,h: 24.w).container(marginR: 8.w),
                          ExTextView(contentList[index],
                            size: 16,
                          ).container(w: 80.w,align: iconList!=null?Alignment.centerLeft:Alignment.center),
                        ],
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


  //通用确认弹框
  static Future showSureDialog(BuildContext context,{
    String? title,
    String? content,
    String? leftButtonText,
    String? rightButtonText,
    Function? leftClickFunc,
    Function? rightClickFunc
  }){
    return showGeneralDialog(
        context: context,
        barrierColor: Color(0x73000000),
        barrierDismissible: true,
        barrierLabel: "",
        pageBuilder: (_,anim,secondAnim){
          return Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                "".container(h: 24),
                if(title!=null) ExTextView(title,
                  size: 16,
                  isRegular: false,
                  maxLines: 2,
                ).container(marginL: 20.w,marginR: 20.w,align: Alignment.center),
                if(content!=null) ExTextView(content,
                  color: AppColors.grayColor,
                  isRegular: false,
                  maxLines: 10,
                ).container(marginT: 8),
                "".container(h: 0.5,bgColor: AppColors.borderColor,marginT: 24),
                //按钮
                Row(
                  children: [
                    ExTextView(leftButtonText??S.of(context).text_39,
                      size: 16,
                    ).container(h: 56,align: Alignment.center,).onTap(() {
                      Navigator.of(context).pop();
                      if(leftClickFunc!=null) leftClickFunc();
                    }).exp(),
                    "".container(h: 56,w: 0.5,bgColor: AppColors.borderColor),
                    ExTextView(rightButtonText??S.of(context).text_123,
                      size: 16,
                      color: AppColors.themeColor,
                      isRegular: false,
                    ).container(h: 56,align: Alignment.center,).onTap(() {
                      Navigator.of(context).pop();
                      if(rightClickFunc!=null) rightClickFunc();
                    }).exp(),
                  ],
                ),
              ],
            ).container(marginL: 38.w,marginR: 38.w,radius: 8,bgColor: AppColors.white),
          );
        }
    );
  }




  //日期选择弹框
  static Future showDateChoiceDialog(BuildContext context,{String? title,int selectedIndex=-1,Function(int)? selectedFunc}){
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
                    //标题
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ExTextView(S.of(context).text_39,
                          size: 16,
                        ).container(h: double.infinity,align: Alignment.center,marginL: AppSizes.pagePaddingLR,marginR: AppSizes.pagePaddingLR,).onTap(() {
                          Navigator.of(context).pop();
                        }),
                        "".container().exp(),
                        ExTextView(S.of(context).text_137,
                          size: 16,
                          color: AppColors.themeColor,
                        ).container(h: double.infinity,align: Alignment.center,marginL: AppSizes.pagePaddingLR,marginR: AppSizes.pagePaddingLR,).onTap(() {

                        }),
                      ],
                    ).container(h: 46,onlyBottomBorder: true,),
                    //日期选择
                    MyDatePicker(
                      isShowHeader: false,
                    ),
                  ],
                ).container(topRightRadius: 12,topLeftRadius: 12,bgColor: AppColors.white,padB: paddingBottom),
              ],
            ),
          );
        }
    );
  }

  //滑动选择弹框
  static Future showScrollChoiceDialog(BuildContext context,List<String> contentList,{String? title,int selectedIndex=-1,Function(int)? selectedFunc}){
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
                    //标题
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ExTextView(S.of(context).text_39,
                          size: 16,
                        ).container(h: double.infinity,align: Alignment.center,marginL: AppSizes.pagePaddingLR,marginR: AppSizes.pagePaddingLR,).onTap(() {
                          Navigator.of(context).pop();
                        }),
                        "".container().exp(),
                        ExTextView(S.of(context).text_137,
                          size: 16,
                          color: AppColors.themeColor,
                        ).container(h: double.infinity,align: Alignment.center,marginL: AppSizes.pagePaddingLR,marginR: AppSizes.pagePaddingLR,).onTap(() {

                        }),
                      ],
                    ).container(h: 46,onlyBottomBorder: true,),
                    //日期选择
                    CupertinoPicker.builder(
                      scrollController: selectedIndex!=-1?FixedExtentScrollController(initialItem: selectedIndex):null,
                      childCount: contentList.length,
                      itemExtent: 44,

                      selectionOverlay: "".container(h: 44,hasBorder: true,borderWidth: 0.3),
                      onSelectedItemChanged: (index){

                      },
                      itemBuilder: (_,index){
                        return ExTextView(contentList[index],
                          size: 22,
                        ).container(align: Alignment.center);
                      }
                    ).container(h: 186),
                  ],
                ).container(topRightRadius: 12,topLeftRadius: 12,bgColor: AppColors.white,padB: paddingBottom),
              ],
            ),
          );
        }
    );
  }

}