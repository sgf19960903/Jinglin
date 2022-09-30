/// 用户简单信息视图
/// @Author Tongzongwen
/// @Date 2022/10/1 0:29
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';


class ExUserSimpleInfoWidget extends StatelessWidget {
  const ExUserSimpleInfoWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        AppImage().iconWechat.image(w: 36.w,h: 36.w,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ExTextView("小不点",).exp(),
                //搭讪按钮
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    AppImage().iconFlashRed.image(w: 16.w,h: 16.w,),
                    ExTextView(S.of(context).text_35,
                      color: AppColors.themeColor,
                      size: AppSizes.contentFontSize,
                    ).container(marginL: 2.w),
                  ],
                ).container(
                  h: 28,
                  w: 82.w,
                  radius: 999,
                  hasBorder: true,
                  borderColor: AppColors.themeColor,

                ),
              ],
            ),
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
            ).container(padL: 3.w,padR: 3.w,padT: 1,padB: 1,bgColor: AppColors.womanColor,radius: 99),
            ExTextView("那个老六把我的对象谈了 真诚交友非诚",
              color: AppColors.grayColor,
              size: 12,
            ).container(marginT: 8),

            "".container(h: 0.5,bgColor: AppColors.borderColor,marginT: 16),
          ],
        ).container(marginL: 12.w).exp(),

      ],
    ).container(marginT: 16);
  }



}



