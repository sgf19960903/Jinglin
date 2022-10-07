/// 发布动态页
/// @Author Tongzongwen
/// @Date 2022/9/28 5:56 下午
/// @Description TODO

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jinglin/common/utils/camera_util.dart';
import 'package:jinglin/common/utils/dialog/common_dialog_util.dart';
import 'package:jinglin/common/utils/dialog/square_dialog_util.dart';
import 'package:jinglin/common/utils/toast_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/provider/square/publish_dynamic_provider.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_text_field.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/ui/widgets/ex_video_widget.dart';
import 'package:provider/provider.dart';
import 'package:wechat_assets_picker/wechat_assets_picker.dart';
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
            bottomLine: false,
            actionWidgets: [
              _publishWidget(),
            ],
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _contentInputWidget(),
                "".container(h: 0.4,bgColor: AppColors.borderColor,marginT: 12),
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
            gradient: canPublish?LinearGradient(colors: [
              AppColors.gradientButtonBeginColor,
              AppColors.gradientButtonEndColor,
            ]) : null
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
    return Selector(
      builder: (_,AssetType? assetType,child){
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //图片列表
            if(assetType==null||assetType==AssetType.image) Selector(
                builder: (_,int photoLen,child){
                  return GridView.builder(
                      itemCount: photoLen==9?photoLen:photoLen + 1,
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3,
                        crossAxisSpacing: 12.w,
                        mainAxisSpacing: 12.w,
                      ),
                      itemBuilder: (_,index){
                        if(index==photoLen&&index!=9) return Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AppImage().iconAdd.image(w: 28.w,h: 28.w,),
                          ],
                        ).container(w: 100.w,h: 100.w,radius: 12,bgColor: AppColors.pageGrayColor,).onTap(() async{
                          CommonDialogUtil.showChoiceDialog(context, [S.of(context).text_37,S.of(context).text_38],selectedFunc: (index) async{
                            List<AssetEntity> fileList = [];
                            if(index==0) {//拍摄
                              AssetEntity? entity = await CameraPicker.pickFromCamera(context,
                                pickerConfig: CameraPickerConfig(
                                  enableRecording: true,
                                ),
                              );
                              //设置状态栏颜色
                              Future.delayed(Duration(milliseconds: 100),(){
                                SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
                              });
                              //判断拍摄的文件是否与文件列表中的类型一样
                              if(_provider.fileList.length>0) {
                                if(_provider.fileList[0].type!=entity?.type) return ToastUtil.showMsg(S.of(context).text_162);
                              }
                              if(entity!=null) fileList.add(entity);
                            } else if(index==1) {//从相册选择
                              List<AssetEntity>? entityList = await AssetPicker.pickAssets(context,
                                pickerConfig: AssetPickerConfig(
                                  selectedAssets: _provider.fileList,
                                  themeColor: AppColors.themeColor,
                                ),
                              );
                              //设置状态栏颜色
                              Future.delayed(Duration(milliseconds: 100),(){
                                SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
                              });
                              //判断选中的资源里面是否同时存在视频和图片
                              int hasPhoto = 0;
                              int hasVideo = 0;
                              entityList?.forEach((element) {
                                if(element.type==AssetType.image) hasPhoto = 1;
                                else if(element.type==AssetType.video) hasVideo = 1;
                              });
                              if(hasPhoto+hasVideo==2) return ToastUtil.showMsg(S.of(context).text_162);
                              //判断是否选择多个视频
                              if(hasVideo==1) {
                                int len = entityList?.length??0;
                                if(len>1) return ToastUtil.showMsg(S.of(context).text_163);
                              }
                              if(entityList!=null) fileList.addAll(entityList);
                              if(fileList.length==0) return;
                              _provider.fileList.clear();
                            }
                            // //没有获取到图片
                            if(fileList.length==0) return;
                            _provider.addOrRemovePhoto(fileList);
                          });
                        });
                        return Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            FutureBuilder<File?>(
                              future: _provider.fileList[index].file,
                              builder: (_,snap){
                                return "${snap.data?.path??""}".image(w: 100.w,h: 100.w,fit: BoxFit.cover).clipRRect(radius: 12);
                              },
                            ),
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
                              _provider.addOrRemovePhoto([_provider.fileList[index]]);
                            }),
                          ],
                        );
                      }
                  );
                },
                selector: (_,PublishDynamicProvider p) => p.fileList.length
            ),
            //视频
            if(assetType==AssetType.video) FutureBuilder<File?>(
              future: _provider.fileList[0].file,
              builder: (_,snap) {
                return Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    if(snap.data==null) Stack(
                      alignment: Alignment.center,
                      children: [
                        "${AppImage().iconPlayVideo}".image(w: 36.w,h: 36.w)
                      ],
                    ).container(w: 170.w,h: 238.w,bgColor: AppColors.black.withOpacity(0.8),radius: 12.w),
                    if(snap.data!=null) ExVideoWidget(
                      videoUrl: "${snap.data?.absolute.path??""}",
                    ),
                    //删除按钮
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppImage().iconDelete.image(w: 16.w,h: 16.w,),
                        ExTextView(S.of(context).text_65,
                          color: AppColors.white,
                        ).container(marginL: 2.w)
                      ],
                    ).container(w: 170.w,h: 24,bgColor: AppColors.black.withOpacity(0.4),bottomLeftRadius: 12,bottomRightRadius: 12).onTap(() {
                      _provider.addOrRemovePhoto(_provider.fileList);
                    }),
                  ],
                );
              },
            ).container(align: Alignment.centerLeft),

          ],
        );
      },
      selector: (_,PublishDynamicProvider p) => p.currentListType
    ).container(padT: 12,padB: 16);
  }

}
