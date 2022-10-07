

import 'package:jinglin/my_app.dart';
import 'package:jinglin/ui/chat/chat_session_page.dart';
import 'package:jinglin/ui/chat/chat_settings_page.dart';
import 'package:jinglin/ui/chat/user_home_page.dart';
import 'package:jinglin/ui/chat/user_home_page_settings.dart';
import 'package:jinglin/ui/login/improve_user_info_page.dart';
import 'package:jinglin/ui/login/login_page.dart';
import 'package:jinglin/ui/main_page.dart';
import 'package:jinglin/ui/mine/Crop/crop_photo_page.dart';
import 'package:jinglin/ui/mine/diamond/my_diamond_page.dart';
import 'package:jinglin/ui/mine/dynamic/my_dynamic_page.dart';
import 'package:jinglin/ui/mine/fans/my_fans_page.dart';
import 'package:jinglin/ui/mine/feedback/report_page.dart';
import 'package:jinglin/ui/mine/feedback/suggest_feedback_page.dart';
import 'package:jinglin/ui/mine/follow/my_follow_page.dart';
import 'package:jinglin/ui/mine/income/apply_withdraw_page.dart';
import 'package:jinglin/ui/mine/income/my_income_page.dart';
import 'package:jinglin/ui/mine/info/personal_info_page.dart';
import 'package:jinglin/ui/mine/info/update_phone_page.dart';
import 'package:jinglin/ui/mine/settings/privacy_settings_page.dart';
import 'package:jinglin/ui/mine/settings/push_settings_page.dart';
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


  //聊天会话
  static const String chatSession = "chatSession";
  //用户主页
  static const String userHomePage = "userHomePage";
  //聊天设置
  static const String chatSettings = "chatSettings";
  //用户主页设置
  static const String userHomePageSettings = "userHomePageSettings";
  //个人信息
  static const String personalInfo = "personalInfo";
  //推送设置
  static const String pushSettings = "pushSettings";
  //意见反馈
  static const String suggestFeedback = "suggestFeedback";
  //我的收益
  static const String myIncome = "myIncome";
  //我的钻石
  static const String myDiamond = "myDiamond";
  //申请提现
  static const String applyWithDraw = "applyWithDraw";
  //我的关注
  static const String myFollow = "myFollow";
  //我的粉丝
  static const String myFans = "myFans";
  //修改手机号
  static const String updatePhone = "updatePhone";
  //完善信息--首次登录
  static const String improveInfo = "improveInfo";
  //裁剪图片
  static const String cropPhoto = "cropPhoto";
  //我的动态
  static const String myDynamic = "myDynamic";
  //隐私设置
  static const String privacySettings = "privacySettings";
  //app
  static const String myApp = "myApp";

}

Router generateRoute() {
  return Router({
    // RouterName.textHtml: BaseRouter(
    //   routerBuilder: (context, match, settings) => TextHtml(),
    //   animate: RouterAnimate.slide_right,
    // ),
    RouterName.myApp: BaseRouter(
      routerBuilder: (context, match, settings) => MyApp(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.login: BaseRouter(
      routerBuilder: (context, match, settings) => LoginPage(),
      animate: RouterAnimate.fade,
    ),
    RouterName.main: BaseRouter(
      routerBuilder: (context, match, settings) => MainPage(),
      animate: RouterAnimate.fade,
    ),
    RouterName.praiseNotice: BaseRouter(
      routerBuilder: (context, match, settings) => PraiseNoticePage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.commentNotice: BaseRouter(
      routerBuilder: (context, match, settings) => CommentNoticePage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.sysNotice: BaseRouter(
      routerBuilder: (context, match, settings) => SystemNoticePage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.dynamicDetail: BaseRouter(
      routerBuilder: (context, match, settings) => DynamicDetailPage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.publishDynamic: BaseRouter(
      routerBuilder: (context, match, settings) => PublishDynamicPage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.report: BaseRouter(
      routerBuilder: (context, match, settings) => ReportPage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.bigPhoto: BaseRouter(
      routerBuilder: (context, match, settings) => BigPhotoPage(),
      animate: RouterAnimate.fade,
    ),

    RouterName.chatSession: BaseRouter(
      routerBuilder: (context, match, settings) => ChatSessionPage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.chatSettings: BaseRouter(
      routerBuilder: (context, match, settings) => ChatSettingsPage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.userHomePage: BaseRouter(
      routerBuilder: (context, match, settings) => UserHomePage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.userHomePageSettings: BaseRouter(
      routerBuilder: (context, match, settings) => UserHomePageSettings(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.personalInfo: BaseRouter(
      routerBuilder: (context, match, settings) => PersonalInfoPage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.pushSettings: BaseRouter(
      routerBuilder: (context, match, settings) => PushSettingsPage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.suggestFeedback: BaseRouter(
      routerBuilder: (context, match, settings) => SuggestFeedbackPage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.myIncome: BaseRouter(
      routerBuilder: (context, match, settings) => MyIncomePage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.myDiamond: BaseRouter(
      routerBuilder: (context, match, settings) => MyDiamondPage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.applyWithDraw: BaseRouter(
      routerBuilder: (context, match, settings) => ApplyWithDrawPage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.myFans: BaseRouter(
      routerBuilder: (context, match, settings) => MyFansPage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.myFollow: BaseRouter(
      routerBuilder: (context, match, settings) => MyFollowPage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.updatePhone: BaseRouter(
      routerBuilder: (context, match, settings) => UpdatePhonePage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.improveInfo: BaseRouter(
      routerBuilder: (context, match, settings) => ImproveUserInfoPage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.cropPhoto: BaseRouter(
      routerBuilder: (context, match, settings) => CropPhotoPage(),
      animate: RouterAnimate.fade,
    ),
    RouterName.myDynamic: BaseRouter(
      routerBuilder: (context, match, settings) => MyDynamicPage(),
      animate: RouterAnimate.slide_right,
    ),
    RouterName.privacySettings: BaseRouter(
      routerBuilder: (context, match, settings) => PrivacySettingsPage(),
      animate: RouterAnimate.slide_right,
    ),

  });
}