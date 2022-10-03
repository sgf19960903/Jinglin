/// 动态
/// @Author Tongzongwen
/// @Date 2022/9/27 21:50
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/dialog/common_dialog_util.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';



class ExDynamicWidget extends StatefulWidget {
  ExDynamicWidget(this.index,{
    Key? key,
    this.isSelf = false,
    this.showUserInfo = true,
  }) : super(key: key);
  int index = 0;
  int praiseCount =0;//点赞数
  bool readyPraise = false;//是否已经点赞
  bool isSelf = false;//是否为当前用户动态
  bool showUserInfo = true;//是否显示用户信息

  @override
  State<ExDynamicWidget> createState() => _ExDynamicWidgetState();
}

class _ExDynamicWidgetState extends State<ExDynamicWidget> {


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        if(!widget.isSelf&&widget.showUserInfo) _userInfoWidget(context),
        _contentWidget(context).onTap(() {
          NavigatorUtil.gotPage(context, RouterName.dynamicDetail);
        }),
        _locationWidget(),
        _praiseCommentWidget(context),
        "".container(h: 0.5,bgColor: AppColors.borderColor,marginT: 12,marginB: 16,),
      ],
    )/*.onTap(() {
      NavigatorUtil.gotPage(context, RouterName.dynamicDetail);
    })*/;
  }

  //用户信息、搭讪按钮
  Widget _userInfoWidget(BuildContext context){
    return Row(
      children: [
        Row(
          children: [
            AppImage().iconWechat.image(w: 36.w,h: 36.w,),
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
            ).container(marginL: 12.w)
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
        ).onTap(() {

        }),
      ],
    ).onTap(() {
      NavigatorUtil.gotPage(context, RouterName.dynamicDetail);
    }).container(marginB: 12);
  }


  //图片展示
  Widget _photoWidget(BuildContext context,List<String> photoList){
    int len = photoList.length;
    //按图片数量返回布局
    double photoSize = 0;
    double smallPhotoSize = 0;

    if(len==1) {//一张图片
      photoSize = 180.w;
      return photoList[0].image(w: photoSize,h: photoSize,fit: BoxFit.fill).clipRRect(radius: 8).container(marginT: 8).onTap(() {
        NavigatorUtil.gotPage(context, RouterName.bigPhoto,param: {
          "photoList":photoList,
          "photoIndex":0,
        });
      });
    } else if(len==2) {//两张图片
      photoSize = 140.w;
      return Row(
        children: [
          photoList[0].image(w: photoSize,h: photoSize,fit: BoxFit.fill).clipRRect(radius: 8).onTap(() {
            NavigatorUtil.gotPage(context, RouterName.bigPhoto,param: {
              "photoList":photoList,
              "photoIndex":0,
            });
          }),
          "".container(w: 4.w),
          photoList[1].image(w: photoSize,h: photoSize,fit: BoxFit.fill).clipRRect(radius: 8).onTap(() {
            NavigatorUtil.gotPage(context, RouterName.bigPhoto,param: {
              "photoList":photoList,
              "photoIndex":1,
            });
          }),
        ],
      ).container(marginT: 8);
    } else if(len>=3) {//三张以上图片
      photoSize = 180.w;
      smallPhotoSize = 88.w;
      int hidePhotoNum = len - 3;
      return Row(
        children: [
          //第一张图
          photoList[0].image(w: photoSize,h: photoSize,fit: BoxFit.fill).clipRRect(radius: 8).onTap(() {
            NavigatorUtil.gotPage(context, RouterName.bigPhoto,param: {
              "photoList":photoList,
              "photoIndex":0,
            });
          }),
          "".container(w: 4.w),
          //第二张、第三张
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              photoList[1].image(w: smallPhotoSize,h: smallPhotoSize,fit: BoxFit.fill).clipRRect(radius: 8).onTap(() {
                NavigatorUtil.gotPage(context, RouterName.bigPhoto,param: {
                  "photoList":photoList,
                  "photoIndex":1,
                });
              }),
              "".container(h: 4.w),
              //显示隐藏了多少张图片
              Stack(
                children: [
                  photoList[2].image(w: smallPhotoSize,h: smallPhotoSize,fit: BoxFit.fill).clipRRect(radius: 8),
                  if(hidePhotoNum>0) ExTextView("+$hidePhotoNum",
                    color: AppColors.white,
                    size: 16,
                  ).container(w: smallPhotoSize,h: smallPhotoSize,radius: 8,align: Alignment.center,bgColor: AppColors.black.withOpacity(0.4)),
                ],
              ).onTap(() {
                NavigatorUtil.gotPage(context, RouterName.bigPhoto,param: {
                  "photoList":photoList,
                  "photoIndex":2,
                });
              }),
            ],
          ),
        ],
      ).container(marginT: 8);
    }
    return Container();
  }


  //视频展示
  Widget _videoWidget(String videoImg){
    if(videoImg.isEmpty) return Container();
    return Stack(
      alignment: Alignment.center,
      children: [
        "".image(w: 200.w,h: 300,fit: BoxFit.contain).clipRRect(radius: 8.w),
        AppImage().iconPlayVideo.image(w: 48.w,h: 48.w,),
      ],
    ).container(w: 200.w,h: 300,marginT: 8,radius: 8,bgColor: AppColors.black.withOpacity(0.4));
  }



  //动态内容
  Widget _contentWidget(BuildContext context){
    List<String> photoList = List.generate(5, (index) => AppImage().tempBg);
    String videoImg = "";
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExTextView("跟你谈钱的老板才是好人，跟你谈理想的，都TM不想给你钱！",
          color: AppColors.textColor,
          size: 16,
          maxLines: 99,
        ),
        //图片
        _photoWidget(context,photoList),
        //视频
        _videoWidget(videoImg),
      ],
    );
  }

  //当前位置
  Widget _locationWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppImage().iconLocationGray.image(w: 16.w,h: 16.w,).container(marginR: 2.w,),
        ExTextView("北京",
          color: AppColors.grayColor,
          size: 12,
        ),
      ],
    ).container(marginT: 8);
  }

  //点赞数、评论数、举报
  Widget _praiseCommentWidget(BuildContext context){
    return Row(
      children: [
        //点赞
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            "${widget.readyPraise?AppImage().iconPraiseRed:AppImage().iconPraiseGray}".image(w: 20.w,h: 20.w,),
            ExTextView(S.of(context).text_156(widget.praiseCount),
              color: widget.readyPraise?AppColors.themeColor:AppColors.grayColor,
            ).container(marginL: 2.w),
          ],
        ).onTap(() {
          setState(() {
            if(widget.readyPraise) --widget.praiseCount;
            else ++widget.praiseCount;
            widget.readyPraise = !widget.readyPraise;
          });
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
          NavigatorUtil.gotPage(context, RouterName.dynamicDetail);
        }),
        "".container(w: 32.w,),
        //举报
        if(!widget.isSelf) Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppImage().iconHintGray.image(w: 20.w,h: 20.w,),
            ExTextView(S.of(context).text_57,
              color: AppColors.grayColor,
            ).container(marginL: 2.w),
          ],
        ).onTap(() {
          NavigatorUtil.gotPage(context, RouterName.report);
        }),
        "".container().exp(),
        //删除动态
        if(widget.isSelf) Row(
          children: [
            AppImage().iconDeleteGray.image(w: 20.w,h: 20.w),
            ExTextView(S.of(context).text_94,
              size: 14,
              color: AppColors.grayColor,
            ).container(marginL: 2.w),
          ],
        ).onTap(() {
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
    ).container(marginT: 12);
  }


}



