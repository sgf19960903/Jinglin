/// 广场模块弹框工具类
/// @Author Tongzongwen
/// @Date 2022/9/28 23:22
/// @Description TODO

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jinglin/application/app.dart';
import 'package:jinglin/bean/event/send_input_event.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/widgets/ex_list_view.dart';
import 'package:jinglin/ui/widgets/ex_send_input_widget.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';


class SquareDialogUtil {

  //评论列表弹框
  static Future showCommentListDialog(BuildContext context) async{
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
          return Scaffold(
            backgroundColor: Colors.transparent,
            resizeToAvoidBottomInset: false,
            body: Column(
              children: [
                "".container().exp(),
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    //标题栏
                    Row(
                      children: [
                        AppImage().iconBackBlack.image(w: 24.w,h: 24.w,).onTap(() {
                          App.eventBus.fire(SendInputEvent(1,"SquareDialog"));
                          Navigator.of(context).pop();
                        }),
                        ExTextView(S.of(context).text_76(4),
                          size: 16,
                        ).container(align: Alignment.center).exp(),
                        "".container(w: 24.w,h: 24.w,),
                      ],
                    ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,padT: 16,).onTap(() {
                      App.eventBus.fire(SendInputEvent(1,"SquareDialog"));
                    }),
                    //评论列表
                    ExListView(
                      itemCount: 10,
                      padding: EdgeInsets.only(top: 40,left: AppSizes.pagePaddingLR,right: AppSizes.pagePaddingLR),
                      itemBuilder: (_,index){
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            AppImage().iconWechat.image(w: 36.w,h: 36.w,fit: BoxFit.fill).onTap(() {
                              App.eventBus.fire(SendInputEvent(1,"SquareDialog"));
                            }),
                            //评论列表
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                //用户名、性别、回复按钮、举报
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    ExTextView("英俊大哥",
                                      size: 12,
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        AppImage().iconWomanGray.image(w: 8.w,h: 12.w,),
                                        ExTextView("24",
                                          color: AppColors.white,
                                          size: AppSizes.hintFontSize,
                                        ).container(marginL: 2.w),
                                      ],
                                    ).container(padL: 3.w,padR: 3.w,padT: 1,padB: 1,marginL: 8.w,bgColor: AppColors.womanColor,radius: 99),
                                    "".container().exp(),
                                    //回复按钮、当条评论数
                                    Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        AppImage().iconMessage.image(w: 16.w,h: 16.w,),
                                        ExTextView("4",
                                          color: AppColors.grayColor,
                                          size: 12,
                                        ).container(marginL: 2.w),
                                      ],
                                    ).onTap(() {
                                      App.eventBus.fire(SendInputEvent(0,"SquareDialog"));
                                    }),
                                    //举报
                                    AppImage().iconHintGray.image(w: 16.w,h: 16.w).container(marginL: 16.w).onTap(() {
                                      App.eventBus.fire(SendInputEvent(1,"SquareDialog"));
                                      NavigatorUtil.gotPage(context, RouterName.report);
                                    }),
                                  ],
                                ),
                                //当前评论内容
                                ExTextView("哈哈！好的//@黑龙江李哥: 老哥讲的很有道理，我听的受益匪浅，希望有时间可以聊聊",
                                  maxLines: 10,
                                ).container(marginT: 8),
                                "".container(h: 0.5,bgColor: AppColors.borderColor,marginT: 16,marginB: 16),
                              ],
                            ).onTap(() {
                              App.eventBus.fire(SendInputEvent(1,"SquareDialog"));
                            }).container(marginL: 8.w).exp(),
                          ],
                        );
                      },
                    ).exp(),
                    //输入框
                    ExSendInputWidget(name: "SquareDialog",),
                  ],
                ).container(h: screenHeight - paddingTop - 20,topRightRadius: 12,topLeftRadius: 12,bgColor: AppColors.white,),
              ],
            ),
          );
        }
    );
  }


}
