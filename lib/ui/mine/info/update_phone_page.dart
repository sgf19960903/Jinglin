/// 修改手机号
/// @Author Tongzongwen
/// @Date 2022/9/29 21:19
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_text_field.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';

class UpdatePhonePage extends StatefulWidget {
  const UpdatePhonePage({Key? key}) : super(key: key);

  @override
  State<UpdatePhonePage> createState() => _UpdatePhonePageState();
}

class _UpdatePhonePageState extends BaseState<UpdatePhonePage> {


  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      bgColor: AppColors.pageGrayColor,
      appBar: ExTitleView(
        titleCenter: true,
        title: S.of(context).text_95,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ExTextView(S.of(context).text_12,
            size: 16,
            isRegular: false,
          ).container(marginT: 97,align: Alignment.center),
          //当前手机号
          ExTextView("157****0813",
            size: 32,
            isBold: true,
          ).container(h: 44,marginT: 8,align: Alignment.center),
          //提示
          ExTextView(S.of(context).text_96,
            color: AppColors.color_FFA900,
          ).container(marginT: 8,align: Alignment.center),
          _phoneNumberInputWidget(),
          _verifyCodeWidget(),

          "".container().exp(),
          _updateButtonWidget(),
        ],
      )
    );
  }


  //手机号输入框
  Widget _phoneNumberInputWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ExTextView("${S.of(context).text_97}:",
          size: 16,
          color: AppColors.grayColor,
        ),
        ExTextView("+86",
          size: 16,
          isRegular: false,
        ).container(marginL: 8.w),
        ExTextFiled(
          hintText: S.of(context).text_98,
          hintTextSize: 16,
          textSize: 16,
          textAlign: TextAlign.right,
        ).exp(),
      ],
    ).container(
      h: 48,
      marginL: AppSizes.pagePaddingLR,
      marginR: AppSizes.pagePaddingLR,
      padL: AppSizes.pagePaddingLR,
      padR: AppSizes.pagePaddingLR,
      radius: 8,
      bgColor: AppColors.white,
      marginT: 20
    );
  }


  //验证码输入框
  Widget _verifyCodeWidget(){
    return Row(
      children: [
        //输入框
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ExTextView("${S.of(context).text_99}:",
              size: 16,
              color: AppColors.grayColor,
            ),
            ExTextFiled(
              hintText: S.of(context).text_11,
              hintTextSize: 16,
              textSize: 16,
              textAlign: TextAlign.right,
            ).exp(),
          ],
        ).container(
          padL: AppSizes.pagePaddingLR,
          padR: AppSizes.pagePaddingLR,
          radius: 8,
          bgColor: AppColors.white,
        ).exp(),
        "".container(w: 16.w),
        //获取验证码
        ExTextView(S.of(context).text_6,
          size: 16,
          color: AppColors.manColor,
          isRegular: false,
        ).container(
          w: 115.w,
          h: double.infinity,
          radius: 8,
          bgColor: AppColors.white,
          align: Alignment.center
        ),
      ],
    ).container(
        h: 48,
        marginL: AppSizes.pagePaddingLR,
        marginR: AppSizes.pagePaddingLR,
        marginT: 16
    );
  }

  //修改按钮
  Widget _updateButtonWidget(){
    return ExTextView(S.of(context).text_100,
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

