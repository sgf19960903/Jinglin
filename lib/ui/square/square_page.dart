import 'package:flutter/material.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/ui/widgets/ex_dynamic_widget.dart';
import 'package:jinglin/ui/widgets/ex_list_view.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';


///author - Tongzongwen
///广场页
///time - 2022-09-26
class SquarePage extends StatefulWidget {
  const SquarePage({Key? key}) : super(key: key);

  @override
  State<SquarePage> createState() => _SquarePageState();
}

class _SquarePageState extends BaseState<SquarePage> {


  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      hasHeaderBg: true,
      floatWidget: _floatWidget(),
      child: Column(
        children: [
          _noticeTabWidget(),
          _listFilterTabWidget(),
          _dynamicListWidget().exp(),
        ],
      ),
    );
  }

  //浮动 --  发动态
  Widget _floatWidget(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppImage().iconLocationWhite.image(w: 24.w,h: 24.w,),
        ExTextView(S.of(context).text_48,
          color: AppColors.white,
          size: 12,
        ).container(marginT: 2),
      ],
    ).container(
      w: 64.w,
      h: 64.w,
      radius: 64.w,
      bgColor: AppColors.white,
      gradient: LinearGradient(
        colors: [AppColors.gradientButtonBeginColor,AppColors.gradientButtonEndColor],
      ),
    );
  }

  //点赞、评论、系统消息
  Widget _noticeTabWidget(){
    List<String> bgList = [AppImage().praiseButtonBg,AppImage().commentButtonBg,AppImage().sysmsgButtonBg];
    List<String> tabNameList = [S.of(context).text_41,S.of(context).text_42,S.of(context).text_45];
    List<String> tabNumberList = ["99","2","10"];
    return Row(
      children: List.generate(bgList.length, (index) {
        return Stack(
          alignment: Alignment.topRight,
          children: [
            ExTextView(tabNameList[index],
              color: AppColors.white,
              size: AppSizes.titleFontSize,
              maxLines: 2,
            ).container(h: 60,bgImg: bgList[index],align: Alignment.centerLeft,padL: 8.w,padR: 8.w,marginT: 12,radius: 8).clipRRect(radius: 8),
            ExTextView(tabNumberList[index],
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
        ).container(h: 72,marginL: index==0?0:8.w,marginR: (index==bgList.length-1)?0:8.w).onTap(() {
          if(index==0) NavigatorUtil.gotPage(context, RouterName.praiseNotice);
          else if(index==1) NavigatorUtil.gotPage(context, RouterName.commentNotice);
          else if(index==2) NavigatorUtil.gotPage(context, RouterName.sysNotice);
        }).exp();
      }),
    ).container(padT: 14,padB: 21,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,);
  }


  //列表过滤tab列表
  Widget _listFilterTabWidget(){
    List<String> tabNameList = [S.of(context).text_34,S.of(context).text_46,S.of(context).text_47,];
    return Row(
      children: List.generate(tabNameList.length, (index) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ExTextView(tabNameList[index],
            color: index==0? AppColors.textColor : AppColors.grayColor,
            size: index==0?18:16,
          ).container(h: 24),
          "".container(
            w: 16.w,
            h: 3,
            radius: 1.5,
            bgColor: index==0?AppColors.white:Colors.transparent,
            gradient: LinearGradient(
              colors: [AppColors.gradientButtonBeginColor,AppColors.gradientButtonEndColor],
            ),
          )
        ],
      ).onTap(() {

      }).container(marginR: 16.w,)),
    ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,marginT: 3);
  }


  //动态裂变
  Widget _dynamicListWidget(){
    return ExListView(
      itemCount: 10,
      padding: EdgeInsets.all(16.w),
      itemBuilder: (_,index) => ExDynamicWidget(index),
    );
  }

}
