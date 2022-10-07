/// 用户主页
/// @Author Tongzongwen
/// @Date 2022/9/29 21:39
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/provider/chat/user_home_page_provider.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_dynamic_widget.dart';
import 'package:jinglin/ui/widgets/ex_list_view.dart';
import 'package:jinglin/ui/widgets/ex_sliver_persistent_header_delegate.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:provider/provider.dart';


class UserHomePage extends StatefulWidget {
  const UserHomePage({Key? key}) : super(key: key);

  @override
  State<UserHomePage> createState() => _UserHomePageState();
}

class _UserHomePageState extends BaseState<UserHomePage> {
  UserHomePageProvider _provider = UserHomePageProvider();


  @override
  void initState() {
    super.initState();
    _provider.scrollController.addListener(_provider.scrollListener);
  }

  @override
  void dispose() {
    _provider.scrollController.removeListener(_provider.scrollListener);
    _provider.scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      child: ChangeNotifierProvider.value(
        value: _provider,
        child: Column(
          children: [
            _contentWidget().exp(),
            _accostWidget(),
          ],
        ),
      )
    );
  }

  //标题栏
  SliverAppBar _titleWidget(){
    return SliverAppBar(
      backgroundColor: AppColors.white,
      leadingWidth: 36.w,
      toolbarHeight: 44,
      expandedHeight: 375,
      pinned: true,
      floating: false,
      elevation: 0,
      //返回
      leading: AppImage().iconBackBlack.image(w: 24.w,h: 24.w).container(marginL: 12.w).onTap(() {
        Navigator.of(context).pop();
      }),
      //菜单栏 -- 更多
      actions: [
        AppImage().iconMore.image(w: 24.w,h: 24.w,).container(marginL: 12.w,marginR: 12.w).onTap(() {
          NavigatorUtil.gotPage(context, RouterName.userHomePageSettings);
        }),
      ],
      title: _scaleUserBaseInfoWidget(),
      //扩展标题
      flexibleSpace: FlexibleSpaceBar(
        background: _userBaseInfoWidget(),
      ),
    );
  }


  //缩放至标题的用户基本信息
  Widget _scaleUserBaseInfoWidget(){
    return Selector(
      builder: (_,double opacity,child){
        return Opacity(
          opacity: opacity,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AppImage().iconTempAvatar.image(w: 36.w,h: 36.w).clipRRect(radius: 8).container(marginR: 12.w,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ExTextView("小不点",
                    isRegular: false,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      AppImage().iconWomanGray.image(w: 8.w,h: 8.w,),
                      ExTextView("24",
                        color: AppColors.white,
                        size: AppSizes.hintFontSize,
                      ).container(marginL: 2.w),
                    ],
                  ).container(padL: 3.w,padR: 3.w,padT: 1,padB: 1,marginT: 4,bgColor: AppColors.womanColor,radius: 99),
                ],
              ).exp(),
            ],
          ).container(h: 44,),
        );
      },
      selector: (_,UserHomePageProvider p) => p.titleOpacity,
    );
  }

  //用户基本信息
  Widget _userBaseInfoWidget(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //昵称
                ExTextView("已婚少女心",
                  color: AppColors.white,
                  size: 22,
                  isRegular: false,
                ),
                //性别、身高
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    //性别
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppImage().iconWomanGray.image(w: 8.w,h: 8.w,),
                        ExTextView("24",
                          color: AppColors.white,
                          size: AppSizes.hintFontSize,
                        ),
                      ],
                    ).container(align: Alignment.center,padL: 3.w,padR: 3.w,bgColor: AppColors.womanColor,radius: 99),
                    //身高
                    ExTextView("165cm",
                      color: AppColors.white,
                      size: 12,
                    ).container(marginL: 8.w),
                  ],
                ).container(marginT: 8,marginL: 2.w),
              ],
            ).exp(),
            //关注按钮
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppImage().iconLikeWhite.image(w: 16.w,h: 16.w,),
                ExTextView(S.of(context).text_131,
                  color: AppColors.white,
                  size: AppSizes.contentFontSize,
                  isStrutStyle: true,
                ).container(marginL: 2.w),
              ],
            ).container(
              h: 32,
              w: 74.w,
              radius: 999,
              bgColor: AppColors.themeColor
            ).onTap(() {

            })
          ],
        ).container(
          h: 76,
          bgColor: AppColors.black.withOpacity(0.4),
          padL: AppSizes.pagePaddingLR,
          padR: AppSizes.pagePaddingLR,
        ),
      ],
    ).container(
      h: 375,
      bgImg: AppImage().tempBg,
    );
  }

  //资料Tab
  Widget _infoTabWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ExTextView(S.of(context).text_149,
              color: 0==_provider.tabIndex? AppColors.textColor : AppColors.grayColor,
              size: 0==_provider.tabIndex?18:16,
              isRegular: 0!=_provider.tabIndex,
            ).container(h: 24),
            "".container(
              w: 16.w,
              h: 3,
              radius: 1.5,
              bgColor: 0==_provider.tabIndex?AppColors.white:Colors.transparent,
              gradient: LinearGradient(
                colors: [AppColors.gradientButtonBeginColor,AppColors.gradientButtonEndColor],
              ),
            )
          ],
        ).onTap(() {
          _provider.pageController.jumpToPage(0);
          // _provider.pageController.animateToPage(0, duration: Duration(milliseconds: 300), curve: Curves.linear);
          _provider.changeTabIndex(0);
        }),
        "".container(w: 32.w),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ExTextView(S.of(context).text_150,
              color: 1==_provider.tabIndex? AppColors.textColor : AppColors.grayColor,
              size: 1==_provider.tabIndex?18:16,
              isRegular: 1!=_provider.tabIndex,
            ).container(h: 24),
            "".container(
              w: 16.w,
              h: 3,
              radius: 1.5,
              bgColor: 1==_provider.tabIndex?AppColors.white:Colors.transparent,
              gradient: LinearGradient(
                colors: [AppColors.gradientButtonBeginColor,AppColors.gradientButtonEndColor],
              ),
            )
          ],
        ).onTap(() {
          _provider.pageController.jumpToPage(1);
          // _provider.pageController.animateToPage(1, duration: Duration(milliseconds: 300), curve: Curves.linear);
          _provider.changeTabIndex(1);
        }),
      ],
    ).container(h: 60,bgColor: AppColors.white,bgImg: _provider.tabIndex==1?null:AppImage().userHomePageTabBg);
  }

  //内容
  Widget _contentWidget(){
    return Selector(
      builder: (_,data,child){
        return PageView(
          controller: _provider.pageController,
          onPageChanged: (index){
            _provider.changeTabIndex(index);
          },
          children: [
            _tabOneWidget(),
            _tabTwoWidget(),
          ],
        );
      },
      selector: (_,UserHomePageProvider p) => p.tabIndex
    );
  }

  //Tab为0时的视图
  Widget _tabOneWidget(){
    return CustomScrollView(
      controller: _provider.scrollController,
      slivers: [
        _titleWidget(),
        SliverToBoxAdapter(
          child: _infoTabWidget(),
        ),
        SliverToBoxAdapter(
          child: _userDetailInfoWidget(),
        ),
        SliverToBoxAdapter(
          child: "".container(h: 500),
        ),
      ],
    );
  }

  //Tab为1时的视图
  Widget _tabTwoWidget(){
    return Column(
      children: [
        "".container(h: paddingTop),
        Row(
          children: [
            AppImage().iconBackBlack.image(w: 24.w,h: 24.w).container(marginL: 12.w,marginR: 12.w).onTap(() {
              Navigator.of(context).pop();
            }),
            _scaleUserBaseInfoWidget().exp(),
            AppImage().iconMore.image(w: 24.w,h: 24.w).container(marginL: 12.w,marginR: 12.w).onTap(() {
              NavigatorUtil.gotPage(context, RouterName.userHomePageSettings);
            }),
          ],
        ),
        _infoTabWidget(),
        _dynamicListWidget().exp(),
      ],
    );
  }

  //用户详细信息
  Widget _userDetailInfoWidget(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        //昵称、年龄
        Row(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppImage().iconUsername.image(w: 16.w,h: 16.w,),
                ExTextView("${S.of(context).text_19}:",
                  color: AppColors.grayColor,
                ).container(marginL: 6.w),
                ExTextView("小小猪",).container(marginL: 6.w)
              ],
            ).exp(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppImage().iconBirth.image(w: 16.w,h: 16.w,),
                ExTextView("${S.of(context).text_20}:",
                  color: AppColors.grayColor,
                ).container(marginL: 6.w),
                ExTextView(S.of(context).text_153(19),).container(marginL: 6.w)
              ],
            ).exp(),
          ],
        ),
        //性别、身高
        Row(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppImage().iconSex.image(w: 16.w,h: 16.w,),
                ExTextView("${S.of(context).text_92}:",
                  color: AppColors.grayColor,
                ).container(marginL: 6.w),
                ExTextView(S.of(context).text_135,).container(marginL: 6.w)
              ],
            ).exp(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                AppImage().iconHeight.image(w: 16.w,h: 16.w,),
                ExTextView("${S.of(context).text_21}:",
                  color: AppColors.grayColor,
                ).container(marginL: 6.w),
                ExTextView("165cm",).container(marginL: 6.w)
              ],
            ).exp(),
          ],
        ).container(marginT: 16),
        "".container(h: 0.5,bgColor: AppColors.borderColor,marginT: 16),
        //个人介绍
        ExTextView("${S.of(context).text_152}:",
          isRegular: false,
        ).container(marginT: 16),
        ExTextView("每一个经常失恋的人，都会对自己说，没关系，只要有耐心，总有一个人会等着我。阎王爷说，没想到是我吧。",
          maxLines: 10,
        ).container(marginT: 12),
      ],
    ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR);
  }

  //动态列表
  Widget _dynamicListWidget(){
    return ExListView(
      itemCount: 10,
      // shrinkWrap: false,
      // physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(left: AppSizes.pagePaddingLR,right: AppSizes.pagePaddingLR),
      itemBuilder: (_,index) => ExDynamicWidget(index,showUserInfo: false,),
    );
  }

  //搭讪按钮
  Widget _accostWidget(){
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AppImage().iconFlash.image(w: 24.w,h: 24.w,),
        ExTextView(S.of(context).text_151,
          color: AppColors.white,
          size: 16,
          isRegular: false,
        ).container(marginL: 8.w,),
      ],
    ).container(
        h: AppSizes.buttonHeight,
        radius: 8,
        align: Alignment.center,
        bgColor: AppColors.white,
        gradient: LinearGradient(colors: [AppColors.gradientButtonBeginColor,AppColors.gradientButtonEndColor])
    ).container(padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,padT: 6,padB: 26+paddingBottom,bgColor: AppColors.white);
  }

}

