/// 个人信息
/// @Author Tongzongwen
/// @Date 2022/9/29 21:18
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/dialog/common_dialog_util.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_text_field.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';


class PersonalInfoPage extends StatefulWidget {
  const PersonalInfoPage({Key? key}) : super(key: key);

  @override
  State<PersonalInfoPage> createState() => _PersonalInfoPageState();
}

class _PersonalInfoPageState extends BaseState<PersonalInfoPage> {


  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      bgColor: AppColors.pageGrayColor,
      appBar: ExTitleView(
        title: S.of(context).text_87,
        titleCenter: true,
      ),
      child: Column(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                _avatarWidget(),
                _userNameWidget(),
                _sexWidget(),
                _ageWidget(),
                _heightWidget(),
                _phoneNumberWidget(),
                _introduceWidget(),
              ],
            ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR),
          ).exp(),
          _updateButtonWidget(),
        ],
      )
    );
  }

  //头像设置
  Widget _avatarWidget(){
    return Stack(
      children: [
        AppImage().iconWechat.image(w: 90.w,h: 90.w,).clipRRect(radius: 8).container(marginL: 10.w,marginR: 10.w,marginB: 5),
        AppImage().iconCameraCircle.image(w: 20.w,h: 20.w).positioned(bottom: 0,right: 0,),
      ],
    ).onTap(() {
      CommonDialogUtil.showChoiceDialog(context, [S.of(context).text_37,S.of(context).text_38],selectedFunc: (index){

      });
    }).container(marginT: 24,align: Alignment.center);
  }


  //用户名
  Widget _userNameWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ExTextView(S.of(context).text_19,
          color: AppColors.grayColor,
          size: 16,
        ).container(marginR: 8.w),
        ExTextFiled(
          hintText: S.of(context).text_22,
          hintTextSize: 16,
          textSize: 16,
          hintTextColor: AppColors.color_BBBBBB,
          textAlign: TextAlign.right,
        ).exp(),
      ],
    ).container(h: 48,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,marginT: 20,radius: 8,bgColor: AppColors.white);
  }


  //性别
  Widget _sexWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ExTextView(S.of(context).text_92,
          color: AppColors.grayColor,
          size: 16,
        ),
        ExTextView("(${S.of(context).text_90})",
          color: AppColors.color_BBBBBB,
          size: 14,
        ).container(marginL: 4.w),
        ExTextView(S.of(context).text_135,
          color: AppColors.grayColor,
          size: 16,
          textAlign: TextAlign.right,
        ).exp(),
      ],
    ).container(h: 48,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,marginT: 16,radius: 8,bgColor: AppColors.white);
  }


  //年龄
  Widget _ageWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ExTextView(S.of(context).text_20,
          color: AppColors.grayColor,
          size: 16,
        ),
        ExTextView("27岁",
          color: AppColors.textColor,
          size: 16,
          textAlign: TextAlign.right,
        ).exp(),
        AppImage().iconArrowRight.image(w: 16.w,h: 16.w).container(marginL: 4.w),
      ],
    ).container(h: 48,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,marginT: 16,radius: 8,bgColor: AppColors.white).onTap(() {
      CommonDialogUtil.showDateChoiceDialog(context,);

    });
  }


  //身高
  Widget _heightWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ExTextView(S.of(context).text_21,
          color: AppColors.grayColor,
          size: 16,
        ),
        ExTextView("163cm",
          color: AppColors.textColor,
          size: 16,
          textAlign: TextAlign.right,
        ).exp(),
        AppImage().iconArrowRight.image(w: 16.w,h: 16.w).container(marginL: 4.w),
      ],
    ).container(h: 48,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,marginT: 16,radius: 8,bgColor: AppColors.white).onTap(() {
      CommonDialogUtil.showScrollChoiceDialog(context,List.generate(80, (index) => "${120+index}cm"),selectedIndex: 45);
    });
  }


  //手机号
  Widget _phoneNumberWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ExTextView(S.of(context).text_89,
          color: AppColors.grayColor,
          size: 16,
        ),
        ExTextView("157****0813",
          color: AppColors.textColor,
          size: 16,
          textAlign: TextAlign.right,
        ).exp(),
        AppImage().iconArrowRight.image(w: 16.w,h: 16.w).container(marginL: 4.w),
      ],
    ).container(h: 48,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,marginT: 16,radius: 8,bgColor: AppColors.white).onTap(() {
      NavigatorUtil.gotPage(context, RouterName.updatePhone);
    });
  }


  //自我介绍
  Widget _introduceWidget(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExTextView(S.of(context).text_88,
          color: AppColors.grayColor,
          size: 16,
        ),
        ExTextFiled(
          padding: EdgeInsets.only(top: 10),
          hintText: S.of(context).text_91,
          hintTextSize: 16,
          textSize: 16,
          hintTextColor: AppColors.color_BBBBBB,
          maxLines: 10,
        ).exp(),
      ],
    ).container(h: 130,padT: 12,padB: 12,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,marginT: 16,radius: 8,bgColor: AppColors.white);
  }

  //修改按钮
  Widget _updateButtonWidget(){
    return ExTextView(S.of(context).text_93,
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



