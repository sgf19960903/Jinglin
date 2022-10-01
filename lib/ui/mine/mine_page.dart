/// 个人中心
/// @Author Tongzongwen
/// @Date 2022/9/26
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/app_color.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/dialog/common_dialog_util.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';


class MinePage extends StatefulWidget {
  const MinePage({Key? key}) : super(key: key);

  @override
  State<MinePage> createState() => _MinePageState();
}

class _MinePageState extends BaseState<MinePage> {


  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      hasHeaderBg: true,
      hasHeaderIntroImg: true,
      bgHeaderHeight: 230,
      bgColor: AppColors.pageGrayColor,
      child: Column(
        children: [
          _infoWidget(),
          // _myIncomeWidget(),
          _myDiamondWidget(),
          _optionListWidget(),
        ],
      ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR),
    );
  }


  //用户信息
  Widget _infoWidget(){
    List<String> numNameList = [S.of(context).text_47,"",S.of(context).text_78,"",S.of(context).text_79,];
    return Column(
      children: [
        Row(
          children: [
            //头像
            AppImage().iconWechat.image(w: 60.w,h: 60.w).clipRRect(radius: 8,),
            "".container(w: 14.w),
            //昵称、性别、设置、个性签名
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //昵称、设置
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ExTextView("已婚少女心",
                      size: 18,
                      isRegular: false,
                    ).exp(),
                    //设置按钮
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppImage().iconUser.image(w: 16.w,h: 16.w),
                        ExTextView(S.of(context).text_77,
                          size: 12,
                          isRegular: false,
                          color: AppColors.themeColor,
                        ).container(marginL: 2.w),
                      ],
                    ).container(w: 58.w,h: 32,radius: 99,bgColor: AppColors.white).onTap(() {
                      NavigatorUtil.gotPage(context, RouterName.personalInfo);
                    }),
                  ],
                ),
                //昵称、设置
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppImage().iconWomanGray.image(w: 8.w,h: 8.w),
                        ExTextView("27",
                          size: 10,
                          isRegular: false,
                          color: AppColors.white,
                        ).container(marginL: 2.w),
                      ],
                    ).container(w: 26.w,h: 12,radius: 7,bgColor: AppColors.womanColor),
                    ExTextView("165cm",
                      size: 12,
                      color: AppColors.color_666666,
                    ).container(marginL: 8.w),
                  ],
                ),
                //个性签名
                ExTextView("那个老六把我的对象谈了 真诚交友非诚交友非诚",
                  size: 12,
                  color: AppColors.grayColor,
                ).container(marginT: 8.w),
              ],
            ).exp(),
          ],
        ),
        "".container(h: 0.5,bgColor: AppColors.borderColor,marginT: 12,marginB: 12),
        //关注、粉丝、我的动态
        Row(
          children: List.generate(numNameList.length, (index) => index%2!=0?"".container(w: 0.5,h: 22,bgColor: AppColors.borderColor):Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ExTextView("116",
                size: 22,
                color: AppColors.textColor,
                isBold: true,
              ).container(h: 32,align: Alignment.center),
              ExTextView(numNameList[index],
                size: 13,
                color: AppColors.grayColor,
              ).container(marginT: 3),
            ],
          ).onTap(() {
            if(index~/2==0) NavigatorUtil.gotPage(context, RouterName.myFollow);
            else if(index~/2==1) NavigatorUtil.gotPage(context, RouterName.myFans);
            else if(index~/2==2) NavigatorUtil.gotPage(context, RouterName.myDynamic);
          }).exp()),
        ),
      ],
    ).container(
      marginT: 6,
      pad: 16.w,
      radius: 12,
      bgColor: AppColors.white.withOpacity(0.62),
      gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
        colors: [AppColors.white.withOpacity(0.62),AppColors.white]
      ),
      marginB: 16,
      shadow: [
        BoxShadow(
          color: Color(0x26B7B7B7),
          spreadRadius: 0,
          blurRadius: 16,
          offset: Offset(0, 9),
        ),
      ]
    );
  }


  //我的收益
  Widget _myIncomeWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppImage().iconWallet.image(w: 24.w,h: 24.w).container(marginB: 12),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExTextView(S.of(context).text_80,
              size: 14,
              color: AppColors.white,
              isRegular: false,
            ),
            ExTextView(S.of(context).text_81,
              size: 11,
              color: AppColors.white,
            ).container(marginT: 4)
          ],
        ).container(marginL: 8.w).exp(),
        ExTextView("¥27.89",
          size: 22,
          color: AppColors.white,
          isBold: true,
        ),
        AppImage().iconArrowRightWhite.image(w: 16.w,h: 16.w,).container(marginL: 10.w)
      ],
    ).container(h: 60,bgImg: AppImage().mineIncomeDetailBg,padL: 10.w,padR: AppSizes.pagePaddingLR).onTap(() {
      NavigatorUtil.gotPage(context, RouterName.myIncome);
    });
  }

  //我的钻石
  Widget _myDiamondWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppImage().iconDiamond.image(w: 24.w,h: 24.w).container(marginB: 12),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExTextView(S.of(context).text_85,
              size: 14,
              color: AppColors.white,
              isRegular: false,
            ),
            ExTextView(S.of(context).text_86,
              size: 11,
              color: AppColors.white,
            ).container(marginT: 4)
          ],
        ).container(marginL: 8.w).exp(),
        ExTextView("¥27.89",
          size: 22,
          color: AppColors.white,
          isBold: true,
        ),
        AppImage().iconArrowRightWhite.image(w: 16.w,h: 16.w,).container(marginL: 10.w)
      ],
    ).container(h: 60,bgImg: AppImage().mineDiamondDetailBg,padL: 10.w,padR: AppSizes.pagePaddingLR).onTap(() {
      NavigatorUtil.gotPage(context, RouterName.myDiamond);
    });
  }

  //选项列表
  Widget _optionListWidget(){
    List<String> optionImgList = [AppImage().iconSecuritySafetyOther,AppImage().iconToggleOff,
      AppImage().iconEdit,AppImage().iconSignOut,];
    List<String> optionNameList = [S.of(context).text_29,S.of(context).text_82,
      S.of(context).text_83,S.of(context).text_84,];
    return ListView.separated(
      itemCount: optionImgList.length,
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(left: 12.w,right: 12.w),
      itemBuilder: (_,index){
        return Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            optionImgList[index].image(w: 24.w,h: 24.w),
            ExTextView(optionNameList[index],
              size: 16,
              color: AppColors.textColor,
            ).container(marginL: 12.w).exp(),
            AppImage().iconArrowRight.image(w: 16.w,h: 16.w,),
          ],
        ).container(h: 56).onTap(() {
          //隐私设置
          if(index==0) CommonDialogUtil.showSureDialog(context,
            title: S.of(context).text_29,
            content: S.of(context).text_124,
            leftButtonText: S.of(context).text_31,
            rightButtonText: S.of(context).text_32,
            rightClickFunc: (){

            }
          );
          //推送设置
          else if(index==1) NavigatorUtil.gotPage(context, RouterName.pushSettings);
          //意见反馈
          else if(index==2) NavigatorUtil.gotPage(context, RouterName.suggestFeedback);
          //退出登录
          else if(index==3) CommonDialogUtil.showSureDialog(context,
            title: S.of(context).text_125,
            rightClickFunc: (){

            }
          );
        });
      },
      separatorBuilder: (_,index) => "".container(h: 0.5,bgColor: AppColors.borderColor),
    ).container(radius: 8,bgColor: AppColors.white,marginT: 16);
  }

}
