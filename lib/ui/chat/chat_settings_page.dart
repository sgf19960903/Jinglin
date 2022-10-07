/// 聊天设置
/// @Author Tongzongwen
/// @Date 2022/9/29 21:34
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/app_color.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';


class ChatSettingsPage extends StatefulWidget {
  const ChatSettingsPage({Key? key}) : super(key: key);

  @override
  State<ChatSettingsPage> createState() => _ChatSettingsPageState();
}

class _ChatSettingsPageState extends BaseState<ChatSettingsPage> {


  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      bgColor: AppColors.pageGrayColor,
      appBar: ExTitleView(
        title: S.of(context).app_name,
        titleCenter: true,
        titleColor: Colors.transparent,
      ),
      child: Column(
        children: [
          _userInfoWidget(),
          _toppingWidget(),
          _blackListWidget(),
          _clearChatRecordWidget(),
          _reportWidget(),
        ],
      )
    );
  }


  //用户信息
  Widget _userInfoWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        AppImage().iconTempAvatar.image(w: 56.w,h: 56.w).clipRRect(radius: 8).container(marginR: 12.w,marginT: 8.w),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExTextView("小不点",
              size: 16,
              isRegular: false,
            ).container(h: 24,align: Alignment.centerLeft),
            Row(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppImage().iconWomanGray.image(w: 8.w,h: 12.w,),
                ExTextView("24",
                  color: AppColors.white,
                  size: AppSizes.hintFontSize,
                ).container(marginL: 2.w),
              ],
            ).container(marginL: 4.w,padL: 3.w,padR: 3.w,padT: 1,padB: 1,marginT: 8,bgColor: AppColors.womanColor,radius: 99),
          ],
        ).exp(),
        AppImage().iconArrowRight.image(w: 16.w,h: 16.w),
      ],
    ).container(h: 88,onlyBottomBorder: true,marginL: AppSizes.pagePaddingLR,marginR: AppSizes.pagePaddingLR,).onTap(() {
      NavigatorUtil.gotPage(context, RouterName.userHomePage);
    });
  }

  //置顶聊天
  Widget _toppingWidget(){
    return Row(
      children: [
        ExTextView(S.of(context).text_145,
          size: 16,
          isRegular: false,
        ).exp(),
        AppImage().iconSwitchOff.image(w: 51.w,h: 30.w,),
      ],
    ).container(h: 56,onlyBottomBorder: true,marginL: AppSizes.pagePaddingLR,marginR: AppSizes.pagePaddingLR);
  }

  //黑名单
  Widget _blackListWidget(){
    return Row(
      children: [
        ExTextView(S.of(context).text_146,
          size: 16,
          isRegular: false,
        ).exp(),
        AppImage().iconSwitchOff.image(w: 51.w,h: 30.w,),
      ],
    ).container(h: 56,onlyBottomBorder: true,marginL: AppSizes.pagePaddingLR,marginR: AppSizes.pagePaddingLR);
  }

  //清除聊天记录
  Widget _clearChatRecordWidget(){
    return Row(
      children: [
        ExTextView(S.of(context).text_148,
          size: 16,
          isRegular: false,
        ).exp(),
        AppImage().iconArrowRight.image(w: 16.w,h: 16.w,),
      ],
    ).container(h: 56,onlyBottomBorder: true,marginL: AppSizes.pagePaddingLR,marginR: AppSizes.pagePaddingLR);
  }

  //举报
  Widget _reportWidget(){
    return Row(
      children: [
        ExTextView(S.of(context).text_57,
          size: 16,
          isRegular: false,
        ).exp(),
        AppImage().iconArrowRight.image(w: 16.w,h: 16.w,),
      ],
    ).container(h: 56,onlyBottomBorder: true,marginL: AppSizes.pagePaddingLR,marginR: AppSizes.pagePaddingLR).onTap(() {
      NavigatorUtil.gotPage(context, RouterName.report);
    });
  }

}

