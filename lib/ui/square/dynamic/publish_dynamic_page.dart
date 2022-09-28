/// 发布动态页
/// @Author Tongzongwen
/// @Date 2022/9/28 5:56 下午
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/utils/dialog/common_dialog_util.dart';
import 'package:jinglin/common/utils/dialog/square_dialog_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_text_field.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';
import 'package:jinglin/common/res/res_path.dart';

class PublishDynamicPage extends StatefulWidget {
  const PublishDynamicPage({Key? key}) : super(key: key);

  @override
  State<PublishDynamicPage> createState() => _PublishDynamicPageState();
}

class _PublishDynamicPageState extends BaseState<PublishDynamicPage> {



  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      bgColor: AppColors.pageGrayColor,
      appBar: ExTitleView(
        actionWidgets: [
          _publishWidget(),
        ],
      ),
      child: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _contentInputWidget(),
            "".container(h: 0.5,bgColor: AppColors.borderColor),
            _photoOrVideoWidget(),
          ],
        ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,bgColor: AppColors.pageColor),
      )
    );
  }

  //发布按钮
  Widget _publishWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppImage().iconLocationWhite.image(w: 16.w,h: 16.w),
        ExTextView(S.of(context).text_73,
          size: 12,
          color: AppColors.white,
          isRegular: false,
        ).container(marginL: 2.w),
      ],
    ).container(
      w: 60.w,
      h: 32,
      radius: 99,
      bgColor: AppColors.buttonNotSelected,
      gradient: LinearGradient(colors: [AppColors.gradientButtonBeginColor,AppColors.gradientButtonEndColor])
    );
  }


  //内容输入框
  Widget _contentInputWidget(){
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        ExTextFiled(
          hintText: S.of(context).text_74,
          hintTextColor: AppColors.color_BBBBBB,
          hintTextSize: 16,
          textSize: 16,
          maxLines: 99,
        ),
        ExTextView("0/300",
          size: 12,
          color: AppColors.color_BBBBBB,
        ).container(marginR: 8.w,marginB: 8.w),
      ],
    ).container(h: 107,marginT: 16);
  }

  //添加图片或视频
  Widget _photoOrVideoWidget(){
    List<String> photoList = List.generate(0, (index) => AppImage().iconWechat);
    String videoImg = "";
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //图片列表
        if(photoList.length>0) Row(
          children: List.generate(photoList.length, (index) {
            return Stack(
              alignment: Alignment.bottomCenter,
              children: [
                photoList[index].image(w: 100.w,h: 100.w,fit: BoxFit.fill).clipRRect(radius: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppImage().iconDelete.image(w: 16.w,h: 16.w,),
                    ExTextView(S.of(context).text_65,
                      color: AppColors.white,
                    ).container(marginL: 2.w)
                  ],
                ).container(h: 24,bgColor: AppColors.black.withOpacity(0.4),bottomLeftRadius: 12,bottomRightRadius: 12),
              ],
            ).container(w: 100.w,h: 100.w,marginR: 12.w);
          }),
        ),
        //视频
        if(videoImg.isNotEmpty) Stack(
          alignment: Alignment.center,
          children: [
            "".image(w: 200.w,h: 300,fit: BoxFit.contain).clipRRect(radius: 8.w),
            AppImage().iconPlayVideo.image(w: 48.w,h: 48.w,),
          ],
        ).container(w: 200.w,h: 300,radius: 8,bgColor: AppColors.black.withOpacity(0.4)),
        //上传按钮
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AppImage().iconAdd.image(w: 28.w,h: 28.w,),
            ExTextView(S.of(context).text_67,
              color: AppColors.textColor,
              size: 13,
            ).container(marginT: 1)
          ],
        ).container(w: 100.w,h: 100.w,radius: 12,bgColor: AppColors.pageGrayColor,).onTap(() {
          CommonDialogUtil.showChoiceDialog(context, [S.of(context).text_37,S.of(context).text_38],selectedFunc: (index){

          });
        }),

      ],
    ).container(padT: 12,padB: 16);
  }

}
