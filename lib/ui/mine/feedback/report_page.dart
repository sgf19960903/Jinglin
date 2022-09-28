/// 举报页
/// @Author Tongzongwen
/// @Date 2022/9/28 5:59 下午
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_text_field.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';


class ReportPage extends StatefulWidget {
  const ReportPage({Key? key}) : super(key: key);

  @override
  State<ReportPage> createState() => _ReportPageState();
}

class _ReportPageState extends BaseState<ReportPage> {

  @override
  Widget build(BuildContext context) {
    return widgetBuild(
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
        Column(
          children: List.generate(typeList.length, (index) {
            return Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                "${index==0?AppImage().iconSelected:AppImage().iconNotSelected}".image(w: 20.w,h: 20.w),
                ExTextView(typeList[index],
                  isRegular: false,
                  size: 16,
                ).container(marginL: 14.w)
              ],
            ).container(h: 56,pad: 16.w);
          }),
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
        Row(
          children: [
            //图片列表
            Row(
              children: List.generate(2, (index) {
                return Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    AppImage().iconWechat.image(w: 100.w,h: 100.w,fit: BoxFit.fill).clipRRect(radius: 12),
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
            ).container(w: 100.w,h: 100.w,radius: 12,bgColor: AppColors.white,),

          ],
        ).container(marginT: 12)
      ],
    ).container(marginT: 16);
  }

  //提交按钮
  Widget _commitWidget(){
    return ExTextView(S.of(context).app_name,
      color: AppColors.white,
    ).container(
      h: AppSizes.buttonHeight,
      radius: 8,
      align: Alignment.center,
      bgColor: AppColors.white,
      gradient: LinearGradient(colors: [AppColors.gradientButtonBeginColor,AppColors.gradientButtonEndColor])
    ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,padT: 6,padB: 6+paddingBottom,bgColor: AppColors.white);
  }

}
