/// 聊天首页
/// @Author Tongzongwen
/// @Date 2022/9/26
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/provider/chat/chat_home_provider.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_list_view.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/ui/widgets/ex_recent_chat_item_widget.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:provider/provider.dart';

class ChatHomePage extends StatefulWidget {
  const ChatHomePage({Key? key}) : super(key: key);

  @override
  State<ChatHomePage> createState() => _ChatHomePageState();
}

class _ChatHomePageState extends BaseState<ChatHomePage> {
  ChatHomeProvider _provider = ChatHomeProvider();

  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      hasHeaderBg: true,
      child: ChangeNotifierProvider.value(
        value: _provider,
        child: Column(
          children: [
            _titleWidget(),
            ExListView(
              itemCount: 20,
              padding: EdgeInsets.only(top: 8,left: AppSizes.pagePaddingLR,right: AppSizes.pagePaddingLR,),
              itemBuilder: (_,index) => ExRecentChatItemWidget(),
            ).exp(),
          ],
        ),
      )
    );
  }

  //标题栏 -- 列表Tab、清除未读
  Widget _titleWidget(){
    List<String> tabNameList = [S.of(context).text_33,S.of(context).text_34,];
    return Row(
      children: [
        //Tab列表
        Row(
          children: List.generate(2, (index) => Selector(
              builder: (_,int tabIndex,child){
                return Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ExTextView(tabNameList[index],
                      color: index==tabIndex? AppColors.textColor : AppColors.grayColor,
                      size: index==tabIndex?18:16,
                      isRegular: index!=tabIndex,
                    ).container(h: 24),
                    "".container(
                      w: 16.w,
                      h: 3,
                      radius: 1.5,
                      bgColor: index==tabIndex?AppColors.white:Colors.transparent,
                      gradient: LinearGradient(
                        colors: [AppColors.gradientButtonBeginColor,AppColors.gradientButtonEndColor],
                      ),
                    )
                  ],
                );
              },
              selector: (_,ChatHomeProvider p) => p.listTabIndex
          ).onTap(() {
            // _provider.changeListTabIndex(index);
          }).container(marginR: 16 .w,)),
        ).exp(),
        //清除未读
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppImage().iconRubber.image(w: 16.w,h: 16.w),
            ExTextView(S.of(context).text_138,
              color: AppColors.themeColor,
              size: 12,
              isRegular: false,
            ).container(marginL: 2.w,)
          ],
        ).container(padL: 8.w,padR: 11.w,padT: 8,padB: 8,bgColor: AppColors.white,radius: 99),
      ],
    ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR);
  }

}
