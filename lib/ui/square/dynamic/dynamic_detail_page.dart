/// 动态详情页
/// @Author Tongzongwen
/// @Date 2022/9/28 5:55 下午
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';
import 'package:jinglin/common/res/res_path.dart';


class DynamicDetailPage extends StatefulWidget {
  const DynamicDetailPage({Key? key}) : super(key: key);

  @override
  State<DynamicDetailPage> createState() => _DynamicDetailPageState();
}

class _DynamicDetailPageState extends BaseState<DynamicDetailPage> {


  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      appBar: ExTitleView(
        titleWidget: _titleWidget(),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [

          ],
        ),
      )
    );
  }


  //标题
  Widget _titleWidget(){
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
        //搭讪按钮
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppImage().iconFlashRed.image(w: 16.w,h: 16.w,),
            ExTextView(S.of(context).text_35,
              color: AppColors.themeColor,
              size: AppSizes.contentFontSize,
            ).container(marginL: 2.w),
          ],
        ).container(
          h: 24,
          padL: 8.w,
          padR: 8.w,
          radius: 999,
          hasBorder: true,
          borderColor: AppColors.themeColor,
        ),
      ],
    );
  }
}
