/// 聊天信息
/// @Author Tongzongwen
/// @Date 2022/10/1 19:18
/// @Description TODO

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jinglin/application/app.dart';
import 'package:jinglin/bean/event/send_input_event.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_video_widget.dart';


class ExChatMessageWidget extends StatelessWidget {
  ExChatMessageWidget({
    Key? key,
    this.isSelf = true,
  }) : super(key: key);
  bool isSelf;//是否为自己发送的消息

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _timeWidget(),
        _contentWidget(),
      ],
    ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR).onTap(() {
      App.eventBus.fire(SendInputEvent(1,"ChatSession"));
    });
  }


  //聊天时间
  Widget _timeWidget(){
    return ExTextView("10:25",
      size: 12,
      color: AppColors.color_BBBBBB,
    ).container(marginT: 16);
  }

  //聊天内容
  Widget _contentWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(!isSelf) AppImage().iconWechat.image(w: 36.w,h: 36.w).container(marginT: 4),
        "".container(w: 12.w),
        Column(
          crossAxisAlignment: isSelf?CrossAxisAlignment.end:CrossAxisAlignment.start,
          children: [
            _textContentWidget(),
            // _photoContentWidget(),
            // _videoContentWidget(),
          ],
        ).exp(),
        "".container(w: 12.w),
        if(isSelf) AppImage().iconWechat.image(w: 36.w,h: 36.w).container(marginT: 4),

      ],
    ).container(marginT: 12);
  }


  //文字内容
  Widget _textContentWidget(){
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Column(
          children: [
            ExTextView("你只看到有些人表面上风光无限却不知道，他们在背地里，也是顺风顺水呢。",
              maxLines: 10,
            ).container(
              pad: 8.w,
              topLeftRadius: isSelf?8:0,
              topRightRadius: isSelf?0:8,
              bottomLeftRadius: 8,
              bottomRightRadius: 8,
              bgColor: isSelf?AppColors.color_FFE0E6:AppColors.white,
              marginL: isSelf?63.w:0,
              marginT: 4,
            ),
            if(!isSelf) _incomeWidget(),
          ],
        ),
        if(!isSelf) AppImage().iconDiamondPurple.image(w: 12.w,h: 12.w),
      ],
    ).container(marginR: isSelf?0:67.w,);
  }

  //图片内容
  Widget _photoContentWidget(BuildContext context){
    return Column(
      children: List.generate(1, (index) {
        return Stack(
          alignment: Alignment.topRight,
          children: [
            Column(
              children: [
                AppImage().iconAlipay.image(w: 170.w,h: 238.w,fit: BoxFit.fill).container(
                  marginT: index==0?4:16,
                  marginR: 4.w,
                  align: isSelf?Alignment.centerRight:Alignment.centerLeft,
                ),
                if(!isSelf) _incomeWidget(),
              ],
            ),
            if(!isSelf) AppImage().iconDiamondPurple.image(w: 12.w,h: 12.w),
          ],
        ).container(w: 174.w,).onTap(() {
          App.eventBus.fire(SendInputEvent(1,"ChatSession"));
          NavigatorUtil.gotPage(context, RouterName.bigPhoto,param: {
            "photoList":[AppImage().iconAlipay],
            "photoIndex":index,
          });
        });
      }),
    );
  }

  //视频内容
  Widget _videoContentWidget(){
    return Column(
      children: List.generate(1, (index) {
        return Column(
          crossAxisAlignment: isSelf?CrossAxisAlignment.end:CrossAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                ExVideoWidget(
                  // videoUrl: "https://haokan.baidu.com/v?pd=wisenatural&vid=13044371044988382522",
                  videoUrl: "/data/user/0/com.zhonghaizhi.jinglin.jinglin/cache/image_picker8611768778119426668.mp4",
                ).container(
                  marginT: index==0?4:4,
                  marginR: 4.w,
                ),
                if(!isSelf) AppImage().iconDiamondPurple.image(w: 12.w,h: 12.w).positioned(top: 0,right: 0),
              ],
            ).container(
              w: 174.w,
              align: isSelf?Alignment.centerRight:Alignment.centerLeft,
            ),
            if(!isSelf) _incomeWidget(),
          ],
        ).container(marginT: index==0?0:12);
      }),
    );
  }

  //收益
  Widget _incomeWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppImage().iconCoin.image(w: 12.w,h: 12.w),
        ExTextView(S.current.text_155(0.2),
          size: 10,
        ).container(marginL: 1.w)
      ],
    ).container(marginT: 4,marginL: 3.w);
  }

}

