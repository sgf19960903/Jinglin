/// 大图查看
/// @Author Tongzongwen
/// @Date 2022/9/28 23:11
/// @Description TODO

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/ui/base/base_state.dart';


class BigPhotoPage extends StatefulWidget {
  const BigPhotoPage({Key? key}) : super(key: key);

  @override
  State<BigPhotoPage> createState() => _BigPhotoPageState();
}

class _BigPhotoPageState extends BaseState<BigPhotoPage> {


  @override
  void initState() {
    super.initState();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);
  }

  @override
  Widget build(BuildContext context) {
    return widgetBuild(
      child: Column(
        children: [
          _imageWidget().exp(),
          _navigatorWidget(),
        ],
      ).container(bgColor: AppColors.black,padB: paddingBottom)
    );
  }

  //大图显示
  Widget _imageWidget(){
    return PageView(
      controller: PageController(),
      children: List.generate(10, (index) {
        return AppImage().iconWechat.image(w: screenWidth,fit: BoxFit.fitWidth);
      }),
    );
  }


  //图片导航
  Widget _navigatorWidget(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(5, (index) {
        return "".container(w: index==0?20.w:6.w,h: 6.w,radius: 6.w,bgColor: AppColors.white,marginL: index==0?0:8.w);
      }),
    ).container(marginB: 12);
  }

}

