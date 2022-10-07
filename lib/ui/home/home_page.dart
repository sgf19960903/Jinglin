/// 首页
/// @Author Tongzongwen
/// @Date 2022/9/26
/// @Description TODO

import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/provider/home/home_provider.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_list_view.dart';
import 'package:jinglin/ui/widgets/ex_sliver_persistent_header_delegate.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';
import 'package:provider/provider.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseState<HomePage> {
  HomeProvider _provider = HomeProvider();


  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      hasHeaderBg: true,
      hasHeaderIntroImg: true,
      provider: _provider,
      child: ChangeNotifierProvider.value(
        value: _provider,
        // child: CustomScrollView(
        //   slivers: [
        //     SliverToBoxAdapter(
        //       child: _bannerWidget(),
        //     ),
        //     SliverToBoxAdapter(
        //       child: _tabListWidget(),
        //     ),
        //     SliverToBoxAdapter(
        //       child: _listContentWidget(),
        //     ),
        //   ],
        // ),
        child: Column(
          children: [
            _bannerWidget(),
            _tabListWidget(),
            _listContentWidget().exp(),
          ],
        ),
      )
    );
  }


  //轮播图
  Widget _bannerWidget(){
    return Swiper(
      viewportFraction: 0.9,
      itemHeight: 150,
      itemCount: 3,
      autoplay: true,
      scale: 1,
      itemBuilder: (_,index) => AppImage().defaultBannerBg.image(w: screenWidth,h: 150,fit: BoxFit.fill).clipRRect(radius: 12).container(padL: 4.w,padR: 4.w,radius: 12).onTap(() {
        // NavigatorUtil.gotPage(context, RouterName.bigPhoto);
      }),
    ).container(h: 150,marginT: 8,marginB: 15,/*padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR*/);
  }


  //列表tab列表
  Widget _tabListWidget(){
    List<String> tabNameList = [S.of(context).text_33,S.of(context).text_34,];
    return Row(
      children: List.generate(2, (index) => Selector(
        builder: (_,int tabIndex,child){
          return Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ExTextView(tabNameList[index],
                color: index==tabIndex? AppColors.textColor : AppColors.grayColor,
                size: index==tabIndex?18:16,
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
        selector: (_,HomeProvider p) => p.listTabIndex
      ).onTap(() {
        _provider.changeListTabIndex(index);
      }).container(marginR: 16.w,)),
    ).container(bgColor: AppColors.white,padL: AppSizes.pagePaddingLR,padR: AppSizes.pagePaddingLR,);
  }

  //内容列表
  Widget _listContentWidget(){
    return PageView(
      controller: _provider.pageController,
      onPageChanged: (index){
        _provider.changeListTabIndex(index);
      },
      children: [
        _friendListWidget(),
        _friendListWidget(),
      ],
    );
  }

  //交友列表
  Widget _friendListWidget(){
    return ExListView(
      itemCount: 10,
      // shrinkWrap: false,
      // physics: NeverScrollableScrollPhysics(),
      padding: EdgeInsets.only(left: AppSizes.pagePaddingLR,right: AppSizes.pagePaddingLR,top: 13),
      itemBuilder: (_,index){
        return Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //用户头像
            AppImage().iconTempAvatar.image(w: 64.w,h: 64.w,).clipRRect(radius: 12),
            //间距
            "".container(w: 12.w),
            //用户其他信息
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //用户名、位置
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ExTextView("是朱不是猪",isRegular: false,).exp(),
                    AppImage().iconLocationGray.image(w: 16.w,h: 16.w,).container(marginR: 2.w,),
                    ExTextView("北京",
                      color: AppColors.grayColor,
                    ),
                  ],
                ),
                //性别、个性签名、搭讪
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        //性别
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
                        ).container(padL: 3.w,padR: 3.w,padT: 1,padB: 1,marginT: 8,bgColor: AppColors.womanColor,radius: 99),
                        //个性签名
                        ExTextView("没留下什么东西",
                          color: AppColors.grayColor,
                          size: AppSizes.contentFontSize,
                        ).container(marginT: 8),
                      ],
                    ).exp(),
                    //搭讪按钮
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        AppImage().iconFlashWhite.image(w: 16.w,h: 16.w,),
                        ExTextView(S.of(context).text_35,
                          color: AppColors.white,
                          size: AppSizes.contentFontSize,
                        ).container(marginL: 2.w),
                      ],
                    ).container(
                      h: 32,
                      padL: 8.w,
                      padR: 8.w,
                      marginT: 6,
                      radius: 999,
                      bgColor: AppColors.white,
                      gradient: LinearGradient(
                        colors: [AppColors.gradientButtonBeginColor,AppColors.gradientButtonEndColor],
                      ),
                    ),
                  ],
                ),
                "".container(w: double.infinity,h: 0.5,bgColor: AppColors.borderColor,marginT: 16),

              ],
            ).exp(),
          ],
        ).onTap(() {
          NavigatorUtil.gotPage(context, RouterName.userHomePage);
        }).container(marginB: 16,);
      }
    );
  }
}
