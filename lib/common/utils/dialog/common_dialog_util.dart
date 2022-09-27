import 'package:bittchainpro/common/res/res_path.dart';
import 'package:bittchainpro/generated/l10n.dart';
import 'package:bittchainpro/ui/widgets/ex_text_field.dart';
import 'package:bittchainpro/ui/widgets/ex_text_view.dart';
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
                      CircularProgressIndicator(backgroundColor: Colors.transparent,strokeWidth: 2,valueColor: AlwaysStoppedAnimation<Color>(AppColors().commonGreenColor),).container(w: 60.w,h: 60.w,pad: 4.w),
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
  static commonChoiceDialog(BuildContext context,List<String> contentList,{Function(int)? clickFunc,int initIndex=0,bool emptyExist=true,}){
    if(contentList.length==0) return;
    contentList.insert(1, "");
    if(initIndex>0) ++initIndex;
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
          return Material(
            color: Colors.transparent,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container().onTap(() {
                  if(emptyExist) Navigator.of(context).pop();
                }).exp(),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    if(contentList.length>10) SingleChildScrollView(
                      child: Column(
                        children: List.generate(contentList.length, (index) {
                          if(index==1) return Container(height: 0.5,color: AppColors().colorF4F6F8,);

                          return ExTextView(contentList[index],
                            color: index==initIndex?AppColors().commonGreenColor:AppColors().black,
                          ).container(h: 56,align: Alignment.center,onlyBottomBorder: index!=0,borderColor: AppColors().colorF4F6F8,borderWidth: 0.5,topLeftRadius: index==0?8:0,topRightRadius: index==0?8:0,).onTap(() {
                            Navigator.of(context).pop();
                            if(clickFunc!=null) {
                              if(index==0) clickFunc(index);
                              else clickFunc(index-1);
                            }
                          });
                        }),
                      ),
                    ).exp(),
                    if(contentList.length<=10) Column(
                      children: List.generate(contentList.length, (index) {
                        if(index==1) return Container(height: 0.5,color: AppColors().colorF4F6F8,);

                        return ExTextView(contentList[index],
                          color: index==initIndex?AppColors().commonGreenColor:AppColors().black,
                        ).container(h: 56,align: Alignment.center,onlyBottomBorder: index!=0,borderColor: AppColors().colorF4F6F8,borderWidth: 0.5,topLeftRadius: index==0?8:0,topRightRadius: index==0?8:0,).onTap(() {
                          Navigator.of(context).pop();
                          if(clickFunc!=null) {
                            if(index==0) clickFunc(index);
                            else clickFunc(index-1);
                          }
                        });
                      }),
                    ),
                    Container(height: 8,width: double.infinity,color: AppColors().colorF4F6F8,),
                    ExTextView(S.of(context).text_8,
                      color: AppColors().black,
                    ).container(h: 56,align: Alignment.center,bgColor: Colors.transparent).onTap(() {
                      Navigator.of(context).pop();
                    }),
                    // Container(height: paddingBottom,width: double.infinity,color: Colors.transparent,),
                  ],

                ).container(w: MediaQuery.of(context).size.width,h: contentList.length>10?580:null,bgColor: AppColors().white,radius: 8).onTap(() {}),
              ],
            ).onTap(() {
              Navigator.of(context).pop();
            }),
          );
        }
    );
  }


  //确认弹框
  static showSureDialog(BuildContext context,{String title="",String leftButtonText="",String rightButtonText="",Function()? sureClicked}){
    if(leftButtonText.length==0) leftButtonText = S.of(context).text_8;
    if(rightButtonText.length==0) rightButtonText = S.of(context).text_7;
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              ExTextView(title,
                maxLines: 5,
                color: AppColors().black,
                size: 15,
                isBold: true,
              ).container(padL: 32.w,padR: 32.w),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ExTextView(leftButtonText,
                    color: AppColors().commonTextColor,
                    size: 15,
                  ).onPress(() {
                    Navigator.of(context).pop();
                  }).exp(),
                  "".container(w: 0.2.w,h: 24,bgColor: AppColors().black),
                  ExTextView(rightButtonText,
                    color: AppColors().commonGreenColor,
                    size: 15,
                  ).onPress(() {
                    Navigator.of(context).pop();
                    if(sureClicked!=null) sureClicked();
                  }).exp(),
                ],
              ).container(marginT: 36),
            ],
          ).container(marginL: 36.w,marginR: 36.w,padT: 36,padB: 15,radius: 14,bgColor: Colors.white),
        )
    );
  }

  //提示弹框
  static showHintDialog(BuildContext context,{String title="",String content="",String buttonText="",bool needCloseButton=true,Function()? sureClicked}){
    // if(title.length==0) title = S.of(context).code_60063;
    // if(buttonText.length==0) buttonText = S.of(context).code_100307;
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) => Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Stack(
                alignment: Alignment.centerRight,
                children: [
                  ExTextView(title,
                    color: AppColors().black,
                    size: 20,
                    isBold: true,
                  ).container(padL: 32.w,padR: 32.w,align: Alignment.center),
                  if(needCloseButton) AppImage().iconCloseBlack.image(w: 18.w,h: 18.w,fit: BoxFit.contain).container(h: 40.w,marginR: 16.w).onTap(() {
                    Navigator.of(context).pop();
                  }),
                ],
              ).container(w: double.infinity,align: Alignment.center),
              ExTextView(content,
                maxLines: 10,
                color: AppColors().black,
                size: 15,
              ).container(padL: 32.w,padR: 32.w,marginT: 10),
              Container(height: 30,),
              ExTextView(buttonText,
                color: AppColors().commonGreenColor,
                size: 15,
              ).container(hasBorder: true,borderColor: AppColors().commonGreenColor,w: 150.w,h: 34,radius: 8,padR: 30.w,padL: 30.w,align: Alignment.center).onPress(() {
                Navigator.of(context).pop();
                if(sureClicked!=null) sureClicked();
              },radius: 8),
            ],
          ).container(w: double.infinity,marginL: 56.w,marginR: 56.w,padT: 0,padB: 15,radius: 14,bgColor: Colors.white),
        ).willPop(() {
          Navigator.of(context).pop();
          return Future.value(false);
        })
    );
  }




  //输入资金密码弹框
  static showInputFundsPassDialog(BuildContext context,{Function(String)? sureFunc,}){

    TextEditingController passController = TextEditingController();
    FocusNode node = FocusNode();
    bool isFirst = true;
    return showGeneralDialog(
        barrierColor: Color(0x73000000),
        context: context,
        // transitionBuilder: (_,anim1,anim2,child){
        //   return SlideTransition(
        //     position: Tween<Offset>(
        //         begin: Offset(0.0, 1.0),
        //         end: Offset(0,0)
        //     ).animate(anim1),
        //     child: child,
        //   );
        // },
        barrierLabel: "",
        barrierDismissible: true,
        transitionDuration: Duration(milliseconds: 300),
        pageBuilder: (_,anim1,anim2){
          return StatefulBuilder(
            builder: (_,state){
              if(isFirst) {
                isFirst = false;
                node.addListener(() {
                  state((){});
                });
              }
              return Scaffold(
                backgroundColor: Colors.transparent,
                resizeToAvoidBottomInset: false,
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ExTextView(S.of(context).text_371,
                            color: AppColors().commonTextColor,
                            size: 16,
                          ).exp(),
                          AppImage().iconCloseBlack.image(w: 12.w,h: 12.w).container(pad: 10).onTap(() {
                            FocusScope.of(context).unfocus();
                            Navigator.of(context).pop();
                          })
                        ],
                      ).container(padT: 15,),
                      // Row(
                      //   children: List.generate(nodeList.length, (index) {
                      //     return Row(
                      //       crossAxisAlignment: CrossAxisAlignment.center,
                      //       children: [
                      //         RawKeyboardListener(
                      //           key: keyList[index],
                      //           focusNode: nodeList[index],
                      //           onKey: (RawKeyEvent event){
                      //             if(event.logicalKey==LogicalKeyboardKey.backspace){
                      //               ++comeCount;
                      //               if(comeCount==2) {
                      //                 comeCount = 0;
                      //                 if(inputControllerList[index].text.isEmpty&&index>0) {
                      //                   inputNodeList[index-1].requestFocus();
                      //                 }
                      //               }
                      //             }
                      //           },
                      //           child: inputList[index],
                      //         ).exp(),
                      //         if(index<nodeList.length-1) "".container(h: 30,w: 1,bgColor: AppColors().commonBorderColor)
                      //       ],
                      //     ).container(w: perWidth,h: perWidth,);
                      //   }),
                      // ).container(hasBorder: true,),

                      ExTextFiled(
                        controller: passController,
                        focusNode: node,
                        isPass: true,
                        keyboardType: TextInputType.text,
                        onSubmitted: (value){
                          if(value.length>0&&sureFunc!=null) sureFunc(value);
                        },
                        textInputAction: TextInputAction.go,
                      ).container(h: 44,onlyBottomBorder: true,borderColor: node.hasFocus?AppColors().commonGreenColor:AppColors().commonBorderColor,borderWidth: 1,padL: 10.w,padR: 10.w),
                      "".container(h: 20)
                    ],

                  ).container(w: MediaQuery.of(context).size.width,h: null,bgColor: AppColors().white,radius: 8,padL: 25.w,padR: 25.w,marginL: 40.w,marginR: 40.w),
                ),
              );
            }
          );
        }
    ).whenComplete(() {
      // nodeList.forEach((element) {
      //   element.dispose();
      // });
      // inputNodeList.forEach((element) {
      //   element.dispose();
      // });
      // inputControllerList.forEach((element) {
      //   element.dispose();
      // });
    });
  }


}