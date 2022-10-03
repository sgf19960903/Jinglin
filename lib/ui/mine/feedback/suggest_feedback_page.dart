/// 意见反馈
/// @Author Tongzongwen
/// @Date 2022/9/29 21:15
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/common/utils/camera_util.dart';
import 'package:jinglin/common/utils/dialog/common_dialog_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/provider/mine/suggest_feedback_provider.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_text_field.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';
import 'package:provider/provider.dart';


class SuggestFeedbackPage extends StatefulWidget {
  const SuggestFeedbackPage({Key? key}) : super(key: key);

  @override
  State<SuggestFeedbackPage> createState() => _SuggestFeedbackPageState();
}

class _SuggestFeedbackPageState extends BaseState<SuggestFeedbackPage> {
  SuggestFeedbackProvider _provider = SuggestFeedbackProvider();


  @override
  void dispose() {
    _provider.dispose();
    _provider.suggestInputController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _provider,
      child: widgetBuild(
        bgColor: AppColors.pageGrayColor,
        appBar: ExTitleView(
          title: S.of(context).text_83,
          titleCenter: true,
        ),
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  _suggestContentWidget(),
                  _photoLoadWidget(),
                ],
              ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR),
            ).exp(),
            _commitWidget(),
          ],
        ),
      ),
    );
  }


  //反馈内容
  Widget _suggestContentWidget(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //反馈内容说明
        ExTextView(S.of(context).text_121,
          isRegular: false,
        ),
        //反馈内容输入框
        Stack(
          alignment: Alignment.bottomRight,
          children: [
            ExTextFiled(
              controller: _provider.suggestInputController,
              onChanged: _provider.suggestChanged,
              hintText: S.of(context).text_122,
              hintTextColor: AppColors.color_BBBBBB,
              padding: EdgeInsets.zero,
              maxLines: 10,
              formatters: [LengthLimitingTextInputFormatter(_provider.maxInputLen)],
            ).container(pad: 16.w),
            //字数记录
            Selector(
              builder: (_,int inputLen,child){
                return ExTextView("$inputLen/${_provider.maxInputLen}",
                  size: 12,
                  color: AppColors.color_BBBBBB,
                );
              },
              selector: (_,SuggestFeedbackProvider p) => p.suggestInputLen
            ).container(marginR: 8.w,marginB: 8.w),
          ],
        ).container(h: 100,marginT: 12,radius: 12,bgColor: AppColors.pageColor),
      ],
    ).container(marginT: 16);
  }


  //图片上传
  Widget _photoLoadWidget(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //图片上传最大数量说明
        Row(
          children: [
            ExTextView(S.of(context).text_63,
              isRegular: false,
            ),
            ExTextView("(${S.of(context).text_60})",
              color: AppColors.grayColor,
            ).container(marginL: 4.w).exp(),
            ExTextView(S.of(context).text_64("3"),
              color: AppColors.grayColor,
            )
          ],
        ),
        //图片列表
        Selector(
          builder: (_,int photoLen,child){
            return Row(
              children: [
                //图片列表
                Row(
                  children: List.generate(photoLen, (index) {
                    return Stack(
                      alignment: Alignment.bottomCenter,
                      children: [
                        //图片
                        "${_provider.photoList[index].path}".image(w: 100.w,h: 100.w,fit: BoxFit.contain).clipRRect(radius: 12).container(bgColor: AppColors.white,radius: 12),
                        //移除
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            AppImage().iconDelete.image(w: 16.w,h: 16.w,),
                            ExTextView(S.of(context).text_65,
                              color: AppColors.white,
                            ).container(marginL: 2.w)
                          ],
                        ).container(h: 24,bgColor: AppColors.black.withOpacity(0.4),bottomLeftRadius: 12,bottomRightRadius: 12).onTap(() {
                          _provider.addOrRemovePhoto(_provider.photoList[index]);
                        }),
                      ],
                    ).container(w: 100.w,h: 100.w,marginR: index==2?0:12.w);
                  }),
                ),
                //上传按钮
                if(photoLen<3) Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppImage().iconAdd.image(w: 28.w,h: 28.w,),
                    ExTextView(S.of(context).text_67,
                      color: AppColors.textColor,
                      size: 13,
                    ).container(marginT: 1)
                  ],
                ).container(w: 100.w,h: 100.w,radius: 12,bgColor: AppColors.white,).onTap(() {
                  CommonDialogUtil.showChoiceDialog(context, [S.of(context).text_37,S.of(context).text_38],selectedFunc: (index) async{
                    XFile? photoFile;
                    //拍摄
                    if(index==0) photoFile = await CameraUtil.takePhoto();
                    //相册
                    else if(index==1) photoFile = await CameraUtil.openGallery();
                    //没有获取到图片
                    if(photoFile==null) return;
                    _provider.addOrRemovePhoto(photoFile);
                  });
                }),

              ],
            );
          },
          selector: (_,SuggestFeedbackProvider p) => p.photoList.length
        ).container(marginT: 12)
      ],
    ).container(marginT: 16);
  }

  //提交按钮
  Widget _commitWidget(){
    return Selector(
      builder: (_,int inputLen,child){
        return ExTextView(S.of(context).text_66,
          color: AppColors.white,
        ).container(
            h: AppSizes.buttonHeight,
            radius: 8,
            align: Alignment.center,
            bgColor: AppColors.white,
            gradient: LinearGradient(
              colors: [
                AppColors.gradientButtonBeginColor.withOpacity(inputLen==0?0.3:1),
                AppColors.gradientButtonEndColor.withOpacity(inputLen==0?0.3:1),
              ],
            )
        ).onTap(() {
          if(inputLen==0) return;
        });
      },
        selector: (_,SuggestFeedbackProvider p) => p.suggestInputLen
    ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,padT: 6,padB: 26+paddingBottom,bgColor: AppColors.white);
  }

}
