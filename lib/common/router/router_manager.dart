

import 'package:jinglin/ui/main_page.dart';

import 'flutter_router.dart';

const Duration PUSHTIME = Duration(milliseconds: 300);//300ms页面跳转
const Duration ANIMATETIME = Duration(milliseconds: 250);//250ms页面跳转动画时间

class RouterName {
  //Test
  static const String test = "test";
  //MainPage
  static const String main = "main";
  //HomePage
  static const String home = "home";
  //个人中心
  static const String mine = "mine";
  //登陆
  static const String login = "login";
  //注册
  static const String register = "register";
  //忘记登录密码
  static const String forgetLoginPass = "forgetLoginPass";

}

Router generateRoute() {
  return Router({
    // RouterName.textHtml: BaseRouter(
    //   routerBuilder: (context, match, settings) => TextHtml(),
    //   animate: RouterAnimate.slide_left,
    // ),
    RouterName.main: BaseRouter(
      routerBuilder: (context, match, settings) => MainPage(),
      animate: RouterAnimate.slide_left,
    ),


  });
}