/// 评论通知页
/// @Author Tongzongwen
/// @Date 2022/9/27 21:20
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_dynamic_cite_widget.dart';
import 'package:jinglin/ui/widgets/ex_list_view.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';


class CommentNoticePage extends StatefulWidget {
  const CommentNoticePage({Key? key}) : super(key: key);

  @override
  State<CommentNoticePage> createState() => _CommentNoticePageState();
}

class _CommentNoticePageState extends BaseState<CommentNoticePage> {

  @override
  Widget build(BuildContext context) {
    return widgetBuild(
        bgColor: AppColors.pageGrayColor,
        appBar: ExTitleView(
          title: S.of(context).text_42,
          titleCenter: true,
        ),
        child: ExListView(
          itemCount: 2,
          emptyHint: S.of(context).text_51,
          itemBuilder: (_,index) {
            return Column(
              children: [
                _userInfoWidget(),
                _replyContentWidget(),
                ExDynamicCiteWidget().container(marginT: 8),
                "".container(h: 0.3,bgColor: AppColors.borderColor,marginT: 16),
              ],
            ).container(padT: 15,bgColor: AppColors.pageColor).onTap(() {
              NavigatorUtil.gotPage(context, RouterName.dynamicDetail);
            });
          },
        )
    );
  }

  //回复内容
  Widget _replyContentWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ExTextView(S.of(context).text_49,
          color: AppColors.textColor,
        ),
        ExTextView("英俊大哥：",
          color: AppColors.textColor,
          isRegular: false,
        ).container(marginL: 4.w,marginR: 4.w),
        ExTextView("没事还是要多出去走动！！",
          color: AppColors.textColor,
        ),
      ],
    ).container(marginT: 12,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR);
  }

  //用户信息、回复按钮
  Widget _userInfoWidget(){
    return Row(
      children: [
        Row(
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
            ).container(marginL: 12.w),
          ],
        ).onTap(() {
          NavigatorUtil.gotPage(context, RouterName.userHomePage);
        }),
        "".container().exp(),
        //回复按钮
        ExTextView(S.of(context).text_49,
          color: AppColors.grayColor,
          size: AppSizes.contentFontSize,
          textAlign: TextAlign.center,
        ).container(
          padT: 4,
          padB: 4,
          padL: 12.w,
          padR: 12.w,
          radius: 999,
          hasBorder: true,
          borderColor: AppColors.buttonNotSelected,
        ),
      ],
    ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR);
  }


}