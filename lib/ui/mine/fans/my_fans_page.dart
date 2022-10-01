/// 我的粉丝
/// @Author Tongzongwen
/// @Date 2022/9/29 21:26
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/app_size.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_list_view.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';
import 'package:jinglin/ui/widgets/ex_user_simple_info_widget.dart';

class MyFansPage extends StatefulWidget {
  const MyFansPage({Key? key}) : super(key: key);

  @override
  State<MyFansPage> createState() => _MyFansPageState();
}

class _MyFansPageState extends BaseState<MyFansPage> {


  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      appBar: ExTitleView(
        titleCenter: true,
        title: S.of(context).text_78,
      ),
      child: ExListView(
        itemCount: 10,
        padding: EdgeInsets.only(left: AppSizes.pagePaddingLR,right: AppSizes.pagePaddingLR),
        itemBuilder: (_,index) => ExUserSimpleInfoWidget(
          buttonWidget: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppImage().iconLikeRed.image(w: 16.w,h: 16.w,),
              ExTextView(S.of(context).text_131,
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
            borderWidth: 1,
          ).onTap(() {

          }),
        ),
      )
    );
  }
}

