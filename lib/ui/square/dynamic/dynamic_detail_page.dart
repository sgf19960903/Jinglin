/// 动态详情页
/// @Author Tongzongwen
/// @Date 2022/9/28 5:55 下午
/// @Description TODO

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jinglin/application/app.dart';
import 'package:jinglin/bean/event/send_input_event.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/dialog/common_dialog_util.dart';
import 'package:jinglin/common/utils/dialog/square_dialog_util.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/provider/square/dynamic_detail_provider.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_list_view.dart';
import 'package:jinglin/ui/widgets/ex_send_input_widget.dart';
import 'package:jinglin/ui/widgets/ex_sliver_persistent_header_delegate.dart';
import 'package:jinglin/ui/widgets/ex_text_field.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';
import 'package:jinglin/common/res/res_path.dart';


class DynamicDetailPage extends StatefulWidget {
  const DynamicDetailPage({Key? key}) : super(key: key);

  @override
  State<DynamicDetailPage> createState() => _DynamicDetailPageState();
}

class _DynamicDetailPageState extends BaseState<DynamicDetailPage> {
  DynamicDetailProvider _provider = DynamicDetailProvider();
  int maxShowPhotoCount = 9;//最大显示图片数量
  bool isSelf = false;
  bool isFirst = true;
  bool openKeyBoard = false;//开启键盘

  //获取传递参数
  _catchArgument(){
    //避免刷新重复获取
    if(!isFirst) return;
    isFirst = false;
    Map<String,dynamic>? argMap = ModalRoute.of(context)?.settings.arguments as Map<String,dynamic>?;
    openKeyBoard = argMap?["openKeyBoard"]??false;

  }


