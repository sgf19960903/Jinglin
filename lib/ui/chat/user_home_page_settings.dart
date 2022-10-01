/// 用户主页设置
/// @Author Tongzongwen
/// @Date 2022/9/29 21:41
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


class UserHomePageSettings extends StatefulWidget {
  const UserHomePageSettings({Key? key}) : super(key: key);

  @override
  State<UserHomePageSettings> createState() => _UserHomePageSettingsState();
}

class _UserHomePageSettingsState extends BaseState<UserHomePageSettings> {
  @override
  Widget build(BuildContext context) {
    return widgetBuild(
        bgColor: AppColors.pageGrayColor,
        appBar: ExTitleView(
          title: S.of(context).text_77,
          titleCenter: true,
          titleColor: Colors.transparent,
        ),
        child: Column(
          children: [
            _blackListWidget(),
            _reportWidget(),
          ],
        )
    );
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
    ).container(h: 56,onlyBottomBorder: true,marginL: AppSizes.pagePaddingLR,marginR: AppSizes.pagePaddingLR);
  }

}

