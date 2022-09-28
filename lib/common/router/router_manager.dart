

import 'package:jinglin/ui/main_page.dart';
import 'package:jinglin/ui/mine/feedback/report_page.dart';
import 'package:jinglin/ui/square/dynamic/big_photo_page.dart';
import 'package:jinglin/ui/square/dynamic/dynamic_detail_page.dart';
import 'package:jinglin/ui/square/dynamic/publish_dynamic_page.dart';
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
  //动态详情
  static const String dynamicDetail = "dynamicDetail";
  //发布动态
  static const String publishDynamic = "publishDynamic";
  //举报
  static const String report = "report";
  //大图浏览
  static const String bigPhoto = "bigPhoto";

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
    RouterName.dynamicDetail: BaseRouter(
      routerBuilder: (context, match, settings) => DynamicDetailPage(),
      animate: RouterAnimate.slide_left,
    ),
    RouterName.publishDynamic: BaseRouter(
      routerBuilder: (context, match, settings) => PublishDynamicPage(),
      animate: RouterAnimate.slide_left,
    ),
    RouterName.report: BaseRouter(
      routerBuilder: (context, match, settings) => ReportPage(),
      animate: RouterAnimate.slide_left,
    ),
    RouterName.bigPhoto: BaseRouter(
      routerBuilder: (context, match, settings) => BigPhotoPage(),
      animate: RouterAnimate.slide_left,
    ),


  });
}