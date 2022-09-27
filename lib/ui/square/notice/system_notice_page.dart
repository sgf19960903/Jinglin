/// 系统通知页
/// @Author Tongzongwen
/// @Date 2022/9/27 21:24
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_list_view.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';


class SystemNoticePage extends StatefulWidget {
  const SystemNoticePage({Key? key}) : super(key: key);

  @override
  State<SystemNoticePage> createState() => _SystemNoticePageState();
}

class _SystemNoticePageState extends BaseState<SystemNoticePage> {


  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      bgColor: AppColors.pageGrayColor,
      appBar: ExTitleView(
        title: S.of(context).text_45,
        titleCenter: true,
      ),
      child: ExListView(
        itemCount: 3,
        emptyHint: S.of(context).text_52,
        itemBuilder: (_,index) => Column(
          children: [
            _noticeItemWidget(),
            "".container(h: 0.3,bgColor: AppColors.borderColor),
          ],
        ).container(bgColor: AppColors.pageColor)
      )
    );
  }

  //通知Item
  Widget _noticeItemWidget(){
    return Stack(
      alignment: Alignment.topLeft,
      children: [
        //未读小圆点
        "".container(w: 8.w,h: 8.w,radius: 8.w,marginT: 7,bgColor: AppColors.themeColor,),
        //通知内容
        RichText(
          maxLines: 99,
          text: TextSpan(
            text: "   您于2022年9月8日18:23发布的动态信息",
            style: TextStyle(
              fontSize: 16,
              color: AppColors.textColor,
            ),
            children: [
              TextSpan(
                text: "\“好久没有出门了呀\”",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.themeColor,
                ),
              ),
              TextSpan(
                text: "因涉嫌违反平台规定，已被平台下架处理",
                style: TextStyle(
                  fontSize: 16,
                  color: AppColors.textColor,
                ),
              ),
            ],
          )
        ),
      ],
    ).container(pad: AppSizes.pagePaddingLR,);
  }

}
