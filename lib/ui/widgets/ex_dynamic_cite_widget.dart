/// 动态引用
/// @Author Tongzongwen
/// @Date 2022/9/27 22:33
/// @Description TODO

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';


class ExDynamicCiteWidget extends StatelessWidget {
  const ExDynamicCiteWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _unameAndContentWidget(),
        _photoListWidget(),
        _videoWidget(),
      ],
    ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,padT: 10,padB: 8,bgColor: AppColors.pageGrayColor);
  }


  //用户名、内容
  Widget _unameAndContentWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ExTextView("木木大魔王：",isRegular: false,),
        ExTextView("我所认为，一个喜欢听轻音乐的人，是一个需要时间与自己独处的人，也是需要借助轻音乐来进行思绪沉淀的人。这样的人，或许是安静的，又或许他是一个孤独者，他并不寂寞。他很有气质，他会去倾听。当然，他可能是个沉默不善言辞的，但或许他的内心世界很丰富。但这一切，还是需要你去发现的!",
          maxLines: 1,
        ).exp(),
      ],
    );
  }

  //图片列表
  Widget _photoListWidget(){
    List<String> photoList = [];
    int allPhotoLen = photoList.length;
    int maxLen = 3;
    int showLen = min(allPhotoLen, maxLen);
    double photoSize = 80.w;
    if(showLen==0) return Container();
    return Row(
      children: List.generate(showLen, (index) {
        return Stack(
          children: [
            photoList[index].image(w: photoSize,h: photoSize,fit: BoxFit.fill).clipRRect(radius: 4.w),
            if(index==showLen-1&&allPhotoLen>maxLen) ExTextView("+${allPhotoLen-maxLen}",
              color: AppColors.white,
              size: 16,
            ).container(w: photoSize,h: photoSize,radius: 4.w,align: Alignment.center,bgColor: AppColors.black.withOpacity(0.4)),
          ],
        );
      }),
    ).container(h: photoSize,marginT: 10);
  }

  //视频
  Widget _videoWidget(){
    String videoImg = "";
    if(videoImg.isEmpty) return Container();
    return Stack(
      alignment: Alignment.center,
      children: [
        "".image(w: 80.w,h: 80.w,fit: BoxFit.contain).clipRRect(radius: 4.w),
        AppImage().iconPlayVideo.image(w: 24.w,h: 24.w,),
      ],
    ).container(w: 80.w,h: 80.w,marginT: 10,bgColor: Colors.red);
  }

}

