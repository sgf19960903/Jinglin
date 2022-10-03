/// BaseState
/// @Author Tongzongwen
/// @Date 2022/9/26
/// @Description 所有页面State的基类

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/provider/base/base_provider.dart';
import 'package:jinglin/ui/widgets/ex_scaffold.dart';
import 'package:jinglin/ui/widgets/ex_title_view.dart';
import 'package:provider/provider.dart';


abstract class BaseState<T extends StatefulWidget> extends State<T> {
  bool hasHeaderBg = false;//是否有顶部header背景
  bool hasHeaderIntroImg = false;//是否有顶部Header描述图片
  BaseProvider? _provider;


  Widget widgetBuild({
    required Widget child,
    ExTitleView? appBar,
    double bgHeaderHeight = 150,
    bool hasHeaderBg = false,
    bool hasHeaderIntroImg = false,
    bool bottomInsert = false,
    Widget? floatWidget,
    Color? bgColor,
    BaseProvider? provider,
  }){
    LogUtil.printE("里面的Context：$context");
    _provider = provider;
    double headerHeight = 0;
    if(hasHeaderBg) headerHeight = headerHeight + paddingTop;
    if(hasHeaderIntroImg) headerHeight = headerHeight + AppSizes.titleHeight;
    // if(provider==null) return ExScaffold(
    //   floatButton: floatWidget,
    //   appBar: appBar,
    //   backgroundColor: bgColor,
    //   bottomInset: bottomInsert,
    //   child: Stack(
    //     children: [
    //       if(hasHeaderBg) AppImage().pageHeaderBg.image(w: screenWidth,h: bgHeaderHeight,fit: BoxFit.fill),
    //       if(hasHeaderIntroImg) AppImage().mineHeaderBg.image(w: 185.w,h: 38.w,).container(marginT: paddingTop,marginL: AppSizes.pagePaddingLR),
    //       child.container(marginT: headerHeight,h: (screenHeight - headerHeight))
    //     ],
    //   )
    // );
    return ExScaffold(
        floatButton: floatWidget,
        appBar: appBar,
        backgroundColor: bgColor,
        bottomInset: bottomInsert,
        child: Stack(
          children: [
            if(hasHeaderBg) AppImage().pageHeaderBg.image(w: screenWidth,h: 150,fit: BoxFit.fill),
            if(hasHeaderIntroImg) AppImage().mineHeaderBg.image(w: 185.w,h: 38.w,).container(marginT: paddingTop,marginL: AppSizes.pagePaddingLR),
            child.container(marginT: headerHeight,h: (screenHeight - headerHeight))
          ],
        )
    );
  }


  @override
  void dispose() {
    _provider?.dispose();
    super.dispose();
  }


}