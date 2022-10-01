/// 申请提现
/// @Author Tongzongwen
/// @Date 2022/9/29 21:29
/// @Description 女生申请提现

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_text_field.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';


class ApplyWithDrawPage extends StatefulWidget {
  const ApplyWithDrawPage({Key? key}) : super(key: key);

  @override
  State<ApplyWithDrawPage> createState() => _ApplyWithDrawPageState();
}

class _ApplyWithDrawPageState extends BaseState<ApplyWithDrawPage> {


  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      bgColor: AppColors.pageGrayColor,
      appBar: ExTitleView(
        titleCenter: true,
        title: S.of(context).text_80,
      ),
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ExTextView(S.of(context).text_109,
                color: AppColors.color_666666,
                size: 16,
              ).container(marginT: 12),
              //提现金额输入框
              Row(
                children: [
                  ExTextView("¥ ",
                    color: AppColors.textColor,
                    size: 16,
                    isBold: true,
                  ),
                  ExTextFiled(
                    hintText: "0.00",
                    hintTextSize: 24,
                    textSize: 24,
                    hintTextIsBold: true,
                    textIsBold: true,
                  ).exp(),
                  AppImage().iconEditGray.image(w: 20.w,h: 20.w),
                ],
              ).container(h: 56,marginT: 12,),
              "".container(h: 0.5,bgColor: AppColors.borderColor),
              //提现提示
              ExTextView(S.of(context).text_108,
                color: AppColors.grayColor,
                size: 13,
                maxLines: 10,
              ).container(marginT: 12,marginB: 12),
            ],
          ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,bgColor: AppColors.white),
          "".container().exp(),
          _commitButtonWidget(),
        ],
      )
    );
  }

  //提交按钮
  Widget _commitButtonWidget(){
    return ExTextView(S.of(context).text_66,
      color: AppColors.white,
    ).container(
        h: AppSizes.buttonHeight,
        radius: 8,
        align: Alignment.center,
        bgColor: AppColors.white,
        gradient: LinearGradient(colors: [AppColors.gradientButtonBeginColor,AppColors.gradientButtonEndColor])
    ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,padT: 6,padB: 26+paddingBottom,bgColor: AppColors.white);
  }

}

