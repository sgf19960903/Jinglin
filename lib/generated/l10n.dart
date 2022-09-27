// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `鲸邻交友`
  String get app_name {
    return Intl.message(
      '鲸邻交友',
      name: 'app_name',
      desc: '',
      args: [],
    );
  }

  /// `登录`
  String get text_0 {
    return Intl.message(
      '登录',
      name: 'text_0',
      desc: '',
      args: [],
    );
  }

  /// `注册`
  String get text_1 {
    return Intl.message(
      '注册',
      name: 'text_1',
      desc: '',
      args: [],
    );
  }

  /// `首页`
  String get text_2 {
    return Intl.message(
      '首页',
      name: 'text_2',
      desc: '',
      args: [],
    );
  }

  /// `广场`
  String get text_3 {
    return Intl.message(
      '广场',
      name: 'text_3',
      desc: '',
      args: [],
    );
  }

  /// `聊天`
  String get text_4 {
    return Intl.message(
      '聊天',
      name: 'text_4',
      desc: '',
      args: [],
    );
  }

  /// `我的`
  String get text_5 {
    return Intl.message(
      '我的',
      name: 'text_5',
      desc: '',
      args: [],
    );
  }

  /// `获取验证码`
  String get text_6 {
    return Intl.message(
      '获取验证码',
      name: 'text_6',
      desc: '',
      args: [],
    );
  }

  /// `我已阅读并同意`
  String get text_7 {
    return Intl.message(
      '我已阅读并同意',
      name: 'text_7',
      desc: '',
      args: [],
    );
  }

  /// `《用户协议》`
  String get text_8 {
    return Intl.message(
      '《用户协议》',
      name: 'text_8',
      desc: '',
      args: [],
    );
  }

  /// `《隐私协议》`
  String get text_9 {
    return Intl.message(
      '《隐私协议》',
      name: 'text_9',
      desc: '',
      args: [],
    );
  }

  /// `请填写手机号`
  String get text_10 {
    return Intl.message(
      '请填写手机号',
      name: 'text_10',
      desc: '',
      args: [],
    );
  }

  /// `请输入验证码`
  String get text_11 {
    return Intl.message(
      '请输入验证码',
      name: 'text_11',
      desc: '',
      args: [],
    );
  }

  /// `当前手机号`
  String get text_12 {
    return Intl.message(
      '当前手机号',
      name: 'text_12',
      desc: '',
      args: [],
    );
  }

  /// `本机号码一键登录`
  String get text_13 {
    return Intl.message(
      '本机号码一键登录',
      name: 'text_13',
      desc: '',
      args: [],
    );
  }

  /// `切换手机号登录`
  String get text_14 {
    return Intl.message(
      '切换手机号登录',
      name: 'text_14',
      desc: '',
      args: [],
    );
  }

  /// `上传头像`
  String get text_15 {
    return Intl.message(
      '上传头像',
      name: 'text_15',
      desc: '',
      args: [],
    );
  }

  /// `性别一旦设置后降无法修改`
  String get text_16 {
    return Intl.message(
      '性别一旦设置后降无法修改',
      name: 'text_16',
      desc: '',
      args: [],
    );
  }

  /// `男性`
  String get text_17 {
    return Intl.message(
      '男性',
      name: 'text_17',
      desc: '',
      args: [],
    );
  }

  /// `女性`
  String get text_18 {
    return Intl.message(
      '女性',
      name: 'text_18',
      desc: '',
      args: [],
    );
  }

  /// `昵称`
  String get text_19 {
    return Intl.message(
      '昵称',
      name: 'text_19',
      desc: '',
      args: [],
    );
  }

  /// `年龄`
  String get text_20 {
    return Intl.message(
      '年龄',
      name: 'text_20',
      desc: '',
      args: [],
    );
  }

  /// `身高`
  String get text_21 {
    return Intl.message(
      '身高',
      name: 'text_21',
      desc: '',
      args: [],
    );
  }

  /// `请输入昵称`
  String get text_22 {
    return Intl.message(
      '请输入昵称',
      name: 'text_22',
      desc: '',
      args: [],
    );
  }

  /// `请选择`
  String get text_27 {
    return Intl.message(
      '请选择',
      name: 'text_27',
      desc: '',
      args: [],
    );
  }

  /// `保存`
  String get text_28 {
    return Intl.message(
      '保存',
      name: 'text_28',
      desc: '',
      args: [],
    );
  }

  /// `隐私设置`
  String get text_29 {
    return Intl.message(
      '隐私设置',
      name: 'text_29',
      desc: '',
      args: [],
    );
  }

  /// `是否授权软件屏蔽手机通讯录里的用户?屏蔽后他们将看不到自己的信息。`
  String get text_30 {
    return Intl.message(
      '是否授权软件屏蔽手机通讯录里的用户?屏蔽后他们将看不到自己的信息。',
      name: 'text_30',
      desc: '',
      args: [],
    );
  }

  /// `暂不屏蔽`
  String get text_31 {
    return Intl.message(
      '暂不屏蔽',
      name: 'text_31',
      desc: '',
      args: [],
    );
  }

  /// `立马屏蔽`
  String get text_32 {
    return Intl.message(
      '立马屏蔽',
      name: 'text_32',
      desc: '',
      args: [],
    );
  }

  /// `同城`
  String get text_33 {
    return Intl.message(
      '同城',
      name: 'text_33',
      desc: '',
      args: [],
    );
  }

  /// `附近`
  String get text_34 {
    return Intl.message(
      '附近',
      name: 'text_34',
      desc: '',
      args: [],
    );
  }

  /// `搭讪`
  String get text_35 {
    return Intl.message(
      '搭讪',
      name: 'text_35',
      desc: '',
      args: [],
    );
  }

  /// `距你{name}`
  String text_36(Object name) {
    return Intl.message(
      '距你$name',
      name: 'text_36',
      desc: '',
      args: [name],
    );
  }

  /// `拍摄`
  String get text_37 {
    return Intl.message(
      '拍摄',
      name: 'text_37',
      desc: '',
      args: [],
    );
  }

  /// `从手机相册选择`
  String get text_38 {
    return Intl.message(
      '从手机相册选择',
      name: 'text_38',
      desc: '',
      args: [],
    );
  }

  /// `取消`
  String get text_39 {
    return Intl.message(
      '取消',
      name: 'text_39',
      desc: '',
      args: [],
    );
  }

  /// `完成`
  String get text_40 {
    return Intl.message(
      '完成',
      name: 'text_40',
      desc: '',
      args: [],
    );
  }

  /// `Withdrawals`
  String get text_41 {
    return Intl.message(
      'Withdrawals',
      name: 'text_41',
      desc: '',
      args: [],
    );
  }

  /// `Funds Transfer`
  String get text_42 {
    return Intl.message(
      'Funds Transfer',
      name: 'text_42',
      desc: '',
      args: [],
    );
  }

  /// `Order Center`
  String get text_45 {
    return Intl.message(
      'Order Center',
      name: 'text_45',
      desc: '',
      args: [],
    );
  }

  /// `Redeem`
  String get text_46 {
    return Intl.message(
      'Redeem',
      name: 'text_46',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get text_47 {
    return Intl.message(
      'Logout',
      name: 'text_47',
      desc: '',
      args: [],
    );
  }

  /// `Scan code to download APP`
  String get text_48 {
    return Intl.message(
      'Scan code to download APP',
      name: 'text_48',
      desc: '',
      args: [],
    );
  }

  /// `More User Side`
  String get text_49 {
    return Intl.message(
      'More User Side',
      name: 'text_49',
      desc: '',
      args: [],
    );
  }

  /// `Chinese`
  String get text_50 {
    return Intl.message(
      'Chinese',
      name: 'text_50',
      desc: '',
      args: [],
    );
  }

  /// `Traditional Chinese`
  String get text_51 {
    return Intl.message(
      'Traditional Chinese',
      name: 'text_51',
      desc: '',
      args: [],
    );
  }

  /// `Whether to continue exit`
  String get text_52 {
    return Intl.message(
      'Whether to continue exit',
      name: 'text_52',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get text_53 {
    return Intl.message(
      'Name',
      name: 'text_53',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get text_54 {
    return Intl.message(
      'Price',
      name: 'text_54',
      desc: '',
      args: [],
    );
  }

  /// `Today's ups and downs`
  String get text_55 {
    return Intl.message(
      'Today\'s ups and downs',
      name: 'text_55',
      desc: '',
      args: [],
    );
  }

  /// `Perfectly compatible with multiple terminals to meet the trading needs of various scenarios at any time`
  String get text_56 {
    return Intl.message(
      'Perfectly compatible with multiple terminals to meet the trading needs of various scenarios at any time',
      name: 'text_56',
      desc: '',
      args: [],
    );
  }

  /// `View real-time quotes at any time`
  String get text_57 {
    return Intl.message(
      'View real-time quotes at any time',
      name: 'text_57',
      desc: '',
      args: [],
    );
  }

  /// `Buy and sell BTC, ETH, XRP, OKB and other digital assets easily`
  String get text_58 {
    return Intl.message(
      'Buy and sell BTC, ETH, XRP, OKB and other digital assets easily',
      name: 'text_58',
      desc: '',
      args: [],
    );
  }

  /// `Get alerts on price changes of cryptocurrencies you care about`
  String get text_59 {
    return Intl.message(
      'Get alerts on price changes of cryptocurrencies you care about',
      name: 'text_59',
      desc: '',
      args: [],
    );
  }

  /// `View Bitcoin Spot, Futures, Options Prices`
  String get text_60 {
    return Intl.message(
      'View Bitcoin Spot, Futures, Options Prices',
      name: 'text_60',
      desc: '',
      args: [],
    );
  }

  /// `Compare cryptocurrency prices across exchanges`
  String get text_61 {
    return Intl.message(
      'Compare cryptocurrency prices across exchanges',
      name: 'text_61',
      desc: '',
      args: [],
    );
  }

  /// `Quote of the day`
  String get text_62 {
    return Intl.message(
      'Quote of the day',
      name: 'text_62',
      desc: '',
      args: [],
    );
  }

  /// `Identity`
  String get text_63 {
    return Intl.message(
      'Identity',
      name: 'text_63',
      desc: '',
      args: [],
    );
  }

  /// `Completing personal authentication helps protect your account and increase your withdrawal limit and trading privileges`
  String get text_64 {
    return Intl.message(
      'Completing personal authentication helps protect your account and increase your withdrawal limit and trading privileges',
      name: 'text_64',
      desc: '',
      args: [],
    );
  }

  /// `Go to`
  String get text_65 {
    return Intl.message(
      'Go to',
      name: 'text_65',
      desc: '',
      args: [],
    );
  }

  /// `Login Password`
  String get text_66 {
    return Intl.message(
      'Login Password',
      name: 'text_66',
      desc: '',
      args: [],
    );
  }

  /// `Used to protect the security of your account`
  String get text_67 {
    return Intl.message(
      'Used to protect the security of your account',
      name: 'text_67',
      desc: '',
      args: [],
    );
  }

  /// `Change`
  String get text_68 {
    return Intl.message(
      'Change',
      name: 'text_68',
      desc: '',
      args: [],
    );
  }

  /// `Funding password`
  String get text_69 {
    return Intl.message(
      'Funding password',
      name: 'text_69',
      desc: '',
      args: [],
    );
  }

  /// `Used to protect the security of funds`
  String get text_70 {
    return Intl.message(
      'Used to protect the security of funds',
      name: 'text_70',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get text_71 {
    return Intl.message(
      'Settings',
      name: 'text_71',
      desc: '',
      args: [],
    );
  }

  /// `Change password`
  String get text_72 {
    return Intl.message(
      'Change password',
      name: 'text_72',
      desc: '',
      args: [],
    );
  }

  /// `Original password`
  String get text_73 {
    return Intl.message(
      'Original password',
      name: 'text_73',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get text_74 {
    return Intl.message(
      'New password',
      name: 'text_74',
      desc: '',
      args: [],
    );
  }

  /// `Confirm new password`
  String get text_75 {
    return Intl.message(
      'Confirm new password',
      name: 'text_75',
      desc: '',
      args: [],
    );
  }

  /// `Set up a password for funds`
  String get text_76 {
    return Intl.message(
      'Set up a password for funds',
      name: 'text_76',
      desc: '',
      args: [],
    );
  }

  /// `Reset Funds Password`
  String get text_77 {
    return Intl.message(
      'Reset Funds Password',
      name: 'text_77',
      desc: '',
      args: [],
    );
  }

  /// `Confirm Funding Password`
  String get text_78 {
    return Intl.message(
      'Confirm Funding Password',
      name: 'text_78',
      desc: '',
      args: [],
    );
  }

  /// `Set up successfully`
  String get text_79 {
    return Intl.message(
      'Set up successfully',
      name: 'text_79',
      desc: '',
      args: [],
    );
  }

  /// `Authentication`
  String get text_80 {
    return Intl.message(
      'Authentication',
      name: 'text_80',
      desc: '',
      args: [],
    );
  }

  /// `Personal Identification`
  String get text_81 {
    return Intl.message(
      'Personal Identification',
      name: 'text_81',
      desc: '',
      args: [],
    );
  }

  /// `Acknowledgement`
  String get text_82 {
    return Intl.message(
      'Acknowledgement',
      name: 'text_82',
      desc: '',
      args: [],
    );
  }

  /// `Primary Authentication`
  String get text_83 {
    return Intl.message(
      'Primary Authentication',
      name: 'text_83',
      desc: '',
      args: [],
    );
  }

  /// `Increase withdrawal amount, 24 hours limit 200BTC`
  String get text_84 {
    return Intl.message(
      'Increase withdrawal amount, 24 hours limit 200BTC',
      name: 'text_84',
      desc: '',
      args: [],
    );
  }

  /// `Advanced Certification`
  String get text_85 {
    return Intl.message(
      'Advanced Certification',
      name: 'text_85',
      desc: '',
      args: [],
    );
  }

  /// `Submit for approval`
  String get text_86 {
    return Intl.message(
      'Submit for approval',
      name: 'text_86',
      desc: '',
      args: [],
    );
  }

  /// `Anti-Money Laundering Agreement Download`
  String get text_87 {
    return Intl.message(
      'Anti-Money Laundering Agreement Download',
      name: 'text_87',
      desc: '',
      args: [],
    );
  }

  /// `Please upload a handheld photo ID`
  String get text_88 {
    return Intl.message(
      'Please upload a handheld photo ID',
      name: 'text_88',
      desc: '',
      args: [],
    );
  }

  /// `Please upload a photo of the AML agreement`
  String get text_89 {
    return Intl.message(
      'Please upload a photo of the AML agreement',
      name: 'text_89',
      desc: '',
      args: [],
    );
  }

  /// `Nationality`
  String get text_90 {
    return Intl.message(
      'Nationality',
      name: 'text_90',
      desc: '',
      args: [],
    );
  }

  /// `Surname`
  String get text_91 {
    return Intl.message(
      'Surname',
      name: 'text_91',
      desc: '',
      args: [],
    );
  }

  /// `First name`
  String get text_92 {
    return Intl.message(
      'First name',
      name: 'text_92',
      desc: '',
      args: [],
    );
  }

  /// `Type of document`
  String get text_93 {
    return Intl.message(
      'Type of document',
      name: 'text_93',
      desc: '',
      args: [],
    );
  }

  /// `ID number`
  String get text_94 {
    return Intl.message(
      'ID number',
      name: 'text_94',
      desc: '',
      args: [],
    );
  }

  /// `Please upload front photo`
  String get text_95 {
    return Intl.message(
      'Please upload front photo',
      name: 'text_95',
      desc: '',
      args: [],
    );
  }

  /// `Please upload the reverse photo`
  String get text_96 {
    return Intl.message(
      'Please upload the reverse photo',
      name: 'text_96',
      desc: '',
      args: [],
    );
  }

  /// `Please enter`
  String get text_97 {
    return Intl.message(
      'Please enter',
      name: 'text_97',
      desc: '',
      args: [],
    );
  }

  /// `Why do I have to authenticate`
  String get text_98 {
    return Intl.message(
      'Why do I have to authenticate',
      name: 'text_98',
      desc: '',
      args: [],
    );
  }

  /// `Real-name authentication is required to comply with current financial regulations or related policies. Real-name authentication is more helpful to protect your account security and avoid some fraudulent means. We will keep your information strictly confidential`
  String get text_99 {
    return Intl.message(
      'Real-name authentication is required to comply with current financial regulations or related policies. Real-name authentication is more helpful to protect your account security and avoid some fraudulent means. We will keep your information strictly confidential',
      name: 'text_99',
      desc: '',
      args: [],
    );
  }

  /// `Which countries are temporarily not supported`
  String get text_100 {
    return Intl.message(
      'Which countries are temporarily not supported',
      name: 'text_100',
      desc: '',
      args: [],
    );
  }

  /// `Real name verification is required to comply with current financial regulations or related policies. Real-name authentication is more helpful to protect your account security and avoid some fraudulent means. We will keep your information strictly confidential`
  String get text_101 {
    return Intl.message(
      'Real name verification is required to comply with current financial regulations or related policies. Real-name authentication is more helpful to protect your account security and avoid some fraudulent means. We will keep your information strictly confidential',
      name: 'text_101',
      desc: '',
      args: [],
    );
  }

  /// `Already registered`
  String get text_102 {
    return Intl.message(
      'Already registered',
      name: 'text_102',
      desc: '',
      args: [],
    );
  }

  /// `Primary review in progress`
  String get text_103 {
    return Intl.message(
      'Primary review in progress',
      name: 'text_103',
      desc: '',
      args: [],
    );
  }

  /// `Primary audit not approved`
  String get text_104 {
    return Intl.message(
      'Primary audit not approved',
      name: 'text_104',
      desc: '',
      args: [],
    );
  }

  /// `Primary audit passed`
  String get text_105 {
    return Intl.message(
      'Primary audit passed',
      name: 'text_105',
      desc: '',
      args: [],
    );
  }

  /// `Advanced review in progress`
  String get text_106 {
    return Intl.message(
      'Advanced review in progress',
      name: 'text_106',
      desc: '',
      args: [],
    );
  }

  /// `Advanced review failed`
  String get text_107 {
    return Intl.message(
      'Advanced review failed',
      name: 'text_107',
      desc: '',
      args: [],
    );
  }

  /// `Advanced review passed`
  String get text_108 {
    return Intl.message(
      'Advanced review passed',
      name: 'text_108',
      desc: '',
      args: [],
    );
  }

  /// `Passport`
  String get text_109 {
    return Intl.message(
      'Passport',
      name: 'text_109',
      desc: '',
      args: [],
    );
  }

  /// `ID card`
  String get text_110 {
    return Intl.message(
      'ID card',
      name: 'text_110',
      desc: '',
      args: [],
    );
  }

  /// `Driver's License`
  String get text_111 {
    return Intl.message(
      'Driver\'s License',
      name: 'text_111',
      desc: '',
      args: [],
    );
  }

  /// `US`
  String get text_112 {
    return Intl.message(
      'US',
      name: 'text_112',
      desc: '',
      args: [],
    );
  }

  /// `China`
  String get text_113 {
    return Intl.message(
      'China',
      name: 'text_113',
      desc: '',
      args: [],
    );
  }

  /// `South Korea`
  String get text_114 {
    return Intl.message(
      'South Korea',
      name: 'text_114',
      desc: '',
      args: [],
    );
  }

  /// `Japan`
  String get text_115 {
    return Intl.message(
      'Japan',
      name: 'text_115',
      desc: '',
      args: [],
    );
  }

  /// `Hong Kong, China`
  String get text_116 {
    return Intl.message(
      'Hong Kong, China',
      name: 'text_116',
      desc: '',
      args: [],
    );
  }

  /// `Taiwan, China`
  String get text_117 {
    return Intl.message(
      'Taiwan, China',
      name: 'text_117',
      desc: '',
      args: [],
    );
  }

  /// `Russia`
  String get text_118 {
    return Intl.message(
      'Russia',
      name: 'text_118',
      desc: '',
      args: [],
    );
  }

  /// `France`
  String get text_119 {
    return Intl.message(
      'France',
      name: 'text_119',
      desc: '',
      args: [],
    );
  }

  /// `United Kingdom`
  String get text_120 {
    return Intl.message(
      'United Kingdom',
      name: 'text_120',
      desc: '',
      args: [],
    );
  }

  /// `Germany`
  String get text_121 {
    return Intl.message(
      'Germany',
      name: 'text_121',
      desc: '',
      args: [],
    );
  }

  /// `Brazil`
  String get text_122 {
    return Intl.message(
      'Brazil',
      name: 'text_122',
      desc: '',
      args: [],
    );
  }

  /// `Italy`
  String get text_123 {
    return Intl.message(
      'Italy',
      name: 'text_123',
      desc: '',
      args: [],
    );
  }

  /// `Canada`
  String get text_124 {
    return Intl.message(
      'Canada',
      name: 'text_124',
      desc: '',
      args: [],
    );
  }

  /// `Spain`
  String get text_125 {
    return Intl.message(
      'Spain',
      name: 'text_125',
      desc: '',
      args: [],
    );
  }

  /// `Malaysia`
  String get text_126 {
    return Intl.message(
      'Malaysia',
      name: 'text_126',
      desc: '',
      args: [],
    );
  }

  /// `Singapore`
  String get text_127 {
    return Intl.message(
      'Singapore',
      name: 'text_127',
      desc: '',
      args: [],
    );
  }

  /// `Indonesia`
  String get text_128 {
    return Intl.message(
      'Indonesia',
      name: 'text_128',
      desc: '',
      args: [],
    );
  }

  /// `Philippines`
  String get text_129 {
    return Intl.message(
      'Philippines',
      name: 'text_129',
      desc: '',
      args: [],
    );
  }

  /// `Vietnam`
  String get text_130 {
    return Intl.message(
      'Vietnam',
      name: 'text_130',
      desc: '',
      args: [],
    );
  }

  /// `India`
  String get text_131 {
    return Intl.message(
      'India',
      name: 'text_131',
      desc: '',
      args: [],
    );
  }

  /// `Bhutan`
  String get text_132 {
    return Intl.message(
      'Bhutan',
      name: 'text_132',
      desc: '',
      args: [],
    );
  }

  /// `Finland`
  String get text_133 {
    return Intl.message(
      'Finland',
      name: 'text_133',
      desc: '',
      args: [],
    );
  }

  /// `Sweden`
  String get text_134 {
    return Intl.message(
      'Sweden',
      name: 'text_134',
      desc: '',
      args: [],
    );
  }

  /// `Norway`
  String get text_135 {
    return Intl.message(
      'Norway',
      name: 'text_135',
      desc: '',
      args: [],
    );
  }

  /// `Iceland`
  String get text_136 {
    return Intl.message(
      'Iceland',
      name: 'text_136',
      desc: '',
      args: [],
    );
  }

  /// `Denmark`
  String get text_137 {
    return Intl.message(
      'Denmark',
      name: 'text_137',
      desc: '',
      args: [],
    );
  }

  /// `Zimbabwe`
  String get text_138 {
    return Intl.message(
      'Zimbabwe',
      name: 'text_138',
      desc: '',
      args: [],
    );
  }

  /// `Netherlands`
  String get text_139 {
    return Intl.message(
      'Netherlands',
      name: 'text_139',
      desc: '',
      args: [],
    );
  }

  /// `Thailand`
  String get text_140 {
    return Intl.message(
      'Thailand',
      name: 'text_140',
      desc: '',
      args: [],
    );
  }

  /// `Request successful`
  String get text_141 {
    return Intl.message(
      'Request successful',
      name: 'text_141',
      desc: '',
      args: [],
    );
  }

  /// `Parameter error`
  String get text_142 {
    return Intl.message(
      'Parameter error',
      name: 'text_142',
      desc: '',
      args: [],
    );
  }

  /// `Account cannot be empty`
  String get text_143 {
    return Intl.message(
      'Account cannot be empty',
      name: 'text_143',
      desc: '',
      args: [],
    );
  }

  /// `Password cannot be empty`
  String get text_144 {
    return Intl.message(
      'Password cannot be empty',
      name: 'text_144',
      desc: '',
      args: [],
    );
  }

  /// `Account number error`
  String get text_145 {
    return Intl.message(
      'Account number error',
      name: 'text_145',
      desc: '',
      args: [],
    );
  }

  /// `Password error`
  String get text_146 {
    return Intl.message(
      'Password error',
      name: 'text_146',
      desc: '',
      args: [],
    );
  }

  /// `Wrong information, please contact administrator`
  String get text_147 {
    return Intl.message(
      'Wrong information, please contact administrator',
      name: 'text_147',
      desc: '',
      args: [],
    );
  }

  /// `Currency does not exist`
  String get text_148 {
    return Intl.message(
      'Currency does not exist',
      name: 'text_148',
      desc: '',
      args: [],
    );
  }

  /// `The number of purchases is out of range`
  String get text_149 {
    return Intl.message(
      'The number of purchases is out of range',
      name: 'text_149',
      desc: '',
      args: [],
    );
  }

  /// `Password inconsistent`
  String get text_150 {
    return Intl.message(
      'Password inconsistent',
      name: 'text_150',
      desc: '',
      args: [],
    );
  }

  /// `Account already exists`
  String get text_151 {
    return Intl.message(
      'Account already exists',
      name: 'text_151',
      desc: '',
      args: [],
    );
  }

  /// `Original password is incorrect`
  String get text_152 {
    return Intl.message(
      'Original password is incorrect',
      name: 'text_152',
      desc: '',
      args: [],
    );
  }

  /// `The new password cannot be empty`
  String get text_153 {
    return Intl.message(
      'The new password cannot be empty',
      name: 'text_153',
      desc: '',
      args: [],
    );
  }

  /// `Name cannot be empty`
  String get text_154 {
    return Intl.message(
      'Name cannot be empty',
      name: 'text_154',
      desc: '',
      args: [],
    );
  }

  /// `Last name cannot be empty`
  String get text_155 {
    return Intl.message(
      'Last name cannot be empty',
      name: 'text_155',
      desc: '',
      args: [],
    );
  }

  /// `Please select the type of ID`
  String get text_156 {
    return Intl.message(
      'Please select the type of ID',
      name: 'text_156',
      desc: '',
      args: [],
    );
  }

  /// `The ID number cannot be empty`
  String get text_157 {
    return Intl.message(
      'The ID number cannot be empty',
      name: 'text_157',
      desc: '',
      args: [],
    );
  }

  /// `The front photo ID cannot be empty`
  String get text_158 {
    return Intl.message(
      'The front photo ID cannot be empty',
      name: 'text_158',
      desc: '',
      args: [],
    );
  }

  /// `The reverse photo ID cannot be empty`
  String get text_159 {
    return Intl.message(
      'The reverse photo ID cannot be empty',
      name: 'text_159',
      desc: '',
      args: [],
    );
  }

  /// `Please select a nationality`
  String get text_160 {
    return Intl.message(
      'Please select a nationality',
      name: 'text_160',
      desc: '',
      args: [],
    );
  }

  /// `Handheld photo ID cannot be empty`
  String get text_161 {
    return Intl.message(
      'Handheld photo ID cannot be empty',
      name: 'text_161',
      desc: '',
      args: [],
    );
  }

  /// `The handheld agreement cannot be empty`
  String get text_162 {
    return Intl.message(
      'The handheld agreement cannot be empty',
      name: 'text_162',
      desc: '',
      args: [],
    );
  }

  /// `The purchase amount is out of range`
  String get text_163 {
    return Intl.message(
      'The purchase amount is out of range',
      name: 'text_163',
      desc: '',
      args: [],
    );
  }

  /// `Order error, please contact administrator`
  String get text_164 {
    return Intl.message(
      'Order error, please contact administrator',
      name: 'text_164',
      desc: '',
      args: [],
    );
  }

  /// `The selected currency cannot be the same`
  String get text_165 {
    return Intl.message(
      'The selected currency cannot be the same',
      name: 'text_165',
      desc: '',
      args: [],
    );
  }

  /// `The selected currency cannot be empty`
  String get text_166 {
    return Intl.message(
      'The selected currency cannot be empty',
      name: 'text_166',
      desc: '',
      args: [],
    );
  }

  /// `The network address cannot be empty`
  String get text_167 {
    return Intl.message(
      'The network address cannot be empty',
      name: 'text_167',
      desc: '',
      args: [],
    );
  }

  /// `Quantity must be greater than zero`
  String get text_168 {
    return Intl.message(
      'Quantity must be greater than zero',
      name: 'text_168',
      desc: '',
      args: [],
    );
  }

  /// `Please use the correct email address`
  String get text_169 {
    return Intl.message(
      'Please use the correct email address',
      name: 'text_169',
      desc: '',
      args: [],
    );
  }

  /// `The verification code is incorrect`
  String get text_170 {
    return Intl.message(
      'The verification code is incorrect',
      name: 'text_170',
      desc: '',
      args: [],
    );
  }

  /// `Account already exists, please login`
  String get text_171 {
    return Intl.message(
      'Account already exists, please login',
      name: 'text_171',
      desc: '',
      args: [],
    );
  }

  /// `The current account has not been registered yet, please register`
  String get text_172 {
    return Intl.message(
      'The current account has not been registered yet, please register',
      name: 'text_172',
      desc: '',
      args: [],
    );
  }

  /// `Request failed`
  String get text_173 {
    return Intl.message(
      'Request failed',
      name: 'text_173',
      desc: '',
      args: [],
    );
  }

  /// `Please select`
  String get text_174 {
    return Intl.message(
      'Please select',
      name: 'text_174',
      desc: '',
      args: [],
    );
  }

  /// `Price`
  String get text_175 {
    return Intl.message(
      'Price',
      name: 'text_175',
      desc: '',
      args: [],
    );
  }

  /// `Required deposit`
  String get text_176 {
    return Intl.message(
      'Required deposit',
      name: 'text_176',
      desc: '',
      args: [],
    );
  }

  /// `Closeout Fee`
  String get text_177 {
    return Intl.message(
      'Closeout Fee',
      name: 'text_177',
      desc: '',
      args: [],
    );
  }

  /// `Stop Out`
  String get text_178 {
    return Intl.message(
      'Stop Out',
      name: 'text_178',
      desc: '',
      args: [],
    );
  }

  /// `Default`
  String get text_179 {
    return Intl.message(
      'Default',
      name: 'text_179',
      desc: '',
      args: [],
    );
  }

  /// `Stop Loss`
  String get text_180 {
    return Intl.message(
      'Stop Loss',
      name: 'text_180',
      desc: '',
      args: [],
    );
  }

  /// `Buy`
  String get text_181 {
    return Intl.message(
      'Buy',
      name: 'text_181',
      desc: '',
      args: [],
    );
  }

  /// `Current Position`
  String get text_182 {
    return Intl.message(
      'Current Position',
      name: 'text_182',
      desc: '',
      args: [],
    );
  }

  /// `Historical Contracts`
  String get text_183 {
    return Intl.message(
      'Historical Contracts',
      name: 'text_183',
      desc: '',
      args: [],
    );
  }

  /// `Order Number`
  String get text_184 {
    return Intl.message(
      'Order Number',
      name: 'text_184',
      desc: '',
      args: [],
    );
  }

  /// `Creation Time`
  String get text_185 {
    return Intl.message(
      'Creation Time',
      name: 'text_185',
      desc: '',
      args: [],
    );
  }

  /// `Transaction Type`
  String get text_186 {
    return Intl.message(
      'Transaction Type',
      name: 'text_186',
      desc: '',
      args: [],
    );
  }

  /// `Buy Up`
  String get text_187 {
    return Intl.message(
      'Buy Up',
      name: 'text_187',
      desc: '',
      args: [],
    );
  }

  /// `Buy Down`
  String get text_188 {
    return Intl.message(
      'Buy Down',
      name: 'text_188',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get text_189 {
    return Intl.message(
      'Quantity',
      name: 'text_189',
      desc: '',
      args: [],
    );
  }

  /// `Margin`
  String get text_190 {
    return Intl.message(
      'Margin',
      name: 'text_190',
      desc: '',
      args: [],
    );
  }

  /// `Commission`
  String get text_191 {
    return Intl.message(
      'Commission',
      name: 'text_191',
      desc: '',
      args: [],
    );
  }

  /// `Close P&L`
  String get text_192 {
    return Intl.message(
      'Close P&L',
      name: 'text_192',
      desc: '',
      args: [],
    );
  }

  /// `Net Profit/Loss`
  String get text_193 {
    return Intl.message(
      'Net Profit/Loss',
      name: 'text_193',
      desc: '',
      args: [],
    );
  }

  /// `Order Status`
  String get text_194 {
    return Intl.message(
      'Order Status',
      name: 'text_194',
      desc: '',
      args: [],
    );
  }

  /// `Operation`
  String get text_195 {
    return Intl.message(
      'Operation',
      name: 'text_195',
      desc: '',
      args: [],
    );
  }

  /// `Force Close Position`
  String get text_196 {
    return Intl.message(
      'Force Close Position',
      name: 'text_196',
      desc: '',
      args: [],
    );
  }

  /// `Is it OK to force close a position`
  String get text_197 {
    return Intl.message(
      'Is it OK to force close a position',
      name: 'text_197',
      desc: '',
      args: [],
    );
  }

  /// `You are not logged in, please log in first!`
  String get text_198 {
    return Intl.message(
      'You are not logged in, please log in first!',
      name: 'text_198',
      desc: '',
      args: [],
    );
  }

  /// `The current currency price is 0`
  String get text_199 {
    return Intl.message(
      'The current currency price is 0',
      name: 'text_199',
      desc: '',
      args: [],
    );
  }

  /// `Time to close position`
  String get text_200 {
    return Intl.message(
      'Time to close position',
      name: 'text_200',
      desc: '',
      args: [],
    );
  }

  /// `Opening price`
  String get text_201 {
    return Intl.message(
      'Opening price',
      name: 'text_201',
      desc: '',
      args: [],
    );
  }

  /// `Position opening time`
  String get text_202 {
    return Intl.message(
      'Position opening time',
      name: 'text_202',
      desc: '',
      args: [],
    );
  }

  /// `Close price`
  String get text_203 {
    return Intl.message(
      'Close price',
      name: 'text_203',
      desc: '',
      args: [],
    );
  }

  /// `24h High`
  String get text_204 {
    return Intl.message(
      '24h High',
      name: 'text_204',
      desc: '',
      args: [],
    );
  }

  /// `24h Low`
  String get text_205 {
    return Intl.message(
      '24h Low',
      name: 'text_205',
      desc: '',
      args: [],
    );
  }

  /// `Latest transaction`
  String get text_206 {
    return Intl.message(
      'Latest transaction',
      name: 'text_206',
      desc: '',
      args: [],
    );
  }

  /// `Password must be a combination of letters + numbers`
  String get text_207 {
    return Intl.message(
      'Password must be a combination of letters + numbers',
      name: 'text_207',
      desc: '',
      args: [],
    );
  }

  /// `Password length must not be less than 8 digits`
  String get text_208 {
    return Intl.message(
      'Password length must not be less than 8 digits',
      name: 'text_208',
      desc: '',
      args: [],
    );
  }

  /// `Operation successful`
  String get text_209 {
    return Intl.message(
      'Operation successful',
      name: 'text_209',
      desc: '',
      args: [],
    );
  }

  /// `Notes on fund exchange`
  String get text_210 {
    return Intl.message(
      'Notes on fund exchange',
      name: 'text_210',
      desc: '',
      args: [],
    );
  }

  /// `Please note that funds exchange is affected by market depth and quotation, the price will change at any time, please refer to the final amount after order confirmation. \n`
  String get text_211 {
    return Intl.message(
      'Please note that funds exchange is affected by market depth and quotation, the price will change at any time, please refer to the final amount after order confirmation. \n',
      name: 'text_211',
      desc: '',
      args: [],
    );
  }

  /// `According to the requirements of the wind control system, if the funds exchange triggers the third party wind control, the exchange user needs to cooperate with the auditor to improve the relevant audit, and the order will be refunded for you in at least one month (within 30 days).`
  String get text_212 {
    return Intl.message(
      'According to the requirements of the wind control system, if the funds exchange triggers the third party wind control, the exchange user needs to cooperate with the auditor to improve the relevant audit, and the order will be refunded for you in at least one month (within 30 days).',
      name: 'text_212',
      desc: '',
      args: [],
    );
  }

  /// `Please ensure that the exchange of funds is personal and confirm that you do not use the digital currency to participate in any pyramid scheme, illegal fund raising, fraud and other illegal activities, please be wary of all illegal projects that promise high interest reporting, beware of being duped and avoid unnecessary losses.`
  String get text_213 {
    return Intl.message(
      'Please ensure that the exchange of funds is personal and confirm that you do not use the digital currency to participate in any pyramid scheme, illegal fund raising, fraud and other illegal activities, please be wary of all illegal projects that promise high interest reporting, beware of being duped and avoid unnecessary losses.',
      name: 'text_213',
      desc: '',
      args: [],
    );
  }

  /// `In order to protect the safety of funds, when your account security policy changes, password changes, we will carry out manual review of the withdrawal of coins, please wait patiently for the staff email contact.`
  String get text_214 {
    return Intl.message(
      'In order to protect the safety of funds, when your account security policy changes, password changes, we will carry out manual review of the withdrawal of coins, please wait patiently for the staff email contact.',
      name: 'text_214',
      desc: '',
      args: [],
    );
  }

  /// `Please make sure your computer and browser are safe to prevent information from being tampered with and leaked.`
  String get text_215 {
    return Intl.message(
      'Please make sure your computer and browser are safe to prevent information from being tampered with and leaked.',
      name: 'text_215',
      desc: '',
      args: [],
    );
  }

  /// `After you top up to the above address, you need the confirmation of the whole network node. 12 times of network confirmation will arrive, and you can withdraw coins after 12 times of network confirmation.`
  String get text_216 {
    return Intl.message(
      'After you top up to the above address, you need the confirmation of the whole network node. 12 times of network confirmation will arrive, and you can withdraw coins after 12 times of network confirmation.',
      name: 'text_216',
      desc: '',
      args: [],
    );
  }

  /// `Please do not top up any non-ERC20_USDT assets to the above address, otherwise the assets will not be recoverable.`
  String get text_217 {
    return Intl.message(
      'Please do not top up any non-ERC20_USDT assets to the above address, otherwise the assets will not be recoverable.',
      name: 'text_217',
      desc: '',
      args: [],
    );
  }

  /// `Minimum top-up amount: 300 USDT, top-ups smaller than the minimum amount will not be credited and cannot be returned.`
  String get text_218 {
    return Intl.message(
      'Minimum top-up amount: 300 USDT, top-ups smaller than the minimum amount will not be credited and cannot be returned.',
      name: 'text_218',
      desc: '',
      args: [],
    );
  }

  /// `Your recharge address will not change often and you can recharge repeatedly; if there are any changes, we will try to notify you via web station announcement or email. \n`
  String get text_219 {
    return Intl.message(
      'Your recharge address will not change often and you can recharge repeatedly; if there are any changes, we will try to notify you via web station announcement or email. \n',
      name: 'text_219',
      desc: '',
      args: [],
    );
  }

  /// `Please make sure your computer and browser are secure to prevent information from being tampered with or leaked.`
  String get text_220 {
    return Intl.message(
      'Please make sure your computer and browser are secure to prevent information from being tampered with or leaked.',
      name: 'text_220',
      desc: '',
      args: [],
    );
  }

  /// `I want to top up`
  String get text_221 {
    return Intl.message(
      'I want to top up',
      name: 'text_221',
      desc: '',
      args: [],
    );
  }

  /// `Contract Market`
  String get text_222 {
    return Intl.message(
      'Contract Market',
      name: 'text_222',
      desc: '',
      args: [],
    );
  }

  /// `24H up or down`
  String get text_223 {
    return Intl.message(
      '24H up or down',
      name: 'text_223',
      desc: '',
      args: [],
    );
  }

  /// `Latest Price`
  String get text_224 {
    return Intl.message(
      'Latest Price',
      name: 'text_224',
      desc: '',
      args: [],
    );
  }

  /// `Currency`
  String get text_225 {
    return Intl.message(
      'Currency',
      name: 'text_225',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get text_226 {
    return Intl.message(
      'Login',
      name: 'text_226',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account yet?`
  String get text_227 {
    return Intl.message(
      'Don\'t have an account yet?',
      name: 'text_227',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your login password`
  String get text_228 {
    return Intl.message(
      'Please enter your login password',
      name: 'text_228',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your login email`
  String get text_229 {
    return Intl.message(
      'Please enter your login email',
      name: 'text_229',
      desc: '',
      args: [],
    );
  }

  /// `Incorrect format`
  String get text_230 {
    return Intl.message(
      'Incorrect format',
      name: 'text_230',
      desc: '',
      args: [],
    );
  }

  /// `Email login`
  String get text_231 {
    return Intl.message(
      'Email login',
      name: 'text_231',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your registration password`
  String get text_232 {
    return Intl.message(
      'Please enter your registration password',
      name: 'text_232',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your registered email address`
  String get text_233 {
    return Intl.message(
      'Please enter your registered email address',
      name: 'text_233',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get text_234 {
    return Intl.message(
      'Send',
      name: 'text_234',
      desc: '',
      args: [],
    );
  }

  /// `Next`
  String get text_235 {
    return Intl.message(
      'Next',
      name: 'text_235',
      desc: '',
      args: [],
    );
  }

  /// `Language switch`
  String get text_236 {
    return Intl.message(
      'Language switch',
      name: 'text_236',
      desc: '',
      args: [],
    );
  }

  /// `Contact Us`
  String get text_237 {
    return Intl.message(
      'Contact Us',
      name: 'text_237',
      desc: '',
      args: [],
    );
  }

  /// `Log out of your account`
  String get text_238 {
    return Intl.message(
      'Log out of your account',
      name: 'text_238',
      desc: '',
      args: [],
    );
  }

  /// `Assets`
  String get text_239 {
    return Intl.message(
      'Assets',
      name: 'text_239',
      desc: '',
      args: [],
    );
  }

  /// `Available Balance`
  String get text_240 {
    return Intl.message(
      'Available Balance',
      name: 'text_240',
      desc: '',
      args: [],
    );
  }

  /// `Total Margin`
  String get text_241 {
    return Intl.message(
      'Total Margin',
      name: 'text_241',
      desc: '',
      args: [],
    );
  }

  /// `Turnover`
  String get text_242 {
    return Intl.message(
      'Turnover',
      name: 'text_242',
      desc: '',
      args: [],
    );
  }

  /// `Open Position Price`
  String get text_243 {
    return Intl.message(
      'Open Position Price',
      name: 'text_243',
      desc: '',
      args: [],
    );
  }

  /// `Floating P&L`
  String get text_244 {
    return Intl.message(
      'Floating P&L',
      name: 'text_244',
      desc: '',
      args: [],
    );
  }

  /// `Close Position`
  String get text_245 {
    return Intl.message(
      'Close Position',
      name: 'text_245',
      desc: '',
      args: [],
    );
  }

  /// `Uncertified`
  String get text_246 {
    return Intl.message(
      'Uncertified',
      name: 'text_246',
      desc: '',
      args: [],
    );
  }

  /// `Primary Authentication`
  String get text_247 {
    return Intl.message(
      'Primary Authentication',
      name: 'text_247',
      desc: '',
      args: [],
    );
  }

  /// `Advanced Authentication`
  String get text_248 {
    return Intl.message(
      'Advanced Authentication',
      name: 'text_248',
      desc: '',
      args: [],
    );
  }

  /// `To enhance your account security, please complete the following information.`
  String get text_249 {
    return Intl.message(
      'To enhance your account security, please complete the following information.',
      name: 'text_249',
      desc: '',
      args: [],
    );
  }

  /// `Photo ID front`
  String get text_250 {
    return Intl.message(
      'Photo ID front',
      name: 'text_250',
      desc: '',
      args: [],
    );
  }

  /// `ID Photo Reverse`
  String get text_251 {
    return Intl.message(
      'ID Photo Reverse',
      name: 'text_251',
      desc: '',
      args: [],
    );
  }

  /// `Confirm new transaction password`
  String get text_252 {
    return Intl.message(
      'Confirm new transaction password',
      name: 'text_252',
      desc: '',
      args: [],
    );
  }

  /// `Please set a new transaction password`
  String get text_253 {
    return Intl.message(
      'Please set a new transaction password',
      name: 'text_253',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the original password`
  String get text_254 {
    return Intl.message(
      'Please enter the original password',
      name: 'text_254',
      desc: '',
      args: [],
    );
  }

  /// `New password`
  String get text_255 {
    return Intl.message(
      'New password',
      name: 'text_255',
      desc: '',
      args: [],
    );
  }

  /// `Original password`
  String get text_256 {
    return Intl.message(
      'Original password',
      name: 'text_256',
      desc: '',
      args: [],
    );
  }

  /// `Change funds password`
  String get text_257 {
    return Intl.message(
      'Change funds password',
      name: 'text_257',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the verification code`
  String get text_258 {
    return Intl.message(
      'Please enter the verification code',
      name: 'text_258',
      desc: '',
      args: [],
    );
  }

  /// `Verification Code`
  String get text_259 {
    return Intl.message(
      'Verification Code',
      name: 'text_259',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your email address`
  String get text_260 {
    return Intl.message(
      'Please enter your email address',
      name: 'text_260',
      desc: '',
      args: [],
    );
  }

  /// `Invitation Code (optional)`
  String get text_261 {
    return Intl.message(
      'Invitation Code (optional)',
      name: 'text_261',
      desc: '',
      args: [],
    );
  }

  /// `Please fill in the invitation code`
  String get text_262 {
    return Intl.message(
      'Please fill in the invitation code',
      name: 'text_262',
      desc: '',
      args: [],
    );
  }

  /// `Confirm`
  String get text_263 {
    return Intl.message(
      'Confirm',
      name: 'text_263',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a new password`
  String get text_264 {
    return Intl.message(
      'Please enter a new password',
      name: 'text_264',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your confirmation password`
  String get text_265 {
    return Intl.message(
      'Please enter your confirmation password',
      name: 'text_265',
      desc: '',
      args: [],
    );
  }

  /// `Change Login Password`
  String get text_266 {
    return Intl.message(
      'Change Login Password',
      name: 'text_266',
      desc: '',
      args: [],
    );
  }

  /// `Top up to the account`
  String get text_267 {
    return Intl.message(
      'Top up to the account',
      name: 'text_267',
      desc: '',
      args: [],
    );
  }

  /// `Withdrawal unlocked`
  String get text_268 {
    return Intl.message(
      'Withdrawal unlocked',
      name: 'text_268',
      desc: '',
      args: [],
    );
  }

  /// `Minimum top-up amount`
  String get text_269 {
    return Intl.message(
      'Minimum top-up amount',
      name: 'text_269',
      desc: '',
      args: [],
    );
  }

  /// `Top-up block confirmation number`
  String get text_270 {
    return Intl.message(
      'Top-up block confirmation number',
      name: 'text_270',
      desc: '',
      args: [],
    );
  }

  /// `Recharge address`
  String get text_271 {
    return Intl.message(
      'Recharge address',
      name: 'text_271',
      desc: '',
      args: [],
    );
  }

  /// `CoinCharge Network`
  String get text_272 {
    return Intl.message(
      'CoinCharge Network',
      name: 'text_272',
      desc: '',
      args: [],
    );
  }

  /// `Coin Charging`
  String get text_273 {
    return Intl.message(
      'Coin Charging',
      name: 'text_273',
      desc: '',
      args: [],
    );
  }

  /// `withdraw coins`
  String get text_274 {
    return Intl.message(
      'withdraw coins',
      name: 'text_274',
      desc: '',
      args: [],
    );
  }

  /// `Actual Arrival`
  String get text_275 {
    return Intl.message(
      'Actual Arrival',
      name: 'text_275',
      desc: '',
      args: [],
    );
  }

  /// `Coin Account`
  String get text_276 {
    return Intl.message(
      'Coin Account',
      name: 'text_276',
      desc: '',
      args: [],
    );
  }

  /// `Transfer`
  String get text_277 {
    return Intl.message(
      'Transfer',
      name: 'text_277',
      desc: '',
      args: [],
    );
  }

  /// `Number of coins withdrawn`
  String get text_278 {
    return Intl.message(
      'Number of coins withdrawn',
      name: 'text_278',
      desc: '',
      args: [],
    );
  }

  /// `The minimum withdrawal quantity is {quantity}{code}`
  String text_279(Object quantity, Object code) {
    return Intl.message(
      'The minimum withdrawal quantity is $quantity$code',
      name: 'text_279',
      desc: '',
      args: [quantity, code],
    );
  }

  /// `Withdrawal address`
  String get text_280 {
    return Intl.message(
      'Withdrawal address',
      name: 'text_280',
      desc: '',
      args: [],
    );
  }

  /// `Withdrawal Instructions`
  String get text_281 {
    return Intl.message(
      'Withdrawal Instructions',
      name: 'text_281',
      desc: '',
      args: [],
    );
  }

  /// `Number of withdrawals`
  String get text_282 {
    return Intl.message(
      'Number of withdrawals',
      name: 'text_282',
      desc: '',
      args: [],
    );
  }

  /// `\nThe minimum number of coins to withdraw is:{quantity} {code}. \n\nTo protect the safety of funds, when your account security policy changes, password changes, we will conduct manual review of coin withdrawals, please wait patiently for staff email contact. Please make sure that your computer and browser are secure to prevent information from being changed or leaked.`
  String text_283(Object quantity, Object code) {
    return Intl.message(
      '\nThe minimum number of coins to withdraw is:$quantity $code. \n\nTo protect the safety of funds, when your account security policy changes, password changes, we will conduct manual review of coin withdrawals, please wait patiently for staff email contact. Please make sure that your computer and browser are secure to prevent information from being changed or leaked.',
      name: 'text_283',
      desc: '',
      args: [quantity, code],
    );
  }

  /// `Address Book`
  String get text_284 {
    return Intl.message(
      'Address Book',
      name: 'text_284',
      desc: '',
      args: [],
    );
  }

  /// `More than 8 characters, at least letters + numbers, no spaces`
  String get text_285 {
    return Intl.message(
      'More than 8 characters, at least letters + numbers, no spaces',
      name: 'text_285',
      desc: '',
      args: [],
    );
  }

  /// `Password inconsistency`
  String get text_286 {
    return Intl.message(
      'Password inconsistency',
      name: 'text_286',
      desc: '',
      args: [],
    );
  }

  /// `Go to login`
  String get text_287 {
    return Intl.message(
      'Go to login',
      name: 'text_287',
      desc: '',
      args: [],
    );
  }

  /// `Not set`
  String get text_288 {
    return Intl.message(
      'Not set',
      name: 'text_288',
      desc: '',
      args: [],
    );
  }

  /// `Modified successfully`
  String get text_289 {
    return Intl.message(
      'Modified successfully',
      name: 'text_289',
      desc: '',
      args: [],
    );
  }

  /// `Album`
  String get text_290 {
    return Intl.message(
      'Album',
      name: 'text_290',
      desc: '',
      args: [],
    );
  }

  /// `Take a picture`
  String get text_291 {
    return Intl.message(
      'Take a picture',
      name: 'text_291',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your ID number`
  String get text_292 {
    return Intl.message(
      'Please enter your ID number',
      name: 'text_292',
      desc: '',
      args: [],
    );
  }

  /// `The most people traded in the last hour`
  String get text_293 {
    return Intl.message(
      'The most people traded in the last hour',
      name: 'text_293',
      desc: '',
      args: [],
    );
  }

  /// `Heat value`
  String get text_294 {
    return Intl.message(
      'Heat value',
      name: 'text_294',
      desc: '',
      args: [],
    );
  }

  /// `Please select a currency`
  String get text_295 {
    return Intl.message(
      'Please select a currency',
      name: 'text_295',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the withdrawal address`
  String get text_296 {
    return Intl.message(
      'Please enter the withdrawal address',
      name: 'text_296',
      desc: '',
      args: [],
    );
  }

  /// `{name} block confirmation`
  String text_297(Object name) {
    return Intl.message(
      '$name block confirmation',
      name: 'text_297',
      desc: '',
      args: [name],
    );
  }

  /// `{name} Network Confirmation`
  String text_298(Object name) {
    return Intl.message(
      '$name Network Confirmation',
      name: 'text_298',
      desc: '',
      args: [name],
    );
  }

  /// `Coin withdrawal successful`
  String get text_299 {
    return Intl.message(
      'Coin withdrawal successful',
      name: 'text_299',
      desc: '',
      args: [],
    );
  }

  /// `Cannot be less than the minimum number of coin withdrawals`
  String get text_300 {
    return Intl.message(
      'Cannot be less than the minimum number of coin withdrawals',
      name: 'text_300',
      desc: '',
      args: [],
    );
  }

  /// `Use`
  String get text_301 {
    return Intl.message(
      'Use',
      name: 'text_301',
      desc: '',
      args: [],
    );
  }

  /// `Redeem to`
  String get text_302 {
    return Intl.message(
      'Redeem to',
      name: 'text_302',
      desc: '',
      args: [],
    );
  }

  /// `Rate: {name}% | Absenteeism fee paid at your own expense`
  String text_303(Object name) {
    return Intl.message(
      'Rate: $name% | Absenteeism fee paid at your own expense',
      name: 'text_303',
      desc: '',
      args: [name],
    );
  }

  /// `exchange_rate`
  String get text_304 {
    return Intl.message(
      'exchange_rate',
      name: 'text_304',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the quantity`
  String get text_305 {
    return Intl.message(
      'Please enter the quantity',
      name: 'text_305',
      desc: '',
      args: [],
    );
  }

  /// `Transfer Quantity`
  String get text_306 {
    return Intl.message(
      'Transfer Quantity',
      name: 'text_306',
      desc: '',
      args: [],
    );
  }

  /// `From`
  String get text_307 {
    return Intl.message(
      'From',
      name: 'text_307',
      desc: '',
      args: [],
    );
  }

  /// `to`
  String get text_308 {
    return Intl.message(
      'to',
      name: 'text_308',
      desc: '',
      args: [],
    );
  }

  /// `Contract Account`
  String get text_309 {
    return Intl.message(
      'Contract Account',
      name: 'text_309',
      desc: '',
      args: [],
    );
  }

  /// `Account Balance`
  String get text_310 {
    return Intl.message(
      'Account Balance',
      name: 'text_310',
      desc: '',
      args: [],
    );
  }

  /// `Address`
  String get text_311 {
    return Intl.message(
      'Address',
      name: 'text_311',
      desc: '',
      args: [],
    );
  }

  /// `Redemption successful`
  String get text_312 {
    return Intl.message(
      'Redemption successful',
      name: 'text_312',
      desc: '',
      args: [],
    );
  }

  /// `Transfer successful`
  String get text_313 {
    return Intl.message(
      'Transfer successful',
      name: 'text_313',
      desc: '',
      args: [],
    );
  }

  /// `Status`
  String get text_314 {
    return Intl.message(
      'Status',
      name: 'text_314',
      desc: '',
      args: [],
    );
  }

  /// `Top-up Network`
  String get text_315 {
    return Intl.message(
      'Top-up Network',
      name: 'text_315',
      desc: '',
      args: [],
    );
  }

  /// `Top-up address`
  String get text_316 {
    return Intl.message(
      'Top-up address',
      name: 'text_316',
      desc: '',
      args: [],
    );
  }

  /// `Recharge success`
  String get text_317 {
    return Intl.message(
      'Recharge success',
      name: 'text_317',
      desc: '',
      args: [],
    );
  }

  /// `Top-up failed`
  String get text_318 {
    return Intl.message(
      'Top-up failed',
      name: 'text_318',
      desc: '',
      args: [],
    );
  }

  /// `Redemption Record`
  String get text_319 {
    return Intl.message(
      'Redemption Record',
      name: 'text_319',
      desc: '',
      args: [],
    );
  }

  /// `Transfer Record`
  String get text_320 {
    return Intl.message(
      'Transfer Record',
      name: 'text_320',
      desc: '',
      args: [],
    );
  }

  /// `Top-up record`
  String get text_321 {
    return Intl.message(
      'Top-up record',
      name: 'text_321',
      desc: '',
      args: [],
    );
  }

  /// `Withdrawal Record`
  String get text_322 {
    return Intl.message(
      'Withdrawal Record',
      name: 'text_322',
      desc: '',
      args: [],
    );
  }

  /// `Total Assets`
  String get text_323 {
    return Intl.message(
      'Total Assets',
      name: 'text_323',
      desc: '',
      args: [],
    );
  }

  /// `Available`
  String get text_324 {
    return Intl.message(
      'Available',
      name: 'text_324',
      desc: '',
      args: [],
    );
  }

  /// `USDT Valuation`
  String get text_325 {
    return Intl.message(
      'USDT Valuation',
      name: 'text_325',
      desc: '',
      args: [],
    );
  }

  /// `Historical Orders`
  String get text_326 {
    return Intl.message(
      'Historical Orders',
      name: 'text_326',
      desc: '',
      args: [],
    );
  }

  /// `Quantity Used`
  String get text_327 {
    return Intl.message(
      'Quantity Used',
      name: 'text_327',
      desc: '',
      args: [],
    );
  }

  /// `Exchange Quantity`
  String get text_328 {
    return Intl.message(
      'Exchange Quantity',
      name: 'text_328',
      desc: '',
      args: [],
    );
  }

  /// `Coins used`
  String get text_329 {
    return Intl.message(
      'Coins used',
      name: 'text_329',
      desc: '',
      args: [],
    );
  }

  /// `Redeem Coins`
  String get text_330 {
    return Intl.message(
      'Redeem Coins',
      name: 'text_330',
      desc: '',
      args: [],
    );
  }

  /// `Miner Fee`
  String get text_331 {
    return Intl.message(
      'Miner Fee',
      name: 'text_331',
      desc: '',
      args: [],
    );
  }

  /// `Transfer successful`
  String get text_332 {
    return Intl.message(
      'Transfer successful',
      name: 'text_332',
      desc: '',
      args: [],
    );
  }

  /// `Transfer failed`
  String get text_333 {
    return Intl.message(
      'Transfer failed',
      name: 'text_333',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get text_334 {
    return Intl.message(
      'Order Details',
      name: 'text_334',
      desc: '',
      args: [],
    );
  }

  /// `Number of orders`
  String get text_335 {
    return Intl.message(
      'Number of orders',
      name: 'text_335',
      desc: '',
      args: [],
    );
  }

  /// `Storage Fee`
  String get text_336 {
    return Intl.message(
      'Storage Fee',
      name: 'text_336',
      desc: '',
      args: [],
    );
  }

  /// `Auto Stop Out Close`
  String get text_337 {
    return Intl.message(
      'Auto Stop Out Close',
      name: 'text_337',
      desc: '',
      args: [],
    );
  }

  /// `Auto Stop Loss Close`
  String get text_338 {
    return Intl.message(
      'Auto Stop Loss Close',
      name: 'text_338',
      desc: '',
      args: [],
    );
  }

  /// `Manual Take Profit Close`
  String get text_339 {
    return Intl.message(
      'Manual Take Profit Close',
      name: 'text_339',
      desc: '',
      args: [],
    );
  }

  /// `Manual Stop Loss Close`
  String get text_340 {
    return Intl.message(
      'Manual Stop Loss Close',
      name: 'text_340',
      desc: '',
      args: [],
    );
  }

  /// `Please select the price at which to open a position`
  String get text_341 {
    return Intl.message(
      'Please select the price at which to open a position',
      name: 'text_341',
      desc: '',
      args: [],
    );
  }

  /// `Please enter the number of valid open positions`
  String get text_342 {
    return Intl.message(
      'Please enter the number of valid open positions',
      name: 'text_342',
      desc: '',
      args: [],
    );
  }

  /// `Order placed successfully`
  String get text_343 {
    return Intl.message(
      'Order placed successfully',
      name: 'text_343',
      desc: '',
      args: [],
    );
  }

  /// `No data available yet`
  String get text_344 {
    return Intl.message(
      'No data available yet',
      name: 'text_344',
      desc: '',
      args: [],
    );
  }

  /// `Set transaction password`
  String get text_345 {
    return Intl.message(
      'Set transaction password',
      name: 'text_345',
      desc: '',
      args: [],
    );
  }

  /// `Copy successful`
  String get text_346 {
    return Intl.message(
      'Copy successful',
      name: 'text_346',
      desc: '',
      args: [],
    );
  }

  /// `Confirm account exit?`
  String get text_347 {
    return Intl.message(
      'Confirm account exit?',
      name: 'text_347',
      desc: '',
      args: [],
    );
  }

  /// `Upload successful`
  String get text_348 {
    return Intl.message(
      'Upload successful',
      name: 'text_348',
      desc: '',
      args: [],
    );
  }

  /// `Upload failed, please try again`
  String get text_349 {
    return Intl.message(
      'Upload failed, please try again',
      name: 'text_349',
      desc: '',
      args: [],
    );
  }

  /// `Submitted successfully`
  String get text_350 {
    return Intl.message(
      'Submitted successfully',
      name: 'text_350',
      desc: '',
      args: [],
    );
  }

  /// `Details`
  String get text_351 {
    return Intl.message(
      'Details',
      name: 'text_351',
      desc: '',
      args: [],
    );
  }

  /// `Profit and Loss`
  String get text_352 {
    return Intl.message(
      'Profit and Loss',
      name: 'text_352',
      desc: '',
      args: [],
    );
  }

  /// `Close Position Successfully`
  String get text_353 {
    return Intl.message(
      'Close Position Successfully',
      name: 'text_353',
      desc: '',
      args: [],
    );
  }

  /// `Terms of Service Content`
  String get text_354 {
    return Intl.message(
      'Terms of Service Content',
      name: 'text_354',
      desc: '',
      args: [],
    );
  }

  /// `Please check the "UserAgreement" and "PrivacyPolicy"`
  String get text_355 {
    return Intl.message(
      'Please check the "UserAgreement" and "PrivacyPolicy"',
      name: 'text_355',
      desc: '',
      args: [],
    );
  }

  /// `New Login Password`
  String get text_356 {
    return Intl.message(
      'New Login Password',
      name: 'text_356',
      desc: '',
      args: [],
    );
  }

  /// `Confirm new login password`
  String get text_357 {
    return Intl.message(
      'Confirm new login password',
      name: 'text_357',
      desc: '',
      args: [],
    );
  }

  /// `Please set a new login password`
  String get text_358 {
    return Intl.message(
      'Please set a new login password',
      name: 'text_358',
      desc: '',
      args: [],
    );
  }

  /// `Click back again to exit the program`
  String get text_359 {
    return Intl.message(
      'Click back again to exit the program',
      name: 'text_359',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your last name`
  String get text_360 {
    return Intl.message(
      'Please enter your last name',
      name: 'text_360',
      desc: '',
      args: [],
    );
  }

  /// `Please enter a name`
  String get text_361 {
    return Intl.message(
      'Please enter a name',
      name: 'text_361',
      desc: '',
      args: [],
    );
  }

  /// `Sending verification code successfully`
  String get text_362 {
    return Intl.message(
      'Sending verification code successfully',
      name: 'text_362',
      desc: '',
      args: [],
    );
  }

  /// `Original login password`
  String get text_363 {
    return Intl.message(
      'Original login password',
      name: 'text_363',
      desc: '',
      args: [],
    );
  }

  /// `withdraw coin network`
  String get text_364 {
    return Intl.message(
      'withdraw coin network',
      name: 'text_364',
      desc: '',
      args: [],
    );
  }

  /// `Reviewing`
  String get text_365 {
    return Intl.message(
      'Reviewing',
      name: 'text_365',
      desc: '',
      args: [],
    );
  }

  /// `Withdrawal completed`
  String get text_366 {
    return Intl.message(
      'Withdrawal completed',
      name: 'text_366',
      desc: '',
      args: [],
    );
  }

  /// `Withdrawal failed`
  String get text_367 {
    return Intl.message(
      'Withdrawal failed',
      name: 'text_367',
      desc: '',
      args: [],
    );
  }

  /// `Please perform primary authentication`
  String get text_368 {
    return Intl.message(
      'Please perform primary authentication',
      name: 'text_368',
      desc: '',
      args: [],
    );
  }

  /// `Primary certification audit is in progress, please wait for the completion of the audit`
  String get text_369 {
    return Intl.message(
      'Primary certification audit is in progress, please wait for the completion of the audit',
      name: 'text_369',
      desc: '',
      args: [],
    );
  }

  /// `Go to certification`
  String get text_370 {
    return Intl.message(
      'Go to certification',
      name: 'text_370',
      desc: '',
      args: [],
    );
  }

  /// `Please enter your payment password`
  String get text_371 {
    return Intl.message(
      'Please enter your payment password',
      name: 'text_371',
      desc: '',
      args: [],
    );
  }

  /// `Please perform advanced authentication`
  String get text_372 {
    return Intl.message(
      'Please perform advanced authentication',
      name: 'text_372',
      desc: '',
      args: [],
    );
  }

  /// `Advanced authentication is under review, please wait for the completion of the review`
  String get text_373 {
    return Intl.message(
      'Advanced authentication is under review, please wait for the completion of the review',
      name: 'text_373',
      desc: '',
      args: [],
    );
  }

  /// `Please perform advanced authentication`
  String get text_374 {
    return Intl.message(
      'Please perform advanced authentication',
      name: 'text_374',
      desc: '',
      args: [],
    );
  }

  /// `No password has been set for the funds`
  String get text_375 {
    return Intl.message(
      'No password has been set for the funds',
      name: 'text_375',
      desc: '',
      args: [],
    );
  }

  /// `Go to Settings`
  String get text_376 {
    return Intl.message(
      'Go to Settings',
      name: 'text_376',
      desc: '',
      args: [],
    );
  }

  /// `Not verified`
  String get text_377 {
    return Intl.message(
      'Not verified',
      name: 'text_377',
      desc: '',
      args: [],
    );
  }

  /// `Verified`
  String get text_378 {
    return Intl.message(
      'Verified',
      name: 'text_378',
      desc: '',
      args: [],
    );
  }

  /// `Verifying`
  String get text_379 {
    return Intl.message(
      'Verifying',
      name: 'text_379',
      desc: '',
      args: [],
    );
  }

  /// `Data`
  String get text_380 {
    return Intl.message(
      'Data',
      name: 'text_380',
      desc: '',
      args: [],
    );
  }

  /// `Market Sentiment`
  String get text_381 {
    return Intl.message(
      'Market Sentiment',
      name: 'text_381',
      desc: '',
      args: [],
    );
  }

  /// `BTC Leverage Long/Short`
  String get text_382 {
    return Intl.message(
      'BTC Leverage Long/Short',
      name: 'text_382',
      desc: '',
      args: [],
    );
  }

  /// `BTC Contract Long/Short`
  String get text_383 {
    return Intl.message(
      'BTC Contract Long/Short',
      name: 'text_383',
      desc: '',
      args: [],
    );
  }

  /// `USDT OTC Premium`
  String get text_384 {
    return Intl.message(
      'USDT OTC Premium',
      name: 'text_384',
      desc: '',
      args: [],
    );
  }

  /// `BTC Buy Vol {name} BTC`
  String text_385(Object name) {
    return Intl.message(
      'BTC Buy Vol $name BTC',
      name: 'text_385',
      desc: '',
      args: [name],
    );
  }

  /// `BTC Sell Vol {name} BTC`
  String text_386(Object name) {
    return Intl.message(
      'BTC Sell Vol $name BTC',
      name: 'text_386',
      desc: '',
      args: [name],
    );
  }

  /// `BTC Contract Basis Difference`
  String get text_387 {
    return Intl.message(
      'BTC Contract Basis Difference',
      name: 'text_387',
      desc: '',
      args: [],
    );
  }

  /// `Current Week`
  String get text_388 {
    return Intl.message(
      'Current Week',
      name: 'text_388',
      desc: '',
      args: [],
    );
  }

  /// `current_quarter`
  String get text_389 {
    return Intl.message(
      'current_quarter',
      name: 'text_389',
      desc: '',
      args: [],
    );
  }

  /// `perpetual`
  String get text_390 {
    return Intl.message(
      'perpetual',
      name: 'text_390',
      desc: '',
      args: [],
    );
  }

  /// `Quote Trend`
  String get text_391 {
    return Intl.message(
      'Quote Trend',
      name: 'text_391',
      desc: '',
      args: [],
    );
  }

  /// `BTC Spot Trading Volume`
  String get text_392 {
    return Intl.message(
      'BTC Spot Trading Volume',
      name: 'text_392',
      desc: '',
      args: [],
    );
  }

  /// `BTC Contract Positions`
  String get text_393 {
    return Intl.message(
      'BTC Contract Positions',
      name: 'text_393',
      desc: '',
      args: [],
    );
  }

  /// `BTC Contract Volume`
  String get text_394 {
    return Intl.message(
      'BTC Contract Volume',
      name: 'text_394',
      desc: '',
      args: [],
    );
  }

  /// `AML Agreement Signature Photos`
  String get text_395 {
    return Intl.message(
      'AML Agreement Signature Photos',
      name: 'text_395',
      desc: '',
      args: [],
    );
  }

  /// `Handheld photo ID`
  String get text_396 {
    return Intl.message(
      'Handheld photo ID',
      name: 'text_396',
      desc: '',
      args: [],
    );
  }

  /// `Error entering value`
  String get text_397 {
    return Intl.message(
      'Error entering value',
      name: 'text_397',
      desc: '',
      args: [],
    );
  }

  /// `Downloading`
  String get text_398 {
    return Intl.message(
      'Downloading',
      name: 'text_398',
      desc: '',
      args: [],
    );
  }

  /// `The download is complete, please go to the album to view`
  String get text_399 {
    return Intl.message(
      'The download is complete, please go to the album to view',
      name: 'text_399',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get text_400 {
    return Intl.message(
      'Privacy Policy',
      name: 'text_400',
      desc: '',
      args: [],
    );
  }

  /// `1. Introduction\n\nThank you for visiting MEXC Com ("MEXC" or "this website").\n\nAccess or use MEXC COM and related application interfaces or mobile applications mean that you agree with the policies and practices of our Privacy Policy ("privacy policy"), so please read this article carefully.\n\nThis Privacy Policy explains what data we collect, how we use and store such data, and how we share such data. If you do not wish to use your personal data (as defined below) in the manner described in this privacy policy, you shall not use this website or any services, software, APIs (application program interfaces), technologies, products and / or functions provided by this website ("services").\n\n2. Definitions\n\nDigital assets\n\n"Digital assets" means digital assets (also known as "virtual financial assets", "convertible virtual currency", "cryptocurrency", "virtual currency", "digital currency" or "digital goods"), such as bitcoin or Ethereum, which are based on the cryptographic protocol of computer network, which can be (I) centralized or decentralized, (II) closed or open source, And (III) as a medium of exchange and / or a store of value.\n\nPersonal data\n\n"Personal data" refers to any information that enables you to identify directly or indirectly, either alone or in combination with other data, such as your name, e-mail address, user name, contact information, identification number, location data, online identifier (such as IP address and device ID, or one or more factors specific to your physical, economic, cultural or social identity).  \n\n3. Personal data we collect\n\nThe personal data collected, processed and stored by MEXC is obtained through your use of our services or has obtained your consent. These personal data may include contact information, a copy of the identity information you provide, or the source of the publicly accessible database, the ID number issued by your government department, or any information related to your device or Internet service, such as the IP address and MAC number.  \n\nIn addition, we may conduct business and collect personal data with individuals and entities located in the European Economic Area ("EEA"), and we collect, store and process personal information in accordance with the general data protection regulations ("gdpr") and the data protection act. To learn more about how we protect data collected from individuals and entities in the European economic area, see the details below.  \n\nWe collect the information you provide in the MEXC registration process, which may come from the completed, incomplete or abandoned registration process. We also collect personal data when you communicate with us through customer support, subscribe to marketing information, or contact us through telephone, e-mail or other communication channels. We collect, use, store and transmit your personal data, which may include the following:\n\n  email address\n\n  full legal name (including former name and local language name)\n \nnationality\n\n(SSN), passport number or any ID number issued by the government.\n\n  date of birth\n\n  identification (e.g. passport, driver's license or government issued identification)\n\n  additional personal data or documents required at the discretion of our compliance team\n\n4. Data collection and transmission outside the European Economic Area\n\nAs mentioned above, we may collect personal data from customers located in the European economic area. In order to facilitate our services to customers in the European economic area, we require customers to provide clear consent to the transfer of personal data from the European economic area to outside the region. If you are an individual located in the European economic area and you refuse to agree to such terms, you will no longer be able to use our services. You will be able to withdraw your digital assets and legal tender; However, all other functions will be disabled.  \n\n5. How do we use your personal data\n\nMEXC Com uses personal data to manage, deliver, improve and provide personalized services for you. MEXC Com may also generate general data from any personal data we collect for our own use. We may also use these data with you on the bit chain MEXC COM and / or other products or services provided by its partners. We will not share your personal data with third parties (except partners related to MEXC.com service) unless you have obtained your consent or unless it is shown below.\n\nWe may share your personal data with third parties,\n\n(a) If we think it necessary to share to implement the terms of service;\n\n(b) To comply with the requirements of government agencies, including regulators, law enforcement and / or the judiciary;\n\n(c) In this way, the third party provides services (such as administrative or technical services) to MEXC.com;\n\n(d) Such third parties are related to the sale or transfer of our business or any part thereof.\n\n\n\nIn addition, we have adopted international standards to prevent money laundering, terrorist financing, circumvention of trade and economic sanctions. When the final digital asset rules and regulations come into force, we will implement them, which requires us to conduct due diligence on our customers. This may include the use of third-party data and service providers to cross compare your personal information with their data.\n\n6. How do we store your personal data\n\nThe data we collect from you may be transferred or stored to destinations outside Seychelles. These data may also be processed by staff outside Seychelles who work for us or for our suppliers. Your submission of your personal data means that you agree to our transfer, storage or processing of data, but as mentioned above, located in the EEA Except for customers.\n\n7. Access, correct and delete your personal data\n\nYou have the right to obtain a copy of your personal data upon request and to determine whether the information we have about you is accurate and up-to-date. If any of your personal data is inaccurate, you can ask to update your information. You can also request the deletion of your personal data, but we may refuse your deletion request in some cases, such as for legal requirements or other legal purposes. For data access, correction or deletion requests, please contact Personal Center email And attach the topic "data query".  \n\nIn response to data access, correction or deletion requests, we will verify the identity of the requesting party to ensure that he / she has the legal right to make such requests. Although our goal is to respond to these requests free of charge, we reserve the right to charge you a reasonable fee if your request is repeated or heavy.  \n\n8. Marketing\n\nFrom time to time, we will share with you company news, promotion information and information about products and services provided by MEXC. We may share personal data with third parties to help us carry out marketing and promotion projects or send marketing messages. By using MEXC, you accept this Privacy Policy and agree to accept such marketing communications.\n\nCustomers can opt out of these marketing communications at any time. If you do not want to receive these communications, please Personal Center email 。  \n\nYou will not be able to choose not to receive important information related to the product, such as policy / term updates and operational notices.\n\n9. Use of cookie\n\nWhen you visit MEXC, we may place a small amount of data to be saved by your browser (cookies) according to industry practice. This information will be placed on your computer or other devices used to access MEXC. This information helps us identify you and collect information about your use of MEXC, so as to better customize our services and improve your experience. We may also use the information collected to ensure compliance with the Bank Secrecy Act ("BSA") and the anti money laundering ("AML") program ("BSA / AML program") and to ensure that the security of your account is not affected by detecting irregular or suspicious account activities.  \n\nMost browsers are set to automatically accept cookies. When you finish browsing or page operation, some cookies will expire, and other cookies will remain on your computer or other devices until they are deleted or expired. You can choose to refuse to use our cookies, but this may affect the function of MEXC service or your user experience.  \n\n10. Information security\n\nWe are committed to protecting MEXC and you from unauthorized access, change, disclosure or destruction of personal data we collect and store. We take various measures to ensure information security, including using SSL to encrypt MEXC communication; All sessions need two factor authentication; Regularly review our personal data collection, storage and processing processes; And restrict the access rights of our employees and suppliers to your data according to the necessary principles, and our employees and suppliers must abide by the strict contractual confidentiality obligations.\n\n11. Contact MEXC about MEXC privacy issues or concerns\n\nIf you have any questions about this privacy policy or the use of your personal data, please send an Personal Center email Contact us (titled "privacy request").\n\nFor EEA customers, you have the right to require unresolved issues regarding the collection, use or disclosure of your personal data to comply with the requirements of the applicable regulatory authorities in your jurisdiction.  \n\n12. Modification of privacy policy\n\nWe may update this privacy policy at any time by publishing a revised version (including the effective date of the revised version) on this website, so please check frequently for any updates and changes.\n\n13. Language used\n\nThis privacy policy may be published in different languages. In case of any discrepancy, the English version shall prevail.`
  String get text_401 {
    return Intl.message(
      '1. Introduction\n\nThank you for visiting MEXC Com ("MEXC" or "this website").\n\nAccess or use MEXC COM and related application interfaces or mobile applications mean that you agree with the policies and practices of our Privacy Policy ("privacy policy"), so please read this article carefully.\n\nThis Privacy Policy explains what data we collect, how we use and store such data, and how we share such data. If you do not wish to use your personal data (as defined below) in the manner described in this privacy policy, you shall not use this website or any services, software, APIs (application program interfaces), technologies, products and / or functions provided by this website ("services").\n\n2. Definitions\n\nDigital assets\n\n"Digital assets" means digital assets (also known as "virtual financial assets", "convertible virtual currency", "cryptocurrency", "virtual currency", "digital currency" or "digital goods"), such as bitcoin or Ethereum, which are based on the cryptographic protocol of computer network, which can be (I) centralized or decentralized, (II) closed or open source, And (III) as a medium of exchange and / or a store of value.\n\nPersonal data\n\n"Personal data" refers to any information that enables you to identify directly or indirectly, either alone or in combination with other data, such as your name, e-mail address, user name, contact information, identification number, location data, online identifier (such as IP address and device ID, or one or more factors specific to your physical, economic, cultural or social identity).  \n\n3. Personal data we collect\n\nThe personal data collected, processed and stored by MEXC is obtained through your use of our services or has obtained your consent. These personal data may include contact information, a copy of the identity information you provide, or the source of the publicly accessible database, the ID number issued by your government department, or any information related to your device or Internet service, such as the IP address and MAC number.  \n\nIn addition, we may conduct business and collect personal data with individuals and entities located in the European Economic Area ("EEA"), and we collect, store and process personal information in accordance with the general data protection regulations ("gdpr") and the data protection act. To learn more about how we protect data collected from individuals and entities in the European economic area, see the details below.  \n\nWe collect the information you provide in the MEXC registration process, which may come from the completed, incomplete or abandoned registration process. We also collect personal data when you communicate with us through customer support, subscribe to marketing information, or contact us through telephone, e-mail or other communication channels. We collect, use, store and transmit your personal data, which may include the following:\n\n  email address\n\n  full legal name (including former name and local language name)\n \nnationality\n\n(SSN), passport number or any ID number issued by the government.\n\n  date of birth\n\n  identification (e.g. passport, driver\'s license or government issued identification)\n\n  additional personal data or documents required at the discretion of our compliance team\n\n4. Data collection and transmission outside the European Economic Area\n\nAs mentioned above, we may collect personal data from customers located in the European economic area. In order to facilitate our services to customers in the European economic area, we require customers to provide clear consent to the transfer of personal data from the European economic area to outside the region. If you are an individual located in the European economic area and you refuse to agree to such terms, you will no longer be able to use our services. You will be able to withdraw your digital assets and legal tender; However, all other functions will be disabled.  \n\n5. How do we use your personal data\n\nMEXC Com uses personal data to manage, deliver, improve and provide personalized services for you. MEXC Com may also generate general data from any personal data we collect for our own use. We may also use these data with you on the bit chain MEXC COM and / or other products or services provided by its partners. We will not share your personal data with third parties (except partners related to MEXC.com service) unless you have obtained your consent or unless it is shown below.\n\nWe may share your personal data with third parties,\n\n(a) If we think it necessary to share to implement the terms of service;\n\n(b) To comply with the requirements of government agencies, including regulators, law enforcement and / or the judiciary;\n\n(c) In this way, the third party provides services (such as administrative or technical services) to MEXC.com;\n\n(d) Such third parties are related to the sale or transfer of our business or any part thereof.\n\n\n\nIn addition, we have adopted international standards to prevent money laundering, terrorist financing, circumvention of trade and economic sanctions. When the final digital asset rules and regulations come into force, we will implement them, which requires us to conduct due diligence on our customers. This may include the use of third-party data and service providers to cross compare your personal information with their data.\n\n6. How do we store your personal data\n\nThe data we collect from you may be transferred or stored to destinations outside Seychelles. These data may also be processed by staff outside Seychelles who work for us or for our suppliers. Your submission of your personal data means that you agree to our transfer, storage or processing of data, but as mentioned above, located in the EEA Except for customers.\n\n7. Access, correct and delete your personal data\n\nYou have the right to obtain a copy of your personal data upon request and to determine whether the information we have about you is accurate and up-to-date. If any of your personal data is inaccurate, you can ask to update your information. You can also request the deletion of your personal data, but we may refuse your deletion request in some cases, such as for legal requirements or other legal purposes. For data access, correction or deletion requests, please contact Personal Center email And attach the topic "data query".  \n\nIn response to data access, correction or deletion requests, we will verify the identity of the requesting party to ensure that he / she has the legal right to make such requests. Although our goal is to respond to these requests free of charge, we reserve the right to charge you a reasonable fee if your request is repeated or heavy.  \n\n8. Marketing\n\nFrom time to time, we will share with you company news, promotion information and information about products and services provided by MEXC. We may share personal data with third parties to help us carry out marketing and promotion projects or send marketing messages. By using MEXC, you accept this Privacy Policy and agree to accept such marketing communications.\n\nCustomers can opt out of these marketing communications at any time. If you do not want to receive these communications, please Personal Center email 。  \n\nYou will not be able to choose not to receive important information related to the product, such as policy / term updates and operational notices.\n\n9. Use of cookie\n\nWhen you visit MEXC, we may place a small amount of data to be saved by your browser (cookies) according to industry practice. This information will be placed on your computer or other devices used to access MEXC. This information helps us identify you and collect information about your use of MEXC, so as to better customize our services and improve your experience. We may also use the information collected to ensure compliance with the Bank Secrecy Act ("BSA") and the anti money laundering ("AML") program ("BSA / AML program") and to ensure that the security of your account is not affected by detecting irregular or suspicious account activities.  \n\nMost browsers are set to automatically accept cookies. When you finish browsing or page operation, some cookies will expire, and other cookies will remain on your computer or other devices until they are deleted or expired. You can choose to refuse to use our cookies, but this may affect the function of MEXC service or your user experience.  \n\n10. Information security\n\nWe are committed to protecting MEXC and you from unauthorized access, change, disclosure or destruction of personal data we collect and store. We take various measures to ensure information security, including using SSL to encrypt MEXC communication; All sessions need two factor authentication; Regularly review our personal data collection, storage and processing processes; And restrict the access rights of our employees and suppliers to your data according to the necessary principles, and our employees and suppliers must abide by the strict contractual confidentiality obligations.\n\n11. Contact MEXC about MEXC privacy issues or concerns\n\nIf you have any questions about this privacy policy or the use of your personal data, please send an Personal Center email Contact us (titled "privacy request").\n\nFor EEA customers, you have the right to require unresolved issues regarding the collection, use or disclosure of your personal data to comply with the requirements of the applicable regulatory authorities in your jurisdiction.  \n\n12. Modification of privacy policy\n\nWe may update this privacy policy at any time by publishing a revised version (including the effective date of the revised version) on this website, so please check frequently for any updates and changes.\n\n13. Language used\n\nThis privacy policy may be published in different languages. In case of any discrepancy, the English version shall prevail.',
      name: 'text_401',
      desc: '',
      args: [],
    );
  }

  /// `Thank you for visiting MEXC Com (hereinafter referred to as "MEXC" or "we"). By browsing, accessing, or using MEXC COM and related mobile applications (collectively referred to as "this website"), you ("user" or "you") agree to the terms of service (these "terms"), so please read them carefully.\n\nThis clause constitutes a unanimous agreement and understanding on the use of any or all services and any way of obtaining services between you and the following service providers ("we"):\n\nBy clicking the "create account" button or accessing this website, we will provide you with access to and use of our trading platform through software, API (application interface), technology, products and / or functions. The services we provide through this website ("services") include:\n\nMEXC provides services – through (1) decentralized trading platform (2) virtual contract trading.\n\nAs described in this clause, you agree to be legally bound by these clauses and all clauses incorporated by reference. If you do not agree to be bound by these terms, please do not access or use this service.  \n\nWe have the right to change or modify the terms and conditions contained in these terms at any time, including but not limited to any policies or guidelines on the platform. We will provide notice of these changes by issuing the revised terms and changing the "last update" date at the top of the terms, or by sending an e-mail to the e-mail address provided by the user, or by any other means at our sole discretion. Any change or modification will take effect immediately when the revised version is published on this website or when we convey the modification information. These changes will be immediately applied to all current and subsequent uses or services.  \n\nYou waive any right to receive special notice of these changes or modifications. Your continued use of the platform will be deemed as your consent to these changes or modifications. If you do not agree with the current terms when accessing or using this platform, you must stop using our services. We recommend that you review the terms frequently to ensure that you understand the terms and conditions applicable to your access to and use of the services. If you have any questions about the use of this website, please contact Personal Center email 。\n\nThese terms and any terms expressly incorporated herein apply to your access to and use of any services provided by MEXC. These terms do not in any way change the terms or conditions of any other agreement you have entered into with MEXC's products, services or otherwise. If you use the service on behalf of any entity, you represent and warrant that (1) the organization is a legally established and effectively existing entity in accordance with local laws and regulations, and (2) you have the right to accept these terms on behalf of the entity. If you violate these terms, the entity agrees to be responsible to us for your actions.  \n\nYou should read this clause and any related documents very carefully. If you do not understand this clause and any documents involved herein, you should discuss with us and seek necessary explanations.  \n\nUnless otherwise specified, any formal communication with you will be in the form of e-mail. The document will be sent to you by email, and you should seek to send the document to us in the same way. You can also contact us by telephone.\n\nUnless otherwise agreed, any communication with you will be in English. If there is any discrepancy between the English version of this clause and any relevant English communication and any translation of this clause or any other language (as applicable), the English version shall prevail.\n\n1. Scope of application\nThis service is only applicable to users aged 18 or above. By accessing or using our services, you represent and ensure that you are at least 18 years old and have not been deprived of the right to apply this service. You also guarantee that you are not included in any trade or economic sanctions list, such as the sanctions list of the United Nations Security Council, nor are you restricted or prohibited from participating in any relevant type of transactions by the European Union, the Hong Kong Monetary Authority, Hong Kong customs, the overseas assets control office of the U.S. Department of Finance and other administrative law enforcement agencies.  \n\nIn addition, we will not provide this service in all countries or regions, and provide some or no services to users in specific restricted areas, including Cuba, Iran, Crimea, Sudan, Syria, Canada (limited to Ontario and Quebec), Bangladesh, Bolivia, Ecuador, Kyrgyzstan and Malta. The contents of these terms shall not be excluded by the laws of the user's country or region. Therefore, if you do not meet these requirements, do not use our services.\n\n2. Our services\n\nWe provide an online trading platform for trading VFA (or also known as virtual financial assets, encrypted tokens, digital tokens and encrypted currencies), as well as derivative services related to virtual financial assets or their indexes. The buyer and the seller conduct transactions on our platform; MEXC, as a platform provider, is neither a buyer nor a seller in these transactions. Users can request to withdraw their virtual financial assets, subject to the restrictions of this clause.\n\nMEXC provides users with the following transaction services:\n\n1) An order matching platform can automatically match users' transactions with other users' open orders for virtual financial assets or products related to virtual financial assets according to preset standards:\n\n you can use one type of virtual financial assets to trade spot services of another type of virtual financial assets. You will not be able to pre-determine or trade with pre-determined users. Similarly, an order may be partially completed or completed by multiple matching orders from different users.\n\n additional services that allow you to trade derivatives of virtual financial assets or indexes composed of them. These transactions are carried out through a platform that automatically matches user transactions about virtual financial assets and virtual financial asset related products with open orders of other users according to established standards. You will not be able to pre-determine or trade with pre-determined users.\n\n2) Digital wallet - MEXC provides users with a digital wallet that allows each user to store virtual financial assets traded through the trading platform service or C2C platform. The digital assets deposited or obtained by users through MEXC order matching platform or C2C platform will be saved by MEXC in the digital wallet maintained by MEXC on your behalf. MEXC provides this service to accelerate and facilitate the acquisition and / or disposal of virtual financial assets. MEXC will be deemed to keep the virtual financial asset in your name and should recognize that you are the beneficial owner of any virtual financial asset in your digital wallet. MEXC will not use your virtual financial assets as securities or use your virtual financial assets in any way unless it has received your legal instructions and prior authorization. The virtual financial assets kept by MEXC on behalf of you may be stored together with the assets of other users.\n\nBy agreeing to these terms, you clearly agree that your virtual financial assets are stored together with other users' virtual financial assets. The rights and interests of individual users will not be identifiable due to a separate certificate of title or other electronic records. In the case of inevitable losses, you may not receive all your profits and may share the losses proportionally. You declare and guarantee that you will always remain the ultimate effective legal beneficial owner of any virtual financial assets held by MEXC, and you will not act as a nominee or trustee of any other person, and will not transfer, transfer, mortgage Charge or create any security interest or encumbrance on the relevant virtual financial assets in any other way.  \n\nMEXC, where applicable, has no obligation to accept orders unless there are sufficient virtual financial assets in the account to (1) complete the delivery of relevant orders, (2) provide the margin that may be required for relevant transactions involving derivatives, and (3) pay any relevant applicable charges and expenses.  \n\nAccuracy of the website: we have made every effort to ensure the accuracy of the information on the website. The information and content on the website are subject to change without notice, and only to assist users to make independent decisions. We have taken reasonable measures to ensure the accuracy of website information; However, we do not guarantee the accuracy, applicability, reliability, integrity, performance and / or appropriateness of any service or product content provided by this website, and shall not be liable for any direct or indirect loss or damage, delay or failure of information transmission and your inability to access the website. We assume no responsibility for the use or interpretation of such information.  \n\nUsers must prepare the following equipment and bear the following expenses: (1) Internet access equipment, including but not limited to computers or other Internet access terminals, modems and other Internet access devices; (2) Internet access expenses, including but not limited to network access fees, Internet equipment rental fees, mobile phone traffic fees, etc.  \n\nYou agree to accept all kinds of information services provided by us while accepting various services of www. You hereby authorize us to send business information to you by email, mobile phone, mailing address, etc. You can choose not to accept various information services by making relevant settings on the website.  \n\nYou understand and agree that the services we provide are provided according to the existing technology and conditions. Although we have tried our best to ensure the continuity and security of the service, we cannot fully foresee and prevent the possible service interruption caused by legal, technical and other risks, including but not limited to force majeure, viruses, Trojans, hacker attacks, system instability, third-party service defects, government actions, etc Data loss and other losses and risks.  \n\nIf the system platform fails to operate normally due to the following conditions, so that the user cannot use various services or cannot place or cancel orders normally, we will not be liable for damages, including but not limited to:\n\nsystem shutdown and maintenance period announced by MEXC platform;\n\n telecommunication or network equipment problems;\n\n typhoon, earthquake, tsunami, flood, power failure, war, terrorist attack and other force majeure factors;\n\n any other problems, including hacker attacks, computer virus intrusion or attack, technical adjustment or failure of the telecommunications department, website upgrade, banking problems, government regulations or orders, or problems caused by any other third party;\n\n losses caused by third parties to users or other third parties.\n\nWe have the right to cancel the abnormal transaction results according to the actual situation due to abnormal transactions, market interruption and other possible abnormal conditions that may be caused by unexpected factors such as system failure, network failure, distributed denial of service attack (DDoS) and other hacker attacks. For virtual contract transactions, C2C} and margin loans, we have the right to roll back all transactions for a certain period of time as described in each user agreement.\n\nWe will not ask the user for any password and will not allow the user to transfer or make money to any account, virtual financial asset or virtual financial asset address not provided in the trading center of this website. This website is not responsible for losses caused by transfer or payment to accounts, virtual financial assets or virtual financial asset addresses provided by non trading platforms.\n\nTransaction exception handling: when using this service, you agree and agree that this service may not be provided due to the connection problem of digital currency network or other irresistible factors. The user shall ensure that the information you input is correct. If the website fails to timely inform the user of the follow-up processing methods of relevant transactions in case of the above abnormal conditions due to data errors, the website will not bear any liability for damages.\n\nWe have the right to know the real transaction background and purpose of users using our products or services. Users should truthfully provide the comprehensive and accurate information we require. If we have reasonable reasons to suspect that the user provides false transaction information, we have the right to temporarily or permanently restrict part or all of the functions of the product or service used by the user.  \n\n3. Risks of trading digital assets\n\nVirtual financial asset transactions involve significant risks. The risk of trading or holding virtual digital assets may cause you significant actual losses. Therefore, you should carefully consider whether to trade digital assets or related derivatives and use leverage according to your financial situation.  \n\nWe do not guarantee the orderly and stable trading of virtual financial assets on our platform. You should be cautious in trading virtual financial assets (and any other assets). The price will fluctuate at any time due to any factor. Due to price fluctuations, you may have a large profit or loss. Any virtual financial asset or trading position may fluctuate greatly in value or even become worthless.  \n\nAny loss caused by the user's fault shall be borne by the user. The fault includes but is not limited to: failure to operate according to the transaction prompt, failure to carry out the transaction operation in time, forgetting or leaking the password, the password is cracked by others, and the computer used by the user is invaded by others.  \n\nIf the user makes improper profits due to a potential undetected loophole in the website transaction rules, we will contact the user to recover it. You must give practical cooperation, otherwise we will take recourse measures including but not limited to restricting account transactions, freezing account funds, and suing a court with jurisdiction. The recourse expenses incurred to us due to the user's failure to cooperate effectively will also be borne by the user.  \n\nAdditional services may have increased risk factors. Please note:\n\n(1) You may lose all the initial margin and any additional virtual financial assets stored on our platform in order to maintain your location;\n\n(2) If the change of the market is not conducive to your position or the improvement of the margin level, you may be temporarily notified to transfer in additional virtual financial assets to maintain your position;\n\n(3) If you fail to deposit additional virtual financial assets into your account as required within the specified time, we can decide to close the position in case of loss.\n\n(4) Your profit or loss will depend on the price fluctuation of the corresponding virtual financial assets, which is not controlled by us.\n\n4. Create an account\n\n4.1 account registration and authentication: in order to use any service of the platform, you must first register your account by providing your name or email, provide your full name and other personal information for authentication, and confirm your acceptance of the terms of service. You agree to provide us with accurate and true information required at the time of registration due to the continuous reasons of identity verification, anti money laundering, anti terrorist financing, fraud, or other financial crime monitoring, including but not limited to the copy of your official identity certificate with photos and proof of address, such as rental contract and property bill. If the relevant information changes, you are obliged to update it as soon as possible.  \n\n4.2 account protection: you agree not to allow anyone to use or manage your account, and update us with any changes to your information, or notify MEXC in time once your account is stolen. You are responsible for retaining, protecting and safeguarding any key, certificate, password, access code, user ID, API key or other credentials and login information (collectively referred to as "password") provided to you, or the above password generated by your use of the service. If you lose your password, you may not be able to access your account. You agree to notify us immediately of any unauthorized use of your password. We will not be liable for any liability, loss or damage caused by unauthorized use of your password. You know and agree that if you authorize the password information of your account to any third party or third-party platform, the third party or third-party platform will know your account information (including but not limited to your asset status, transaction information, transaction operation authority and account information), and your account will have certain risks and may suffer losses or damages. You agree to bear any loss or damage caused by any third party or third-party platform authorized by you to use your password information, and any loss or damage caused to you by the third party or third-party platform due to the use of your account password information. We will not bear any compensation or other legal liability for the loss or damage caused by the above circumstances. Since MEXC is an online trading platform, in order to avoid potential security risks, the login password, management password and any other password shall not be set to the same. Relevant responsibilities shall be borne by the user. Once the user registers and becomes a user of the site, the user will obtain the user name (user mailbox) and password, and use the user name and password to be responsible for all activities and events after entering the system, and bear all legal liabilities directly or indirectly caused by the language and behavior using the user name.  \n\n4.3 password recovery: users who lose their password can reset their password after verification through their registered e-mail address or telephone number. If you find any unauthorized operation or security vulnerability, you should report it to MEXC immediately.  \n\n4.4 account balance: if your account shows a credit balance, you can request us to return the remaining virtual financial assets. However, we may choose to withhold (or deduct where applicable) your request to withdraw virtual financial assets in the following cases:\n\n there is a nominal loss in your public derivatives transaction;\n\n due to potential market conditions, we believe that additional virtual financial assets are needed to meet any current or future margin requirements for open derivative positions;\n\n under the provisions of this clause, you have any actual or possible liability to us; And / or\n\n we reasonably decide that there is an unresolved dispute between you and us in combination with this clause.\n\n4.5 account closing: you can close your account at any time. Closing the account will not affect any rights and obligations arising prior to the account closing date. You may be required to cancel or complete all outstanding orders and provide transfer instructions indicating the transfer location of any legal tender and / or digital assets remaining in your account in accordance with the terms of service. You are responsible for any fees, costs or obligations incurred in closing your account (including but not limited to attorney and court fees or transfer fees of legal tender or digital assets). If your account closing fee exceeds the value of your account, you will be responsible for reimbursing us. You may not close any of your accounts in order to avoid paying any other fees or avoiding any inspection related to our anti money laundering program.  \n\n4.6 account suspension and investigation: you agree and understand that MEXC has the right to suspend your account and any account you are the representative or authorized signatory at any time. And you agree that MEXC may freeze / lock the funds and assets in all such accounts and suspend your access to the site until we make a decision if we suspect and decide in our sole discretion that any such account will violate the following provisions:\n\n MEXC terms of service;\n\n any applicable laws or regulations;\n\n MEXC anti money laundering scheme;\n\n request of regulatory authority, court order, valid summons;\n\n the account is related to any pending litigation, investigation or government proceedings;\n\n the balance of the account needs to be adjusted for any reason;\n\n if we believe that an unauthorized person attempts to access your account;\n\n if we believe that you use relevant vouchers or other account information in an unauthorized or inappropriate manner;\n\n the account has not been accessed within one year.\n\nYou agree and acknowledge that, in our sole discretion, we have the right to immediately investigate your account and any related account if we suspect that any such account is in violation of regulations.  \n\n4.7 account termination: you agree and understand that we have the right to terminate any account at any time for any reason. You further agree and specify that we have the right to take any and all necessary and appropriate measures in accordance with this user agreement and / or applicable laws and regulations. If your account is terminated, we will refund your funds less the value of any transaction fee discounts, rebates and / or damages to which we are entitled under this user agreement. If your account is no longer subject to investigation, court order or subpoena, unless otherwise provided by law, you authorize us to return your funds (less any transaction fees, discounts, rebates and / or damages to which we are entitled) to any bank account related to your account. If there is still a balance of digital assets in your account, you agree to provide us with the address of digital assets after receiving a written notice so that we can return the remaining digital assets to you.  \n\n5. User's rights and license restrictions\n\nUnder these terms, we grant you a limited, non exclusive, non transferable license to access and use our websites and services only with our permission. You agree that you will not copy, transmit, distribute, sell, license, reverse engineer, modify, publish or participate in the transfer or sale, create derivative works or use any of our source code or similar content, proprietary or confidential data or other similar information in any other way without our prior express written consent.\n\nYou agree that:\n\n all rights, ownership and interests in the service and related software, websites and technologies (including all intellectual property rights therein) shall be reserved by us;\n\n no right or interest in the services shall be transferred except for the limited license granted by this Agreement;\n\n the service is protected by copyright and other intellectual property laws;\n\n we reserve all rights not expressly granted under this clause;\n\nMEXC has the right to question, freeze or deduct the user's goods or accounts according to the requirements of any applicable administrative, judicial and military authorities, including but not limited to public security authorities, inspection authorities, courts, customs and tax authorities.  \n\n6. User obligations\n\n6.1 the user shall not register multiple accounts for any purpose.  \n\n6.2 users shall not use the accounts of other users.\n\n6.3 the user shall not use the website or services in any way that causes or may cause damage to the website or damage the usability or accessibility of the website; Or use the website or services in connection with the following acts or activities, that is, any illegal fund payment and settlement activities, including but not limited to illegal payment activities by illegal means such as false transaction, false price and transaction refund; Illegal cash out of unit bank settlement account; Illegal transfer of unit bank settlement account to individual account; Illegal cheque cashing activities; Or any other activity for illegal, fraudulent or harmful purposes; Or any other activities in violation of existing laws and regulations. The user guarantees that MEXC fintech Co. Ltd., its officers, directors, shareholders, interest successors, employees, agents, subsidiaries, affiliates and the previous operators of the website will not bear any claims, claims or other requirements for liability brought by a third party due to the user's use of or related to the website or services, Otherwise, the user agrees to compensate the above parties for their losses and expenses (including lawyer's fees).\n\n6.4 users are prohibited from using this site to engage in illegal activities in any form. Without the authorization or permission of MEXC, users shall not use the name of this site to engage in any commercial activities, nor use this site as a place, platform or medium for commercial activities in any form.  \n\n6.5 users shall abide by all laws and regulations, and bear corresponding legal consequences and responsibilities for their actions involving the site and services. In addition, the user shall not infringe upon the legitimate rights and interests of any third party. In addition, if bit chain MEXC suffers losses as a result, bit chain MEXC has the right to obtain compensation from the user through legal or other means.  \n\n6.6 if the user violates the above provisions, MEXC has the right to directly take all necessary measures, including but not limited to deleting the content published by the user, canceling the stars and honors obtained by the user on the website, freezing the user's digital assets, suspending or sealing up the user's account, canceling the benefits obtained due to the violation, and even investigating the user's legal responsibility in the form of litigation.  \n\n7. Service fee\n\n7.1 some of the services we provide to users may incur costs. By using our services, you agree to the cost.\n\n7.2 MEXC has the right to set user service fees according to appropriate rules. We also have the right to set and adjust service fees and set specific service fees for users to use our services. All fee changes will be announced in advance.  \n\n7.3 if you do not agree to any fee change. You should stop using this service immediately. You still need to bear the expenses incurred before.\n\n7.4 unless otherwise stated or agreed, the user agrees that we have the right to automatically deduct the above service fees from the assets of the user account without prior notice.  \n\n7.5 if you fail to pay the fees in full or on time, we reserve the right to interrupt, suspend or terminate your account.  \n\n8. Change, interrupt, terminate, restrict, freeze and terminate services\n\n8.1 service change and interruption: we may change the service content and / or interrupt, suspend or terminate the service at any time or without prior notice.\n\n8.2 service interruption and termination: under any of the following circumstances, we have the right to interrupt or terminate the services provided to you at our discretion without notice, including but not limited to the following circumstances:\n\n if the personal information you provide is untrue or inconsistent with the information at the time of registration, and you fail to provide reasonable proof (please remember that you should submit true information according to laws or regulations);\n\n if you violate relevant laws and regulations or the agreement;\n\n if in accordance with any provisions of laws and regulations and the requirements of relevant government departments;\n\n if for safety reasons or other necessary circumstances.\n\n9. Comply with local laws\n\nIt is your personal responsibility to determine whether and to what extent you pay to the relevant tax authorities the income from any transaction through the services, and the corresponding taxes after deducting, collecting, reporting and reducing the correct amount. In addition, you agree to comply with all relevant laws and regulations. In order to prevent terrorist financing and anti money laundering activities, we will cooperate with local authorities. When using our services, you confirm that your behavior is legal and correct, and your virtual financial assets and legal tender do not come from illegal activities. We can control, restrict or empty your account, legal tender and virtual financial assets as appropriate or in coordination with local law enforcement authorities.  \n\n10. Privacy policy\n\nIf you want to know how we collect, use and share your information, please refer to our privacy policy.  \n\n11. Compensation\n\nYou shall indemnify us and our agents (if any), employees, officers, directors, affiliates, subsidiaries and successors to ensure that they do not suffer losses as a result of all third-party claims, except for damages caused by our separate violation of this clause. Similarly, in addition to your separate violation of these terms, we shall also compensate you and your agents, employees, officers, directors, affiliates, subsidiaries and successors to ensure that they do not suffer losses due to all third-party claims.\n\n12. Disclaimer\n\n12.1 network service provider: MEXC, as the third-party platform of "network service provider", does not guarantee that the information and services provided by this site can fully meet the needs of users. We are not responsible for the errors, insults, slanders, dereliction of duty, obscenity, pornography or blasphemy that users may encounter in the process of receiving our network services.\n\n12.2 service interruption: Based on the particularity of the Internet, we do not guarantee that the service will not be interrupted; The timeliness and security of the service cannot be guaranteed, and we do not assume any responsibility not caused by MEXC.\n\n12.3 network security: we try to provide users with a safe network environment, but we do not guarantee that the website or its server is free of viruses or other potentially harmful factors; Therefore, users should use industry approved software to check and remove any viruses in the files downloaded from this site.  \n\n12.4 user information: we are not responsible for the failure to save, modify, delete or store the information provided by the user. We will not be responsible for printing errors, negligence, etc. not caused by MEXC's intention. We have the right but no obligation to improve or correct any omissions and errors in any part of this site.  \n\n12.5 accuracy, integrity and reliability of the website: unless we expressly agree in writing, we do not guarantee the accuracy, integrity and reliability of any content information, including but not limited to advertising, obtained by users from the website in any way (including but not limited to including, connecting, via or downloading); We are not responsible for any products, services, information or materials purchased or obtained by users due to the content information on this site. The user shall bear the risk caused by using the information content of this site.  \n\n12.6 user comments: the user comments on this site only represent the user's personal views. This does not mean that we agree with their views or confirm their description. This site does not assume any legal responsibility caused by any user comments.\n\n12.7 announcement: all announcements sent to users will be delivered through formal page announcement, station letter, e-mail, customer service telephone, mobile phone short message or regular letter. We will not be legally liable for any winning, preferential and other activities or information obtained through other channels.  \n\n12.8 charges, handling charges, transaction and other expenses: we have the right to adjust recharge, handling charges, transaction and other expenses according to market conditions, and have the right to terminate any promotional activities in advance.  \n\n13. Applicable law\n\nThese terms, your use of the services and any claims, counterclaims or disputes of any kind or nature arising directly or indirectly from these terms shall be governed by and construed in accordance with the laws of England and Wales without regard to their conflict of laws rules.\n\n14. Separability, complaints and other provisions\n\n14.1 separability: if any provision of this agreement is deemed illegal, invalid or unenforceable for any reason, such provision shall be deemed separable and shall not affect the legal effect of any other provision.  \n\n14.2 complaints: if you have any complaints, feedback or questions, please contact Personal Center email Contact our customer service. When you contact us, please provide us with your name and email address and any other information we may need to identify you, as well as any feedback, problems or complaints you have.  \n\n14.3 others: these terms stipulate the comprehensive understanding of the subject by both parties and replace all previous relevant understanding and communication. The terms and conditions of any other document inconsistent with, contradictory to or added to the contents specified in this clause will not be binding on us. You represent and warrant that all information related to the terms of service disclosed to us is true, accurate and complete.`
  String get text_402 {
    return Intl.message(
      'Thank you for visiting MEXC Com (hereinafter referred to as "MEXC" or "we"). By browsing, accessing, or using MEXC COM and related mobile applications (collectively referred to as "this website"), you ("user" or "you") agree to the terms of service (these "terms"), so please read them carefully.\n\nThis clause constitutes a unanimous agreement and understanding on the use of any or all services and any way of obtaining services between you and the following service providers ("we"):\n\nBy clicking the "create account" button or accessing this website, we will provide you with access to and use of our trading platform through software, API (application interface), technology, products and / or functions. The services we provide through this website ("services") include:\n\nMEXC provides services – through (1) decentralized trading platform (2) virtual contract trading.\n\nAs described in this clause, you agree to be legally bound by these clauses and all clauses incorporated by reference. If you do not agree to be bound by these terms, please do not access or use this service.  \n\nWe have the right to change or modify the terms and conditions contained in these terms at any time, including but not limited to any policies or guidelines on the platform. We will provide notice of these changes by issuing the revised terms and changing the "last update" date at the top of the terms, or by sending an e-mail to the e-mail address provided by the user, or by any other means at our sole discretion. Any change or modification will take effect immediately when the revised version is published on this website or when we convey the modification information. These changes will be immediately applied to all current and subsequent uses or services.  \n\nYou waive any right to receive special notice of these changes or modifications. Your continued use of the platform will be deemed as your consent to these changes or modifications. If you do not agree with the current terms when accessing or using this platform, you must stop using our services. We recommend that you review the terms frequently to ensure that you understand the terms and conditions applicable to your access to and use of the services. If you have any questions about the use of this website, please contact Personal Center email 。\n\nThese terms and any terms expressly incorporated herein apply to your access to and use of any services provided by MEXC. These terms do not in any way change the terms or conditions of any other agreement you have entered into with MEXC\'s products, services or otherwise. If you use the service on behalf of any entity, you represent and warrant that (1) the organization is a legally established and effectively existing entity in accordance with local laws and regulations, and (2) you have the right to accept these terms on behalf of the entity. If you violate these terms, the entity agrees to be responsible to us for your actions.  \n\nYou should read this clause and any related documents very carefully. If you do not understand this clause and any documents involved herein, you should discuss with us and seek necessary explanations.  \n\nUnless otherwise specified, any formal communication with you will be in the form of e-mail. The document will be sent to you by email, and you should seek to send the document to us in the same way. You can also contact us by telephone.\n\nUnless otherwise agreed, any communication with you will be in English. If there is any discrepancy between the English version of this clause and any relevant English communication and any translation of this clause or any other language (as applicable), the English version shall prevail.\n\n1. Scope of application\nThis service is only applicable to users aged 18 or above. By accessing or using our services, you represent and ensure that you are at least 18 years old and have not been deprived of the right to apply this service. You also guarantee that you are not included in any trade or economic sanctions list, such as the sanctions list of the United Nations Security Council, nor are you restricted or prohibited from participating in any relevant type of transactions by the European Union, the Hong Kong Monetary Authority, Hong Kong customs, the overseas assets control office of the U.S. Department of Finance and other administrative law enforcement agencies.  \n\nIn addition, we will not provide this service in all countries or regions, and provide some or no services to users in specific restricted areas, including Cuba, Iran, Crimea, Sudan, Syria, Canada (limited to Ontario and Quebec), Bangladesh, Bolivia, Ecuador, Kyrgyzstan and Malta. The contents of these terms shall not be excluded by the laws of the user\'s country or region. Therefore, if you do not meet these requirements, do not use our services.\n\n2. Our services\n\nWe provide an online trading platform for trading VFA (or also known as virtual financial assets, encrypted tokens, digital tokens and encrypted currencies), as well as derivative services related to virtual financial assets or their indexes. The buyer and the seller conduct transactions on our platform; MEXC, as a platform provider, is neither a buyer nor a seller in these transactions. Users can request to withdraw their virtual financial assets, subject to the restrictions of this clause.\n\nMEXC provides users with the following transaction services:\n\n1) An order matching platform can automatically match users\' transactions with other users\' open orders for virtual financial assets or products related to virtual financial assets according to preset standards:\n\n you can use one type of virtual financial assets to trade spot services of another type of virtual financial assets. You will not be able to pre-determine or trade with pre-determined users. Similarly, an order may be partially completed or completed by multiple matching orders from different users.\n\n additional services that allow you to trade derivatives of virtual financial assets or indexes composed of them. These transactions are carried out through a platform that automatically matches user transactions about virtual financial assets and virtual financial asset related products with open orders of other users according to established standards. You will not be able to pre-determine or trade with pre-determined users.\n\n2) Digital wallet - MEXC provides users with a digital wallet that allows each user to store virtual financial assets traded through the trading platform service or C2C platform. The digital assets deposited or obtained by users through MEXC order matching platform or C2C platform will be saved by MEXC in the digital wallet maintained by MEXC on your behalf. MEXC provides this service to accelerate and facilitate the acquisition and / or disposal of virtual financial assets. MEXC will be deemed to keep the virtual financial asset in your name and should recognize that you are the beneficial owner of any virtual financial asset in your digital wallet. MEXC will not use your virtual financial assets as securities or use your virtual financial assets in any way unless it has received your legal instructions and prior authorization. The virtual financial assets kept by MEXC on behalf of you may be stored together with the assets of other users.\n\nBy agreeing to these terms, you clearly agree that your virtual financial assets are stored together with other users\' virtual financial assets. The rights and interests of individual users will not be identifiable due to a separate certificate of title or other electronic records. In the case of inevitable losses, you may not receive all your profits and may share the losses proportionally. You declare and guarantee that you will always remain the ultimate effective legal beneficial owner of any virtual financial assets held by MEXC, and you will not act as a nominee or trustee of any other person, and will not transfer, transfer, mortgage Charge or create any security interest or encumbrance on the relevant virtual financial assets in any other way.  \n\nMEXC, where applicable, has no obligation to accept orders unless there are sufficient virtual financial assets in the account to (1) complete the delivery of relevant orders, (2) provide the margin that may be required for relevant transactions involving derivatives, and (3) pay any relevant applicable charges and expenses.  \n\nAccuracy of the website: we have made every effort to ensure the accuracy of the information on the website. The information and content on the website are subject to change without notice, and only to assist users to make independent decisions. We have taken reasonable measures to ensure the accuracy of website information; However, we do not guarantee the accuracy, applicability, reliability, integrity, performance and / or appropriateness of any service or product content provided by this website, and shall not be liable for any direct or indirect loss or damage, delay or failure of information transmission and your inability to access the website. We assume no responsibility for the use or interpretation of such information.  \n\nUsers must prepare the following equipment and bear the following expenses: (1) Internet access equipment, including but not limited to computers or other Internet access terminals, modems and other Internet access devices; (2) Internet access expenses, including but not limited to network access fees, Internet equipment rental fees, mobile phone traffic fees, etc.  \n\nYou agree to accept all kinds of information services provided by us while accepting various services of www. You hereby authorize us to send business information to you by email, mobile phone, mailing address, etc. You can choose not to accept various information services by making relevant settings on the website.  \n\nYou understand and agree that the services we provide are provided according to the existing technology and conditions. Although we have tried our best to ensure the continuity and security of the service, we cannot fully foresee and prevent the possible service interruption caused by legal, technical and other risks, including but not limited to force majeure, viruses, Trojans, hacker attacks, system instability, third-party service defects, government actions, etc Data loss and other losses and risks.  \n\nIf the system platform fails to operate normally due to the following conditions, so that the user cannot use various services or cannot place or cancel orders normally, we will not be liable for damages, including but not limited to:\n\nsystem shutdown and maintenance period announced by MEXC platform;\n\n telecommunication or network equipment problems;\n\n typhoon, earthquake, tsunami, flood, power failure, war, terrorist attack and other force majeure factors;\n\n any other problems, including hacker attacks, computer virus intrusion or attack, technical adjustment or failure of the telecommunications department, website upgrade, banking problems, government regulations or orders, or problems caused by any other third party;\n\n losses caused by third parties to users or other third parties.\n\nWe have the right to cancel the abnormal transaction results according to the actual situation due to abnormal transactions, market interruption and other possible abnormal conditions that may be caused by unexpected factors such as system failure, network failure, distributed denial of service attack (DDoS) and other hacker attacks. For virtual contract transactions, C2C} and margin loans, we have the right to roll back all transactions for a certain period of time as described in each user agreement.\n\nWe will not ask the user for any password and will not allow the user to transfer or make money to any account, virtual financial asset or virtual financial asset address not provided in the trading center of this website. This website is not responsible for losses caused by transfer or payment to accounts, virtual financial assets or virtual financial asset addresses provided by non trading platforms.\n\nTransaction exception handling: when using this service, you agree and agree that this service may not be provided due to the connection problem of digital currency network or other irresistible factors. The user shall ensure that the information you input is correct. If the website fails to timely inform the user of the follow-up processing methods of relevant transactions in case of the above abnormal conditions due to data errors, the website will not bear any liability for damages.\n\nWe have the right to know the real transaction background and purpose of users using our products or services. Users should truthfully provide the comprehensive and accurate information we require. If we have reasonable reasons to suspect that the user provides false transaction information, we have the right to temporarily or permanently restrict part or all of the functions of the product or service used by the user.  \n\n3. Risks of trading digital assets\n\nVirtual financial asset transactions involve significant risks. The risk of trading or holding virtual digital assets may cause you significant actual losses. Therefore, you should carefully consider whether to trade digital assets or related derivatives and use leverage according to your financial situation.  \n\nWe do not guarantee the orderly and stable trading of virtual financial assets on our platform. You should be cautious in trading virtual financial assets (and any other assets). The price will fluctuate at any time due to any factor. Due to price fluctuations, you may have a large profit or loss. Any virtual financial asset or trading position may fluctuate greatly in value or even become worthless.  \n\nAny loss caused by the user\'s fault shall be borne by the user. The fault includes but is not limited to: failure to operate according to the transaction prompt, failure to carry out the transaction operation in time, forgetting or leaking the password, the password is cracked by others, and the computer used by the user is invaded by others.  \n\nIf the user makes improper profits due to a potential undetected loophole in the website transaction rules, we will contact the user to recover it. You must give practical cooperation, otherwise we will take recourse measures including but not limited to restricting account transactions, freezing account funds, and suing a court with jurisdiction. The recourse expenses incurred to us due to the user\'s failure to cooperate effectively will also be borne by the user.  \n\nAdditional services may have increased risk factors. Please note:\n\n(1) You may lose all the initial margin and any additional virtual financial assets stored on our platform in order to maintain your location;\n\n(2) If the change of the market is not conducive to your position or the improvement of the margin level, you may be temporarily notified to transfer in additional virtual financial assets to maintain your position;\n\n(3) If you fail to deposit additional virtual financial assets into your account as required within the specified time, we can decide to close the position in case of loss.\n\n(4) Your profit or loss will depend on the price fluctuation of the corresponding virtual financial assets, which is not controlled by us.\n\n4. Create an account\n\n4.1 account registration and authentication: in order to use any service of the platform, you must first register your account by providing your name or email, provide your full name and other personal information for authentication, and confirm your acceptance of the terms of service. You agree to provide us with accurate and true information required at the time of registration due to the continuous reasons of identity verification, anti money laundering, anti terrorist financing, fraud, or other financial crime monitoring, including but not limited to the copy of your official identity certificate with photos and proof of address, such as rental contract and property bill. If the relevant information changes, you are obliged to update it as soon as possible.  \n\n4.2 account protection: you agree not to allow anyone to use or manage your account, and update us with any changes to your information, or notify MEXC in time once your account is stolen. You are responsible for retaining, protecting and safeguarding any key, certificate, password, access code, user ID, API key or other credentials and login information (collectively referred to as "password") provided to you, or the above password generated by your use of the service. If you lose your password, you may not be able to access your account. You agree to notify us immediately of any unauthorized use of your password. We will not be liable for any liability, loss or damage caused by unauthorized use of your password. You know and agree that if you authorize the password information of your account to any third party or third-party platform, the third party or third-party platform will know your account information (including but not limited to your asset status, transaction information, transaction operation authority and account information), and your account will have certain risks and may suffer losses or damages. You agree to bear any loss or damage caused by any third party or third-party platform authorized by you to use your password information, and any loss or damage caused to you by the third party or third-party platform due to the use of your account password information. We will not bear any compensation or other legal liability for the loss or damage caused by the above circumstances. Since MEXC is an online trading platform, in order to avoid potential security risks, the login password, management password and any other password shall not be set to the same. Relevant responsibilities shall be borne by the user. Once the user registers and becomes a user of the site, the user will obtain the user name (user mailbox) and password, and use the user name and password to be responsible for all activities and events after entering the system, and bear all legal liabilities directly or indirectly caused by the language and behavior using the user name.  \n\n4.3 password recovery: users who lose their password can reset their password after verification through their registered e-mail address or telephone number. If you find any unauthorized operation or security vulnerability, you should report it to MEXC immediately.  \n\n4.4 account balance: if your account shows a credit balance, you can request us to return the remaining virtual financial assets. However, we may choose to withhold (or deduct where applicable) your request to withdraw virtual financial assets in the following cases:\n\n there is a nominal loss in your public derivatives transaction;\n\n due to potential market conditions, we believe that additional virtual financial assets are needed to meet any current or future margin requirements for open derivative positions;\n\n under the provisions of this clause, you have any actual or possible liability to us; And / or\n\n we reasonably decide that there is an unresolved dispute between you and us in combination with this clause.\n\n4.5 account closing: you can close your account at any time. Closing the account will not affect any rights and obligations arising prior to the account closing date. You may be required to cancel or complete all outstanding orders and provide transfer instructions indicating the transfer location of any legal tender and / or digital assets remaining in your account in accordance with the terms of service. You are responsible for any fees, costs or obligations incurred in closing your account (including but not limited to attorney and court fees or transfer fees of legal tender or digital assets). If your account closing fee exceeds the value of your account, you will be responsible for reimbursing us. You may not close any of your accounts in order to avoid paying any other fees or avoiding any inspection related to our anti money laundering program.  \n\n4.6 account suspension and investigation: you agree and understand that MEXC has the right to suspend your account and any account you are the representative or authorized signatory at any time. And you agree that MEXC may freeze / lock the funds and assets in all such accounts and suspend your access to the site until we make a decision if we suspect and decide in our sole discretion that any such account will violate the following provisions:\n\n MEXC terms of service;\n\n any applicable laws or regulations;\n\n MEXC anti money laundering scheme;\n\n request of regulatory authority, court order, valid summons;\n\n the account is related to any pending litigation, investigation or government proceedings;\n\n the balance of the account needs to be adjusted for any reason;\n\n if we believe that an unauthorized person attempts to access your account;\n\n if we believe that you use relevant vouchers or other account information in an unauthorized or inappropriate manner;\n\n the account has not been accessed within one year.\n\nYou agree and acknowledge that, in our sole discretion, we have the right to immediately investigate your account and any related account if we suspect that any such account is in violation of regulations.  \n\n4.7 account termination: you agree and understand that we have the right to terminate any account at any time for any reason. You further agree and specify that we have the right to take any and all necessary and appropriate measures in accordance with this user agreement and / or applicable laws and regulations. If your account is terminated, we will refund your funds less the value of any transaction fee discounts, rebates and / or damages to which we are entitled under this user agreement. If your account is no longer subject to investigation, court order or subpoena, unless otherwise provided by law, you authorize us to return your funds (less any transaction fees, discounts, rebates and / or damages to which we are entitled) to any bank account related to your account. If there is still a balance of digital assets in your account, you agree to provide us with the address of digital assets after receiving a written notice so that we can return the remaining digital assets to you.  \n\n5. User\'s rights and license restrictions\n\nUnder these terms, we grant you a limited, non exclusive, non transferable license to access and use our websites and services only with our permission. You agree that you will not copy, transmit, distribute, sell, license, reverse engineer, modify, publish or participate in the transfer or sale, create derivative works or use any of our source code or similar content, proprietary or confidential data or other similar information in any other way without our prior express written consent.\n\nYou agree that:\n\n all rights, ownership and interests in the service and related software, websites and technologies (including all intellectual property rights therein) shall be reserved by us;\n\n no right or interest in the services shall be transferred except for the limited license granted by this Agreement;\n\n the service is protected by copyright and other intellectual property laws;\n\n we reserve all rights not expressly granted under this clause;\n\nMEXC has the right to question, freeze or deduct the user\'s goods or accounts according to the requirements of any applicable administrative, judicial and military authorities, including but not limited to public security authorities, inspection authorities, courts, customs and tax authorities.  \n\n6. User obligations\n\n6.1 the user shall not register multiple accounts for any purpose.  \n\n6.2 users shall not use the accounts of other users.\n\n6.3 the user shall not use the website or services in any way that causes or may cause damage to the website or damage the usability or accessibility of the website; Or use the website or services in connection with the following acts or activities, that is, any illegal fund payment and settlement activities, including but not limited to illegal payment activities by illegal means such as false transaction, false price and transaction refund; Illegal cash out of unit bank settlement account; Illegal transfer of unit bank settlement account to individual account; Illegal cheque cashing activities; Or any other activity for illegal, fraudulent or harmful purposes; Or any other activities in violation of existing laws and regulations. The user guarantees that MEXC fintech Co. Ltd., its officers, directors, shareholders, interest successors, employees, agents, subsidiaries, affiliates and the previous operators of the website will not bear any claims, claims or other requirements for liability brought by a third party due to the user\'s use of or related to the website or services, Otherwise, the user agrees to compensate the above parties for their losses and expenses (including lawyer\'s fees).\n\n6.4 users are prohibited from using this site to engage in illegal activities in any form. Without the authorization or permission of MEXC, users shall not use the name of this site to engage in any commercial activities, nor use this site as a place, platform or medium for commercial activities in any form.  \n\n6.5 users shall abide by all laws and regulations, and bear corresponding legal consequences and responsibilities for their actions involving the site and services. In addition, the user shall not infringe upon the legitimate rights and interests of any third party. In addition, if bit chain MEXC suffers losses as a result, bit chain MEXC has the right to obtain compensation from the user through legal or other means.  \n\n6.6 if the user violates the above provisions, MEXC has the right to directly take all necessary measures, including but not limited to deleting the content published by the user, canceling the stars and honors obtained by the user on the website, freezing the user\'s digital assets, suspending or sealing up the user\'s account, canceling the benefits obtained due to the violation, and even investigating the user\'s legal responsibility in the form of litigation.  \n\n7. Service fee\n\n7.1 some of the services we provide to users may incur costs. By using our services, you agree to the cost.\n\n7.2 MEXC has the right to set user service fees according to appropriate rules. We also have the right to set and adjust service fees and set specific service fees for users to use our services. All fee changes will be announced in advance.  \n\n7.3 if you do not agree to any fee change. You should stop using this service immediately. You still need to bear the expenses incurred before.\n\n7.4 unless otherwise stated or agreed, the user agrees that we have the right to automatically deduct the above service fees from the assets of the user account without prior notice.  \n\n7.5 if you fail to pay the fees in full or on time, we reserve the right to interrupt, suspend or terminate your account.  \n\n8. Change, interrupt, terminate, restrict, freeze and terminate services\n\n8.1 service change and interruption: we may change the service content and / or interrupt, suspend or terminate the service at any time or without prior notice.\n\n8.2 service interruption and termination: under any of the following circumstances, we have the right to interrupt or terminate the services provided to you at our discretion without notice, including but not limited to the following circumstances:\n\n if the personal information you provide is untrue or inconsistent with the information at the time of registration, and you fail to provide reasonable proof (please remember that you should submit true information according to laws or regulations);\n\n if you violate relevant laws and regulations or the agreement;\n\n if in accordance with any provisions of laws and regulations and the requirements of relevant government departments;\n\n if for safety reasons or other necessary circumstances.\n\n9. Comply with local laws\n\nIt is your personal responsibility to determine whether and to what extent you pay to the relevant tax authorities the income from any transaction through the services, and the corresponding taxes after deducting, collecting, reporting and reducing the correct amount. In addition, you agree to comply with all relevant laws and regulations. In order to prevent terrorist financing and anti money laundering activities, we will cooperate with local authorities. When using our services, you confirm that your behavior is legal and correct, and your virtual financial assets and legal tender do not come from illegal activities. We can control, restrict or empty your account, legal tender and virtual financial assets as appropriate or in coordination with local law enforcement authorities.  \n\n10. Privacy policy\n\nIf you want to know how we collect, use and share your information, please refer to our privacy policy.  \n\n11. Compensation\n\nYou shall indemnify us and our agents (if any), employees, officers, directors, affiliates, subsidiaries and successors to ensure that they do not suffer losses as a result of all third-party claims, except for damages caused by our separate violation of this clause. Similarly, in addition to your separate violation of these terms, we shall also compensate you and your agents, employees, officers, directors, affiliates, subsidiaries and successors to ensure that they do not suffer losses due to all third-party claims.\n\n12. Disclaimer\n\n12.1 network service provider: MEXC, as the third-party platform of "network service provider", does not guarantee that the information and services provided by this site can fully meet the needs of users. We are not responsible for the errors, insults, slanders, dereliction of duty, obscenity, pornography or blasphemy that users may encounter in the process of receiving our network services.\n\n12.2 service interruption: Based on the particularity of the Internet, we do not guarantee that the service will not be interrupted; The timeliness and security of the service cannot be guaranteed, and we do not assume any responsibility not caused by MEXC.\n\n12.3 network security: we try to provide users with a safe network environment, but we do not guarantee that the website or its server is free of viruses or other potentially harmful factors; Therefore, users should use industry approved software to check and remove any viruses in the files downloaded from this site.  \n\n12.4 user information: we are not responsible for the failure to save, modify, delete or store the information provided by the user. We will not be responsible for printing errors, negligence, etc. not caused by MEXC\'s intention. We have the right but no obligation to improve or correct any omissions and errors in any part of this site.  \n\n12.5 accuracy, integrity and reliability of the website: unless we expressly agree in writing, we do not guarantee the accuracy, integrity and reliability of any content information, including but not limited to advertising, obtained by users from the website in any way (including but not limited to including, connecting, via or downloading); We are not responsible for any products, services, information or materials purchased or obtained by users due to the content information on this site. The user shall bear the risk caused by using the information content of this site.  \n\n12.6 user comments: the user comments on this site only represent the user\'s personal views. This does not mean that we agree with their views or confirm their description. This site does not assume any legal responsibility caused by any user comments.\n\n12.7 announcement: all announcements sent to users will be delivered through formal page announcement, station letter, e-mail, customer service telephone, mobile phone short message or regular letter. We will not be legally liable for any winning, preferential and other activities or information obtained through other channels.  \n\n12.8 charges, handling charges, transaction and other expenses: we have the right to adjust recharge, handling charges, transaction and other expenses according to market conditions, and have the right to terminate any promotional activities in advance.  \n\n13. Applicable law\n\nThese terms, your use of the services and any claims, counterclaims or disputes of any kind or nature arising directly or indirectly from these terms shall be governed by and construed in accordance with the laws of England and Wales without regard to their conflict of laws rules.\n\n14. Separability, complaints and other provisions\n\n14.1 separability: if any provision of this agreement is deemed illegal, invalid or unenforceable for any reason, such provision shall be deemed separable and shall not affect the legal effect of any other provision.  \n\n14.2 complaints: if you have any complaints, feedback or questions, please contact Personal Center email Contact our customer service. When you contact us, please provide us with your name and email address and any other information we may need to identify you, as well as any feedback, problems or complaints you have.  \n\n14.3 others: these terms stipulate the comprehensive understanding of the subject by both parties and replace all previous relevant understanding and communication. The terms and conditions of any other document inconsistent with, contradictory to or added to the contents specified in this clause will not be binding on us. You represent and warrant that all information related to the terms of service disclosed to us is true, accurate and complete.',
      name: 'text_402',
      desc: '',
      args: [],
    );
  }

  /// `Network request timed out`
  String get text_403 {
    return Intl.message(
      'Network request timed out',
      name: 'text_403',
      desc: '',
      args: [],
    );
  }

  /// `Trigger take profit and stop loss`
  String get text_404 {
    return Intl.message(
      'Trigger take profit and stop loss',
      name: 'text_404',
      desc: '',
      args: [],
    );
  }

  /// `Server Error`
  String get text_405 {
    return Intl.message(
      'Server Error',
      name: 'text_405',
      desc: '',
      args: [],
    );
  }

  /// `download failed`
  String get text_406 {
    return Intl.message(
      'download failed',
      name: 'text_406',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
