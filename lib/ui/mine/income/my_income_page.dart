/// 我的收益
/// @Author Tongzongwen
/// @Date 2022/9/29 21:26
/// @Description 女生收益详情页

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_list_view.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';


class MyIncomePage extends StatefulWidget {
  const MyIncomePage({Key? key}) : super(key: key);

  @override
  State<MyIncomePage> createState() => _MyIncomePageState();
}

class _MyIncomePageState extends BaseState<MyIncomePage> {


  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      bgColor: AppColors.pageGrayColor,
      appBar: ExTitleView(
        titleCenter: true,
        title: S.of(context).text_80,
      ),
      child: Column(
        children: [
          _totalIncomeWidget(),
          "".container(h: 12),
          _incomeDetailListWidget().exp(),
        ],
      ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR)
    );
  }

  //总收益、申请提现
  Widget _totalIncomeWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        //可提现金额
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ExTextView(S.of(context).text_101,
              color: AppColors.white,
            ),
            RichText(
              textAlign: TextAlign.end,
              text: TextSpan(
                text: "¥",
                style: TextStyle(
                  fontSize: 22,
                  color: AppColors.white,
                ),
                children: [
                  TextSpan(
                    text: " 588.90",
                    style: TextStyle(
                      fontSize: 32,
                      color: AppColors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ]
              )
            ).container(marginT: 4),
          ],
        ).exp(),
        //申请提现、总收益
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ExTextView(S.of(context).text_102,
              color: AppColors.themeColor,
              size: 12,
              isRegular: false,
            ).container(padL: 12.w,padR: 12.w,padT: 8.w,padB: 8.w,radius: 99,bgColor: AppColors.white,).onTap(() {
              NavigatorUtil.gotPage(context, RouterName.applyWithDraw);
            }),
            ExTextView("${S.of(context).text_104}:¥1200",
              color: AppColors.white,
              size: 12,
            ).container(marginT: 12)
          ],
        ),
      ],
    ).container(h: 100,bgImg: AppImage().incomeDetailBg,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,marginT: 16);
  }

  //收益明细列表
  Widget _incomeDetailListWidget(){
    return ExListView(
      itemCount: 3,
      itemBuilder: (_,index) => Column(
        children: [
          //月份展示
          ExTextView("4月",
            isRegular: false,
          ).container(h: 34,align: Alignment.centerLeft),
          ExListView(
            itemCount: 2,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.only(left: 12.w,right: 12.w),
            itemBuilder: (_,index) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  "".container().exp(),
                  ExTextView(S.of(context).text_103,
                    color: AppColors.color_FFA900,
                    isRegular: false,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ExTextView("2022-04-14 04:38",
                        color: AppColors.grayColor,
                        size: 12,
                      ).exp(),
                      ExTextView("+200.00",
                        color: AppColors.themeColor,
                        size: 16,
                        isBold: true,
                      ),
                    ],
                  ),
                  "".container(h: 0.5,bgColor: AppColors.borderColor,marginT: 12),
                ],
              ).container(h: 70,);
            }
          ).container(bgColor: AppColors.white,radius: 12)
        ],
      ).container(marginB: 4)
    );
  }


}

