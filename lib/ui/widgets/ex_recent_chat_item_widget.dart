/// 最近聊天Item
/// @Author Tongzongwen
/// @Date 2022/10/1 19:15
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/provider/chat/chat_home_provider.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_list_view.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';


class ExRecentChatItemWidget extends StatefulWidget {
  const ExRecentChatItemWidget({Key? key}) : super(key: key);

  @override
  State<ExRecentChatItemWidget> createState() => _ExRecentChatItemWidgetState();
}

class _ExRecentChatItemWidgetState extends State<ExRecentChatItemWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            AppImage().iconWechat.image(w: 56.w,h: 56.w).container(marginR: 8.w,marginT: 8.w),
            ExTextView("99",
              color: AppColors.white,
              textAlign: TextAlign.center,
            ).container(
              radius: 999,
              h: 24,
              bgColor: AppColors.themeColor,
              hasBorder: true,
              borderColor: AppColors.white,
              borderWidth: 2,
              boxConstraints: BoxConstraints(maxWidth: 40,minWidth: 24),
            ),
          ],
        ),
        "".container(w: 10.w),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //昵称、性别、定位
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
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
                ).container(marginL: 4.w,padL: 3.w,padR: 3.w,padT: 1,padB: 1,marginT: 4,bgColor: AppColors.womanColor,radius: 99),
                "".container().exp(),
                //定位
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppImage().iconLocationGray.image(w: 16.w,h: 16.w,).container(marginR: 2.w,),
                    ExTextView("北京",
                      color: AppColors.grayColor,
                      size: 12,
                    ),
                  ],
                ),
              ],
            ),
            //最新一条聊天记录、时间
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ExTextView("那个老六把我的对象谈了 真诚交友非诚",
                  color: AppColors.color_666666,
                ).exp(),
                ExTextView("16:23",
                  color: AppColors.color_BBBBBB,
                  size: 12,
                ).container(marginL: 8.w),
              ],
            ).container(marginT: 8),
          ],
        ).exp(),
      ],
    ).container(h: 88,onlyBottomBorder: true).onTap(() {
      NavigatorUtil.gotPage(context, RouterName.chatSession);
    });
  }
}

