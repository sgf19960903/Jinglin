/// 举报页
/// @Author Tongzongwen
/// @Date 2022/9/28 5:59 下午
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/common/utils/camera_util.dart';
import 'package:jinglin/common/utils/dialog/common_dialog_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/provider/mine/report_provider.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_text_field.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';
import 'package:provider/provider.dart';


class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends BaseState<ReportPage> {
  ReportProvider _provider = ReportProvider();


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
          title: S.of(context).text_57,
          titleCenter: true,
        ),
        child: Column(
          children: [
            SingleChildScrollView(
              child: Column(
                children: [
                  _reportTypeWidget(),
                  _reportReasonWidget(),
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

  //举报类型
  Widget _reportTypeWidget(){
    List<String> typeList = [S.of(context).text_68,S.of(context).text_69,
      S.of(context).text_70,S.of(context).text_71,S.of(context).text_72,];
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //举报类型说明
        Row(
          children: [
            ExTextView(S.of(context).text_58,
              isRegular: false,
            ),
            ExTextView("(${S.of(context).text_59})",
              color: AppColors.themeColor,
            ).container(marginL: 4.w),
          ],
        ),
        //类型选择
        Selector(
          builder: (_,int reportTypeIndex,child){
            return Column(
              children: List.generate(typeList.length, (index) {
                return Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    "${index==reportTypeIndex?AppImage().iconSelected:AppImage().iconNotSelected}".image(w: 20.w,h: 20.w),
                    ExTextView(typeList[index],
                      isRegular: false,
                      size: 16,
                    ).container(marginL: 14.w)
                  ],
                ).container(h: 56,pad: 16.w).onTap(() {
                  _provider.changeReportTypeIndex(index);
                });
              }),
            );
          },
          selector: (_,ReportProvider p) => p.reportTypeIndex
        ).container(marginT: 12,radius: 12,bgColor: AppColors.pageColor)
      ],
    ).container(marginT: 16);
  }

  //举报理由
  Widget _reportReasonWidget(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //举报理由说明
        Row(
          children: [
            ExTextView(S.of(context).text_61,
              isRegular: false,
            ),
            ExTextView("(${S.of(context).text_60})",
              color: AppColors.grayColor,
            ).container(marginL: 4.w),
          ],
        ),
        //理由输入框
        ExTextFiled(
          hintText: S.of(context).text_62,
          hintTextColor: AppColors.color_BBBBBB,
          padding: EdgeInsets.zero,
          maxLines: 10,
        ).container(h: 100,marginT: 12,pad: 16.w,radius: 12,bgColor: AppColors.pageColor),
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
            selector: (_,ReportProvider p) => p.photoList.length
        ).container(marginT: 12)
      ],
    ).container(marginT: 16);
  }

  //提交按钮
  Widget _commitWidget(){
    return Selector(
      builder: (_,int reportTypeIndex,child){
        return ExTextView(S.of(context).text_66,
          color: AppColors.white,
          size: 16,
          isRegular: false,
        ).container(
          h: AppSizes.buttonHeight,
          radius: 8,
          align: Alignment.center,
          bgColor: AppColors.white,
          gradient: LinearGradient(colors: [
            AppColors.gradientButtonBeginColor.withOpacity(reportTypeIndex==-1?0.3:1),
            AppColors.gradientButtonEndColor.withOpacity(reportTypeIndex==-1?0.3:1),
          ])
        ).onTap(() {
          if(reportTypeIndex==-1) return;

        });
      },
      selector: (_,ReportProvider p) => p.reportTypeIndex
    ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,padT: 6,padB: 26+paddingBottom,bgColor: AppColors.white);
  }

}
