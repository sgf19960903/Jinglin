/// 我的钻石
/// @Author Tongzongwen
/// @Date 2022/9/29 21:20
/// @Description 男生钻石充值页

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/app_color.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/dialog/common_dialog_util.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/ui/widgets/ex_list_view.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';


class MyDiamondPage extends StatefulWidget {
  const MyDiamondPage({Key? key}) : super(key: key);

  @override
  State<MyDiamondPage> createState() => _MyDiamondPageState();
}

class _MyDiamondPageState extends BaseState<MyDiamondPage> {

  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      bgColor: AppColors.color_FFE8B1,
      appBar: ExTitleView(
        title: S.of(context).text_85,
        titleCenter: true,
        titleColor: Colors.transparent,
      ),
      child: Column(
        children: [
          _totalDiamondWidget(),
          _rechargePackWidget().exp(),
        ],
      )
    );
  }

  //总钻石数量
  Widget _totalDiamondWidget(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExTextView(S.of(context).text_115,
          color: AppColors.white,
          isRegular: false,
        ).container(marginT: 46),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppImage().iconDiamond.image(w: 24.w,h: 24.w),
            ExTextView("234,890",
              color: AppColors.white,
              size: 32,
              isBold: true,
            ).container(marginL: 2.w),
          ],
        ).container(marginT: 2),
      ],
    ).container(h: 144,padL: 20.w,padR: 20.w,marginL: AppSizes.pagePaddingLR,marginR: AppSizes.pagePaddingLR,bgImg: AppImage().myDiamondDetailBg);
  }


  //充值套餐
  Widget _rechargePackWidget(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ExTextView(S.of(context).text_116,
          color: AppColors.textColor,
          isRegular: false,
          size: 16,
        ).container(marginB: 16),
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              //套餐列表
              ExListView(
                itemCount: 5,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (_,index) {
                  return Stack(
                    alignment: Alignment.topLeft,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          AppImage().iconDiamond.image(w: 20.w,h: 20.w,),
                          //套餐钻石数量
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              ExTextView("300",
                                color: AppColors.textColor,
                                isBold: true,
                                size: 24,
                              ).container(marginL: 3.w,marginR: 1.w),
                              ExTextView(S.of(context).text_114,
                                color: AppColors.textColor,
                                size: 14,
                              ).container(marginB: 2),
                            ],
                          ).exp(),
                          //需要花费金额
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              ExTextView("¥",
                                color: AppColors.textColor,
                                isBold: true,
                                size: 16,
                              ).container(marginL: 3.w,marginR: 1.w,marginB: 2),
                              ExTextView("30.00",
                                color: AppColors.textColor,
                                size: 24,
                                isBold: true,
                              ),
                            ],
                          ),
                        ],
                      ).container(h: 60,marginT: 5,marginL: 4.w,radius: 12,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,bgImg: AppImage().diamondPackBg),
                      //优惠
                      ExTextView(S.of(context).text_117(20),
                        color: AppColors.white,
                        size: 11,
                      ).container(w: 64.w,h: 22,padB: 4,align: Alignment.center,bgImg: AppImage().diamondPackDicountBg),
                    ],
                  ).container(marginB: 11,).onTap(() {
                    CommonDialogUtil.showChoiceDialog(context, [S.of(context).text_129,S.of(context).text_130,],
                      iconList: [AppImage().iconAlipay,AppImage().iconWechat],
                      selectedFunc: (index){

                      }
                    );
                  });
                }
              ),
              //充值协议
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ExTextView(S.of(context).text_113,
                    color: AppColors.textColor,
                    size: 12,
                  ),
                  ExTextView(S.of(context).text_112,
                    color: AppColors.manColor,
                    size: 12,
                  ),
                ],
              ),
              //套餐说明
              ExTextView(S.of(context).text_111,
                color: AppColors.textColor,
                isRegular: false,
              ).container(marginT: 12),
              ExTextView(S.of(context).text_110,
                color: AppColors.grayColor,
                maxLines: 10,
              ).container(marginT: 12),
            ],
          ),
        ).exp(),
      ],
    ).container(pad: AppSizes.pagePaddingLR,topLeftRadius: 12,topRightRadius: 12,bgColor: AppColors.white);
  }

}
