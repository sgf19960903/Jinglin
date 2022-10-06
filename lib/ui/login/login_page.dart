/// 登录页
/// @Author Tongzongwen
/// @Date 2022/9/29 21:03
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/common/utils/toast_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/provider/login/login_provider.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_text_field.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:provider/provider.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends BaseState<LoginPage> {
  LoginProvider _provider = LoginProvider();



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
        child: Column(
          children: [
            Stack(
              children: [
                AppImage().loginTopBg.image(w: double.infinity,h: 358,fit: BoxFit.fill),
                AppImage().loginHeaderOtherBg.image(w: screenWidth/2,h: 110).positioned(left: AppSizes.pagePaddingLR,top: 115),
                if(_provider.autoCatchPhoto) _firstLoginWidget(),
                if(!_provider.autoCatchPhoto) _commonLoginWidget(),
              ],
            ).exp(),
            if(_provider.autoCatchPhoto) _switchWidget().container(marginB: 20 + paddingBottom),
          ],
        ),
      ),
    );
  }

  //首次登录 --  检测手机号
  Widget _firstLoginWidget(){
    return Column(
      children: [
        ExTextView(S.of(context).text_12,
          size: 16,
          isRegular: false,
        ),
        ExTextView("157****0813",
          size: 32,
          isBold: true,
        ).container(marginT: 12),
        _loginButtonAndProtocolWidget().container(marginT: 31),
      ],
    ).container(marginT: 337);
  }

  //手机号登录
  Widget _commonLoginWidget(){
    return Column(
      children: [
        //手机号输入
        Row(
          children: [
            AppImage().iconPhoneGray.image(w: 24.w,h: 24.w,),
            ExTextFiled(
              controller: _provider.phoneController,
              onChanged: _provider.textChanged,
              padding: EdgeInsets.only(left: 12.w),
              hintTextSize: 16,
              textSize: 16,
              hintText: S.of(context).text_10,
              keyboardType: TextInputType.number,
            ).exp(),
          ],
        ).container(h: 48,radius: 8,bgColor: AppColors.white,marginL: AppSizes.pagePaddingLR,marginR: AppSizes.pagePaddingLR,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR),
        //验证码
        Row(
          children: [
            //验证码输入框
            Row(
              children: [
                AppImage().iconSecuritySafety.image(w: 24.w,h: 24.w,),
                ExTextFiled(
                  controller: _provider.verifyCodeController,
                  onChanged: _provider.textChanged,
                  padding: EdgeInsets.only(left: 12.w),
                  hintTextSize: 16,
                  textSize: 16,
                  hintText: S.of(context).text_11,
                  keyboardType: TextInputType.number,
                ).exp(),
              ],
            ).container(h: double.infinity,radius: 8,bgColor: AppColors.white,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR).exp(),
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
                selector: (_,LoginProvider p) => p.countDown
            ).container(w: 115.w,h: double.infinity,align: Alignment.center,radius: 8,bgColor: AppColors.white,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR).onTap(() {
              FocusScope.of(context).unfocus();
              _provider.catchVerifyCode();
            }),
          ],
        ).container(h: 48,marginT: 16,marginL: AppSizes.pagePaddingLR,marginR: AppSizes.pagePaddingLR,),
        _loginButtonAndProtocolWidget().container(marginT: 80),
      ],
    ).container(marginT: 302);
  }


  //登录按钮和协议勾选
  Widget _loginButtonAndProtocolWidget(){
    return Column(
      children: [
        Selector(
          builder: (_,bool canLogin,child){
            return ExTextView(S.of(context).text_0,
              color: AppColors.white,
              size: 16,
            ).container(
                h: 44,
                align: Alignment.center,
                radius: 8,
                marginL: AppSizes.pagePaddingLR,
                marginR: AppSizes.pagePaddingLR,
                bgColor: AppColors.white,
                gradient: LinearGradient(
                  colors: [
                    AppColors.gradientButtonBeginColor.withOpacity(canLogin?1:0.3)
                    ,AppColors.gradientButtonEndColor.withOpacity(canLogin?1:0.3),
                  ],
                )
            );
          },
          selector: (_,LoginProvider p) => p.canLogin
        ).onTap(() {
          FocusScope.of(context).unfocus();
          _provider.login(context);
        }),
        //勾选用户、隐私协议
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Selector(
              builder: (_,bool selected,child){
                return "${selected?AppImage().iconSelectedRectangle:AppImage().iconNoSelectedRectangle}".image(w: 16.w,h: 16.w);
              },
              selector: (_,LoginProvider p) => p.selectedProtocol
            ).onTap(() {
              FocusScope.of(context).unfocus();
              setState(() {
                _provider.selectedProtocol = !_provider.selectedProtocol;
              });
            }),
            ExTextView(S.of(context).text_7,
              size: 12,
            ).container(marginL: 4.w).onTap(() {
              FocusScope.of(context).unfocus();
              setState(() {
                _provider.selectedProtocol = !_provider.selectedProtocol;
              });
            }),
            ExTextView(" ${S.of(context).text_8}",
              size: 12,
              color: AppColors.manColor,
            ),
            ExTextView(" ${S.of(context).text_9}",
              size: 12,
              color: AppColors.manColor,
            ),
          ],
        ).container(marginT: 32),
      ],
    );
  }

  //切换手机号登录
  Widget _switchWidget(){
    return ExTextView(S.of(context).text_14,
      color: AppColors.themeColor,
    ).container(marginB: 16,marginT: 16).onTap(() {
      FocusScope.of(context).unfocus();
      setState(() {
        _provider.autoCatchPhoto = false;
        _provider.canLogin = false;
      });
    });
  }

}

