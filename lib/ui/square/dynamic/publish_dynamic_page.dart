/// 发布动态页
/// @Author Tongzongwen
/// @Date 2022/9/28 5:56 下午
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jinglin/common/utils/camera_util.dart';
import 'package:jinglin/common/utils/dialog/common_dialog_util.dart';
import 'package:jinglin/common/utils/dialog/square_dialog_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/provider/square/publish_dynamic_provider.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_text_field.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:provider/provider.dart';
// import 'package:wechat_assets_picker/wechat_assets_picker.dart';
import 'package:wechat_camera_picker/wechat_camera_picker.dart';

class PublishDynamicPage extends StatefulWidget {
  const PublishDynamicPage({Key? key}) : super(key: key);

  @override
  State<PublishDynamicPage> createState() => _PublishDynamicPageState();
}

class _PublishDynamicPageState extends BaseState<PublishDynamicPage> {
  PublishDynamicProvider _provider = PublishDynamicProvider();


  @override
  void dispose() {
    _provider.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider.value(
      value: _provider,
      child: widgetBuild(
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
      ),
    );
  }

  //发布按钮
  Widget _publishWidget(){
    return Selector(
      builder: (_,bool canPublish,child){
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
            gradient: LinearGradient(colors: [
              AppColors.gradientButtonBeginColor.withOpacity(canPublish?1:0.3),
              AppColors.gradientButtonEndColor.withOpacity(canPublish?1:0.3),
            ])
        ).onTap(() {
          if(!canPublish) return;
        });
      },
      selector: (_,PublishDynamicProvider p) => p.canPublish
    );
  }


  //内容输入框
  Widget _contentInputWidget(){
    return Stack(
      alignment: Alignment.bottomRight,
      children: [
        ExTextFiled(
          controller: _provider.contentController,
          onChanged: _provider.textChanged,
          hintText: S.of(context).text_74,
          hintTextColor: AppColors.color_BBBBBB,
          hintTextSize: 16,
          textSize: 16,
          maxLines: 99,
          formatters: [LengthLimitingTextInputFormatter(_provider.maxInputLen)],
        ),
        Selector(
          builder: (_,int inputContentLen,child){
            return ExTextView("$inputContentLen/${_provider.maxInputLen}",
              size: 12,
              color: AppColors.color_BBBBBB,
            );
          },
          selector: (_,PublishDynamicProvider p) => p.inputContentLen
        ).container(marginR: 8.w,marginB: 8.w),
      ],
    ).container(h: 107,marginT: 16);
  }

  //添加图片或视频
  Widget _photoOrVideoWidget(){
    String videoImg = "";
    return Wrap(
      // crossAxisAlignment: CrossAxisAlignment.start,
      runSpacing: 12,
      children: [
        //图片列表
        Selector(
          builder: (_,int photoLen,child){
            return GridView.builder(
              itemCount: photoLen + 1,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 12.w,
                mainAxisSpacing: 12.w,
              ),
              itemBuilder: (_,index){
                if(index==photoLen) return Column(
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
                  CommonDialogUtil.showChoiceDialog(context, [S.of(context).text_37,S.of(context).text_38],selectedFunc: (index) async{
                    List<AssetEntity> fileList = [];
                    if(index==0) {//拍摄
                      AssetEntity? entity = await CameraPicker.pickFromCamera(context,
                        enableRecording: true,
                      );
                      if(entity!=null) fileList.add(entity);
                    } else if(index==1) {//从相册选择
                      // List<AssetEntity>? entityList = await AssetPicker.pickAssets(context,);
                      // if(entityList!=null) fileList.addAll(entityList);
                    }
                    // //没有获取到图片
                    // if(photoFile==null) return;
                    // _provider.addOrRemovePhoto(photoFile);
                  });
                });
                return Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    "${_provider.photoList[index].path}".image(w: 100.w,h: 100.w,fit: BoxFit.cover).clipRRect(radius: 12),
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
                );
              }
            );
          },
          selector: (_,PublishDynamicProvider p) => p.photoList.length
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
        // Column(
        //   crossAxisAlignment: CrossAxisAlignment.center,
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   children: [
        //     AppImage().iconAdd.image(w: 28.w,h: 28.w,),
        //     ExTextView(S.of(context).text_67,
        //       color: AppColors.textColor,
        //       size: 13,
        //     ).container(marginT: 1)
        //   ],
        // ).container(w: 100.w,h: 100.w,radius: 12,bgColor: AppColors.pageGrayColor,).onTap(() {
        //   CommonDialogUtil.showChoiceDialog(context, [S.of(context).text_37,S.of(context).text_38],selectedFunc: (index) async{
        //     // AssetPicker.pickAssets(context,);
        //     XFile? photoFile;
        //     //拍摄
        //     if(index==0) photoFile = await CameraUtil.takePhoto();
        //     //相册
        //     else if(index==1) photoFile = await CameraUtil.openGallery();
        //     //没有获取到图片
        //     if(photoFile==null) return;
        //     _provider.addOrRemovePhoto(photoFile);
        //   });
        // }),

      ],
    ).container(padT: 12,padB: 16);
  }

}
