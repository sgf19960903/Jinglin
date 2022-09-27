/// 评论通知页
/// @Author Tongzongwen
/// @Date 2022/9/27 21:20
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_dynamic_cite_widget.dart';
import 'package:jinglin/ui/widgets/ex_list_view.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';

class PraiseNoticePage extends StatefulWidget {
  const PraiseNoticePage({Key? key}) : super(key: key);

  @override
  State<PraiseNoticePage> createState() => _PraiseNoticePageState();
}

class _PraiseNoticePageState extends BaseState<PraiseNoticePage> {

  @override
  Widget build(BuildContext context) {
    return widgetBuild(
        bgColor: AppColors.pageGrayColor,
      appBar: ExTitleView(
        title: S.of(context).text_41,
        titleCenter: true,
      ),
      child: ExListView(
        itemCount: 2,
        emptyHint: S.of(context).text_50,
        itemBuilder: (_,index) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _userInfoWidget(),
              _contentWidget(),
              ExDynamicCiteWidget().container(marginT: 8,),
              "".container(h: 0.3,bgColor: AppColors.borderColor,marginT: 16),
            ],
          ).container(padT: 15,bgColor: AppColors.pageColor);
        },
      )
    );
  }

  //点赞说明
  Widget _contentWidget(){
    return ExTextView("赞了你的动态",).container(marginT: 12,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR);
  }

  //用户信息、回复按钮
  Widget _userInfoWidget(){
    return Row(
      children: [
        AppImage().iconWechat.image(w: 36.w,h: 36.w,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ExTextView("小不点",),
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
            ).container(padL: 3.w,padR: 3.w,padT: 1,padB: 1,marginT: 4,bgColor: AppColors.womanColor,radius: 99),
          ],
        ).container(marginL: 12.w).exp(),
      ],
    ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR);
  }


}