  @override
  void dispose() {
    _provider.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _catchArgument();
    return widgetBuild(
      bottomInsert: false,
      appBar: ExTitleView(
        title: isSelf?S.of(context).text_128:null,
        titleCenter: true,
        titleWidget: isSelf?null:_titleWidget(),
      ),
      child: Column(
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: _dynamicContentWidget(),
              ),
              SliverToBoxAdapter(
                child: _locationWidget(),
              ),
              SliverToBoxAdapter(
                child: _praiseCommentWidget(),
              ),
              SliverToBoxAdapter(
                child: "".container(h: 0.5,bgColor: AppColors.borderColor,marginT: 12),
              ),
              SliverPersistentHeader(
                floating: true,
                pinned: true,
                delegate: ExSliverPersistentHeaderDelegate(
                  child: _commentTotalNumWidget(),
                  maxHeight: 48,
                  minHeight: 48,
                ),
              ),
              SliverToBoxAdapter(
                child: _commentWidget(),
              ),
            ],
          ).exp(),
          //评论输入框
          ExSendInputWidget(name: "DynamicDetail",showKeyboard: openKeyBoard,),
        ],
      ),
    );
  }


  //标题
  Widget _titleWidget(){
    return Row(
      children: [
        //用户信息
        Row(
          children: [
            AppImage().iconTempAvatar.image(w: 36.w,h: 36.w,).clipRRect(radius: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ExTextView("小不点",),
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
                ).container(padL: 3.w,padR: 3.w,padT: 1,padB: 1,marginT: 4,bgColor: AppColors.womanColor,radius: 99),
              ],
            ).container(marginL: 12.w),
          ],
        ).onTap(() {
          NavigatorUtil.gotPage(context, RouterName.userHomePage);
        }),
        "".container().exp(),
        //搭讪按钮
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppImage().iconFlashRed.image(w: 16.w,h: 16.w,),
            ExTextView(S.of(context).text_35,
              color: AppColors.themeColor,
              size: AppSizes.contentFontSize,
            ).container(marginL: 2.w),
          ],
        ).container(
          h: 24,
          padL: 8.w,
          padR: 8.w,
          radius: 999,
          hasBorder: true,
          borderColor: AppColors.themeColor,
        ),
      ],
    ).onTap(() {
      App.eventBus.fire(SendInputEvent(1,"DynamicDetail"));
    });
  }


  //动态内容
  Widget _dynamicContentWidget(){
    List<String> photoList = List.generate(9, (index) => AppImage().tempBg);
    String videoUrl = "";
    int photoLen = photoList.length;
    int hidePhotoNum = photoLen-maxShowPhotoCount;//隐藏图片数量
    int showPhotoLen = min(photoLen, maxShowPhotoCount);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExTextView("跟你谈钱的老板才是好人，跟你谈理想的，都TM不想给你钱！",
          size: AppSizes.titleFontSize,
          maxLines: 99,
        ).onTap(() {
          App.eventBus.fire(SendInputEvent(1,"DynamicDetail"));
        }),
        //图片
        GridView.builder(
          itemCount: showPhotoLen,
          shrinkWrap: true,
          padding: EdgeInsets.only(top: 8),
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 4.w,
            mainAxisSpacing: 4.w,
          ),
          itemBuilder: (_,index){
            return Stack(
              children: [
                photoList[index].image(fit: BoxFit.fill).clipRRect(radius: 8.w),
                if(hidePhotoNum>0&&index==showPhotoLen-1) ExTextView("+$hidePhotoNum",
                  color: AppColors.white,
                  size: 16,
                ).container(radius: 8,align: Alignment.center,bgColor: AppColors.black.withOpacity(0.4)),
              ],
            ).onTap(() {
              App.eventBus.fire(SendInputEvent(1,"DynamicDetail"));
              NavigatorUtil.gotPage(context, RouterName.bigPhoto,param: {
                "photoList":photoList,
                "photoIndex":index,
              });
            });
          }
        ),
        //视频
        if(videoUrl.isNotEmpty) Stack(
          alignment: Alignment.center,
          children: [
            "".image(w: 200.w,h: 300,fit: BoxFit.contain).clipRRect(radius: 8.w),
            AppImage().iconPlayVideo.image(w: 48.w,h: 48.w,),
          ],
        ).container(w: 200.w,h: 300,marginT: 8,radius: 8,bgColor: AppColors.black.withOpacity(0.4)),
      ],
    ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,marginT: 12);
  }

  //当前位置
  Widget _locationWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppImage().iconLocationGray.image(w: 16.w,h: 16.w,).container(marginR: 2.w,),
        ExTextView("北京",
          color: AppColors.grayColor,
          size: 13,
        ),
      ],
    ).container(marginT: 8,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR).onTap(() {
      App.eventBus.fire(SendInputEvent(1,"DynamicDetail"));
    });
  }

  //点赞数、评论数、举报
  Widget _praiseCommentWidget(){
    return Row(
      children: [
        //点赞
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppImage().iconPraiseGray.image(w: 20.w,h: 20.w,),
            ExTextView(S.of(context).text_156(152),
              color: AppColors.grayColor,
            ).container(marginL: 2.w),
          ],
        ).onTap(() {
          App.eventBus.fire(SendInputEvent(1,"DynamicDetail"));
        }),
        "".container(w: 32.w,),
        //评论数
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppImage().iconEditGray.image(w: 20.w,h: 20.w,),
            ExTextView("343",
              color: AppColors.grayColor,
            ).container(marginL: 2.w),
          ],
        ).onTap(() {
          App.eventBus.fire(SendInputEvent(0,"DynamicDetail"));
        }),
        "".container(w: 32.w,),
        //举报
        if(!isSelf) Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppImage().iconHintGray.image(w: 20.w,h: 20.w,),
            ExTextView(S.of(context).text_57,
              color: AppColors.grayColor,
            ).container(marginL: 2.w),
          ],
        ).onTap(() {
          App.eventBus.fire(SendInputEvent(1,"DynamicDetail"));
          NavigatorUtil.gotPage(context, RouterName.report);
        }),
        "".container().exp(),
        //删除动态
        if(isSelf) Row(
          children: [
            AppImage().iconDeleteGray.image(w: 20.w,h: 20.w),
            ExTextView(S.of(context).text_94,
              size: 14,
              color: AppColors.grayColor,
            ).container(marginL: 2.w),
          ],
        ).onTap(() {
          App.eventBus.fire(SendInputEvent(1,"DynamicDetail"));
          CommonDialogUtil.showSureDialog(context,
              title: S.of(context).text_94,
              content: S.of(context).text_126,
              leftButtonText: S.of(context).text_127,
              rightButtonText: S.of(context).text_65,
              rightClickFunc: (){

              }
          );
        }),
      ],
    ).container(marginT: 12,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR).onTap(() {
      App.eventBus.fire(SendInputEvent(1,"DynamicDetail"));
    });
  }

  //评论总数
  Widget _commentTotalNumWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ExTextView(S.of(context).text_75,
          color: AppColors.textColor,
          size: AppSizes.titleFontSize,
          isRegular: false,
        ),
        ExTextView("(123)",
          color: AppColors.color_BBBBBB,
          size: 13,
        ).container(marginL: 4.w),
      ],
    ).container(h: 48,bgColor: AppColors.pageColor,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,).onTap(() {
      App.eventBus.fire(SendInputEvent(1,"DynamicDetail"));
    });
  }

  //评论列表
  Widget _commentWidget(){
    return ExListView(
      itemCount: 20,
      shrinkWrap: true,
      padding: EdgeInsets.only(left: AppSizes.pagePaddingLR,right: AppSizes.pagePaddingLR),
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: _commentItemWidget,
    );
  }

  //评论Item
  Widget _commentItemWidget(BuildContext _,int index){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppImage().iconTempAvatar.image(w: 36.w,h: 36.w,fit: BoxFit.fill).clipRRect(radius: 8).onTap(() {
          App.eventBus.fire(SendInputEvent(1,"DynamicDetail"));
          NavigatorUtil.gotPage(context, RouterName.userHomePage);
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
                  App.eventBus.fire(SendInputEvent(0,"DynamicDetail"));
                }),
                //举报
                AppImage().iconHintGray.image(w: 16.w,h: 16.w).container(marginL: 16.w).onTap(() {
                  App.eventBus.fire(SendInputEvent(1,"DynamicDetail"));
                  NavigatorUtil.gotPage(context, RouterName.report);
                }),
              ],
            ),
            //当前评论内容
            ExTextView("小妹讲的很有道理，老哥我听的受益匪浅，希望有时间可以聊聊",
              maxLines: 10,
            ).container(marginT: 8),
            //当前评论的评论列表
            Column(
              children: List.generate(3, (index) {
                //查看更多评论
                if(index==2) return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ExTextView(S.of(context).text_56(4),
                      color: AppColors.manColor,
                      size: 13,
                    ),
                    AppImage().iconArrowRight.image(w: 16.w,h: 16.w,).container(marginL: 4.w),
                  ],
                ).onTap(() {
                  App.eventBus.fire(SendInputEvent(1,"DynamicDetail"));
                  SquareDialogUtil.showCommentListDialog(context);
                });
                //评论显示
                else return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ExTextView("山泉的妹妹:",
                      color: AppColors.textColor,
                      size: 13,
                    ),
                    ExTextView(S.of(context).text_55,
                      color: AppColors.white,
                      size: 10,
                    ).container(padL: 4.w,padR: 4.w,padT: 1,padB: 1,bgColor: AppColors.themeColor,radius: 2.w,marginL: 4.w),
                    ExTextView("谢谢老哥评论！",
                      color: AppColors.grayColor,
                      size: 13,
                    ).container(marginL: 4.w),
                  ],
                ).container(marginB: 8);
              }),
            ).container(marginT: 8,pad: 8.w,radius: 4.w,bgColor: AppColors.pageGrayColor),
            "".container(h: 0.5,bgColor: AppColors.borderColor,marginT: 16),
          ],
        ).container(marginL: 8.w).exp(),
      ],
    ).container(marginB: 16).onTap(() {
      App.eventBus.fire(SendInputEvent(1,"DynamicDetail"));
    });
  }


}
