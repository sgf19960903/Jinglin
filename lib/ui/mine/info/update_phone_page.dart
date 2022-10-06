/// 修改手机号
/// @Author Tongzongwen
/// @Date 2022/9/29 21:19
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/provider/mine/update_phone_provider.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_text_field.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';
import 'package:provider/provider.dart';

class UpdatePhonePage extends StatefulWidget {
  const UpdatePhonePage({Key? key}) : super(key: key);

  @override
  State<UpdatePhonePage> createState() => _UpdatePhonePageState();
}

class _UpdatePhonePageState extends BaseState<UpdatePhonePage> {
  UpdatePhoneProvider _provider = UpdatePhoneProvider();


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
              ExTextView("18373603863".hideCenterPhone(),
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
      ),
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
          controller: _provider.phoneController,
          onChanged: _provider.textChanged,
          hintText: S.of(context).text_98,
          hintTextSize: 16,
          textSize: 16,
          textAlign: TextAlign.right,
          keyboardType: TextInputType.number,
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
              controller: _provider.verifyCodeController,
              onChanged: _provider.textChanged,
              hintText: S.of(context).text_11,
              hintTextSize: 16,
              textSize: 16,
              textAlign: TextAlign.right,
              keyboardType: TextInputType.number,
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
        Selector(
          builder: (_,int countDown,child){
            return ExTextView(countDown==-1?S.of(context).text_6:S.of(context).text_161(countDown),
              size: 16,
              color: countDown==-1?AppColors.manColor:AppColors.color_BBBBBB,
              isRegular: false,
            );
          },
          selector: (_,UpdatePhoneProvider p) => p.countDown
        ).container(
          w: 115.w,
          h: double.infinity,
          radius: 8,
          bgColor: AppColors.white,
          align: Alignment.center
        ).onTap(() {
          FocusScope.of(context).unfocus();
          _provider.catchVerifyCode();
        }),
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
    return Selector(
      builder: (_,bool canUpdate,child){
        return ExTextView(S.of(context).text_100,
          color: AppColors.white,
        ).container(
            h: AppSizes.buttonHeight,
            radius: 8,
            align: Alignment.center,
            bgColor: AppColors.white,
            gradient: LinearGradient(colors: [
              AppColors.gradientButtonBeginColor.withOpacity(canUpdate?1:0.5),
              AppColors.gradientButtonEndColor.withOpacity(canUpdate?1:0.5),
            ])
        );
      },
      selector: (_,UpdatePhoneProvider p) => p.canUpdate
    ).onTap(() {
      FocusScope.of(context).unfocus();
      if(!_provider.canUpdate) return;
    }).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,padT: 6,padB: 26+paddingBottom,bgColor: AppColors.white);
  }

}

