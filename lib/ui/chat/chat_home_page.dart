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
import 'package:jinglin/ui/widgets/ex_chat_menu_widget.dart';
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
  Map<int,List<GlobalKey>> keyMap = {
    0: List.generate(20, (index) => GlobalKey()),
    1: List.generate(20, (index) => GlobalKey()),
    2: List.generate(20, (index) => GlobalKey()),
  };
  Map<int,int> selectIndexMap = {
    0: -1,
    1: -1,
    2: -1,
  };//各个Tab选中位置

  @override
  void dispose() {
    _provider.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      hasHeaderBg: true,
      floatWidget: AppImage().oneKeyMatchBg.image(w: 136.w,h: 94.w,).onTap(() {

      }),
      child: ChangeNotifierProvider.value(
        value: _provider,
        child: Column(
          children: [
            _titleWidget(),
            _contentPageWidget().exp(),
          ],
        ),
      )
    );
  }

  //标题栏 -- 列表Tab、清除未读
  Widget _titleWidget(){
    List<String> tabNameList = [S.of(context).text_164,S.of(context).text_165,S.of(context).text_47,];
    return Row(
      children: [
        //Tab列表
        Row(
          children: List.generate(tabNameList.length, (index) => Selector(
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
            _provider.pageController.jumpToPage(index);
            // _provider.pageController.animateToPage(index, duration: Duration(milliseconds: 300), curve: Curves.linear);
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


  //内容PageView
  Widget _contentPageWidget(){
    return PageView(
      controller: _provider.pageController,
      onPageChanged: (index){
        _provider.changeListTabIndex(index);
      },
      children: [
        _sessionListWidget(0),
        _sessionListWidget(1),
        _sessionListWidget(2),
      ],
    );
  }


  //列表会话列表
  Widget _sessionListWidget(int tabIndex){
    return ExListView(
      itemCount: 20,
      padding: EdgeInsets.only(top: 8,),
      itemBuilder: (_,index) => ExRecentChatItemWidget(
        key: keyMap[tabIndex]?[index],
        isSelected: selectIndexMap[tabIndex]==index,
      ).onTap(() {},onLongTap: (){
        selectIndexMap[tabIndex] = index;
        setState(() {});
        _showMenuOverlay(index);
      }),
    );
  }


  OverlayEntry? _entry;
  //长按菜单框
  _showMenuOverlay(int index){
    GlobalKey? key = keyMap[_provider.listTabIndex]?[index];
    RenderBox? box = key?.currentContext?.findRenderObject() as RenderBox?;
    Offset clickOffset = Offset.zero;
    clickOffset = box?.localToGlobal(Offset.zero)??Offset.zero;
    bool isBottom = clickOffset.dy + 64 + 100 > screenHeight - 48;//是否到底了

    OverlayState? overlayState = Overlay.of(context);
    LogUtil.printE("打那个钱位置：$clickOffset");
    _entry = OverlayEntry(
      opaque: false,
      builder: (_){
        return Stack(
          children: [
            CustomPaint(
              painter: ExChatMenuWidget(!isBottom),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ExTextView(S.of(context).text_167,),
                  "".container(h: 12),
                  ExTextView(S.of(context).text_168,),
                  "".container(h: 12),
                  ExTextView(S.of(context).text_132,),
                ],
              ).container(
                w: 120,
                h: 108,
                padT: isBottom?8:16,
                padB: isBottom?16:8,
              ),
            ).positioned(top: isBottom? (clickOffset.dy + 24 - 100 - 8): clickOffset.dy + 64,left: 170.w),

            // Column(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     ExTextView(S.of(context).text_167,),
            //     "".container(h: 12),
            //     ExTextView(S.of(context).text_168,),
            //     "".container(h: 12),
            //     ExTextView(S.of(context).text_132,),
            //   ],
            // ).container(
            //   w: 120,
            //   h: 108,
            //   padT: 8,
            //   padB: 8,
            //   bgColor: Colors.red
            // ).positioned(top: isBottom? (clickOffset.dy + 24 - 100 - 8): clickOffset.dy + 64,left: 170.w),
          ],
        ).container(bgColor: Colors.transparent).onTap(() {
          selectIndexMap = {0:-1,1:-1,2:-1};
          setState(() {});
          _entry?.remove();
        });
      },
    );
    overlayState?.insert(_entry!);

  }

}
