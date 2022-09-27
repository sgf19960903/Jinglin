

import 'package:jinglin/ui/main_page.dart';
import 'package:jinglin/ui/square/notice/comment_notice_page.dart';
import 'package:jinglin/ui/square/notice/praise_notice_page.dart';
import 'package:jinglin/ui/square/notice/system_notice_page.dart';

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
  //点赞通知页
  static const String praiseNotice = "praiseNotice";
  //评论通知页
  static const String commentNotice = "commentNotice";
  //系统通知页
  static const String sysNotice = "sysNotice";

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
    RouterName.praiseNotice: BaseRouter(
      routerBuilder: (context, match, settings) => PraiseNoticePage(),
      animate: RouterAnimate.slide_left,
    ),
    RouterName.commentNotice: BaseRouter(
      routerBuilder: (context, match, settings) => CommentNoticePage(),
      animate: RouterAnimate.slide_left,
    ),
    RouterName.sysNotice: BaseRouter(
      routerBuilder: (context, match, settings) => SystemNoticePage(),
      animate: RouterAnimate.slide_left,
    ),


  });
}