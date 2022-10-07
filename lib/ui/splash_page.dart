/// 启动页
/// @Author Tongzongwen
/// @Date 2022/10/7 15:58
/// @Description TODO

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:jinglin/application/app.dart';
import 'package:jinglin/common/extention/string_extention.dart';
import 'package:jinglin/common/res/res_path.dart';
import 'package:jinglin/common/router/router_manager.dart';
import 'package:jinglin/common/utils/navigator_util.dart';
import 'package:jinglin/generated/l10n.dart';
import 'package:jinglin/ui/base/base_state.dart';
import 'package:jinglin/ui/widgets/ex_text_view.dart';


class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends BaseState<SplashPage> {
  late Timer _timer;
  int countDown = 2;

  //跳转
  _jump(){
    if(App.token.isEmpty) NavigatorUtil.goPageAndRemove(context, RouterName.login);
    else NavigatorUtil.goPageAndRemove(context, RouterName.main);
  }

  @override
  void initState() {
    super.initState();
    _timer = Timer.periodic(Duration(seconds: 1), (timer) {
      if(countDown<=0) {
        timer.cancel();
        _jump();
      }else --countDown;
      setState(() {});
    });
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        alignment: Alignment.topRight,
        children: [
          AppImage().launcherBg.image(w: screenWidth,h: screenHeight,fit: BoxFit.fill),
          //跳过按钮
          ExTextView(S.of(context).text_166(countDown),
            size: 12,
            isRegular: false,
            color: AppColors.white,
          ).container(padL: 10.w,padR: 10.w,padT: 8,padB: 8,bgColor: AppColors.black.withOpacity(0.3),radius: 999).onTap(() {
            _timer.cancel();
            _jump();
          }).positioned(top: paddingTop + 6,right: 16.w),
        ],
      ),
    );
  }
}
