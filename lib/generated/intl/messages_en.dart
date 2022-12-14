// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(name) => "${name}月";

  static String m1(name) => "送${name}钻";

  static String m2(name) => "${name}岁";

  static String m3(name) => "对方免费聊天次数剩余:${name}次";

  static String m4(name) => "收益+${name}元";

  static String m5(name) => "${name}赞";

  static String m6(name) => "${name}s重新获取";

  static String m7(quantity, code) =>
      "The minimum withdrawal quantity is ${quantity}${code}";

  static String m8(quantity, code) =>
      "\nThe minimum number of coins to withdraw is:${quantity} ${code}. \n\nTo protect the safety of funds, when your account security policy changes, password changes, we will conduct manual review of coin withdrawals, please wait patiently for staff email contact. Please make sure that your computer and browser are secure to prevent information from being changed or leaked.";

  static String m9(name) => "${name} block confirmation";

  static String m10(name) => "${name} Network Confirmation";

  static String m11(name) =>
      "Rate: ${name}% | Absenteeism fee paid at your own expense";

  static String m12(name) => "距你${name}";

  static String m13(name) => "BTC Buy Vol ${name} BTC";

  static String m14(name) => "BTC Sell Vol ${name} BTC";

  static String m15(name) => "共${name}条回复";

  static String m16(name) => "最多可上传${name}张";

  static String m17(name) => "${name}条评论";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
        "app_name": MessageLookupByLibrary.simpleMessage("鲸邻交友"),
        "text_0": MessageLookupByLibrary.simpleMessage("登录"),
        "text_1": MessageLookupByLibrary.simpleMessage("注册"),
        "text_10": MessageLookupByLibrary.simpleMessage("请填写手机号"),
        "text_100": MessageLookupByLibrary.simpleMessage("确认修改"),
        "text_101": MessageLookupByLibrary.simpleMessage("可提现金额"),
        "text_102": MessageLookupByLibrary.simpleMessage("申请提现"),
        "text_103": MessageLookupByLibrary.simpleMessage("申请中"),
        "text_104": MessageLookupByLibrary.simpleMessage("总收益"),
        "text_105": MessageLookupByLibrary.simpleMessage("提现成功"),
        "text_106": MessageLookupByLibrary.simpleMessage("提现失败"),
        "text_107": m0,
        "text_108": MessageLookupByLibrary.simpleMessage(
            "提现预计五个工作日内到账，若遇到周末及法定节假日，提现到账日期顺延。"),
        "text_109": MessageLookupByLibrary.simpleMessage("提现金额"),
        "text_11": MessageLookupByLibrary.simpleMessage("请输入验证码"),
        "text_110": MessageLookupByLibrary.simpleMessage(
            "1.钻石仅能用于享受我公司服务体系下直接运营的产品和服务，不可交易； \n2.在您使用充值服务前，请确保您已满18周岁且具有相应的民事行为能力。 禁止未成年使用充值服务。"),
        "text_111": MessageLookupByLibrary.simpleMessage("套餐说明:"),
        "text_112": MessageLookupByLibrary.simpleMessage("《用户充值协议》"),
        "text_113": MessageLookupByLibrary.simpleMessage("充值即默认同意"),
        "text_114": MessageLookupByLibrary.simpleMessage("钻"),
        "text_115": MessageLookupByLibrary.simpleMessage("剩余钻石"),
        "text_116": MessageLookupByLibrary.simpleMessage("钻石套餐选择"),
        "text_117": m1,
        "text_118": MessageLookupByLibrary.simpleMessage("消息是否以通知栏形式通知"),
        "text_119": MessageLookupByLibrary.simpleMessage("消息是否通知有声音"),
        "text_12": MessageLookupByLibrary.simpleMessage("当前手机号"),
        "text_120": MessageLookupByLibrary.simpleMessage("消息是否通知有震动"),
        "text_121": MessageLookupByLibrary.simpleMessage("反馈内容"),
        "text_122": MessageLookupByLibrary.simpleMessage("请输入您反馈的内容..."),
        "text_123": MessageLookupByLibrary.simpleMessage("确认"),
        "text_124": MessageLookupByLibrary.simpleMessage(
            "是否授权软件屏蔽手机通讯录里的用户?\n屏蔽后他们将看不到自己的信息。"),
        "text_125": MessageLookupByLibrary.simpleMessage("确定要退出当前账号？"),
        "text_126": MessageLookupByLibrary.simpleMessage("动态删除后将无法恢复，是否要删除？"),
        "text_127": MessageLookupByLibrary.simpleMessage("暂不删除"),
        "text_128": MessageLookupByLibrary.simpleMessage("动态详情"),
        "text_129": MessageLookupByLibrary.simpleMessage("支付宝"),
        "text_13": MessageLookupByLibrary.simpleMessage("本机号码一键登录"),
        "text_130": MessageLookupByLibrary.simpleMessage("微信"),
        "text_131": MessageLookupByLibrary.simpleMessage("关注Ta"),
        "text_132": MessageLookupByLibrary.simpleMessage("取消关注"),
        "text_133": MessageLookupByLibrary.simpleMessage("确定取消关注？"),
        "text_134": MessageLookupByLibrary.simpleMessage("暂不取消"),
        "text_135": MessageLookupByLibrary.simpleMessage("女"),
        "text_136": MessageLookupByLibrary.simpleMessage("男"),
        "text_137": MessageLookupByLibrary.simpleMessage("确定"),
        "text_138": MessageLookupByLibrary.simpleMessage("清除未读"),
        "text_139": MessageLookupByLibrary.simpleMessage("不再提醒"),
        "text_14": MessageLookupByLibrary.simpleMessage("切换手机号登录"),
        "text_140":
            MessageLookupByLibrary.simpleMessage("聊天就有收益，所见即所得，快点去寻找心动的他吧！"),
        "text_141": MessageLookupByLibrary.simpleMessage("余额不足!"),
        "text_142": MessageLookupByLibrary.simpleMessage("马上充值，别错过缘分"),
        "text_143": MessageLookupByLibrary.simpleMessage("去充值"),
        "text_144": MessageLookupByLibrary.simpleMessage("暂不充值"),
        "text_145": MessageLookupByLibrary.simpleMessage("置顶聊天"),
        "text_146": MessageLookupByLibrary.simpleMessage("加入黑名单"),
        "text_147": MessageLookupByLibrary.simpleMessage("移除黑名单"),
        "text_148": MessageLookupByLibrary.simpleMessage("清除聊天记录"),
        "text_149": MessageLookupByLibrary.simpleMessage("关于TA"),
        "text_15": MessageLookupByLibrary.simpleMessage("上传头像"),
        "text_150": MessageLookupByLibrary.simpleMessage("动态"),
        "text_151": MessageLookupByLibrary.simpleMessage("搭讪TA"),
        "text_152": MessageLookupByLibrary.simpleMessage("个人介绍"),
        "text_153": m2,
        "text_154": m3,
        "text_155": m4,
        "text_156": m5,
        "text_157": MessageLookupByLibrary.simpleMessage("图片裁剪失败,请重试"),
        "text_158": MessageLookupByLibrary.simpleMessage("请输入正确的手机号"),
        "text_159": MessageLookupByLibrary.simpleMessage("请输入6位验证码"),
        "text_16": MessageLookupByLibrary.simpleMessage("性别一旦设置后降无法修改"),
        "text_160": MessageLookupByLibrary.simpleMessage("请勾选《用户协议》和《隐私协议》"),
        "text_161": m6,
        "text_162": MessageLookupByLibrary.simpleMessage(
            "The handheld agreement cannot be empty"),
        "text_163": MessageLookupByLibrary.simpleMessage(
            "The purchase amount is out of range"),
        "text_164": MessageLookupByLibrary.simpleMessage(
            "Order error, please contact administrator"),
        "text_165": MessageLookupByLibrary.simpleMessage(
            "The selected currency cannot be the same"),
        "text_166": MessageLookupByLibrary.simpleMessage(
            "The selected currency cannot be empty"),
        "text_167": MessageLookupByLibrary.simpleMessage(
            "The network address cannot be empty"),
        "text_168": MessageLookupByLibrary.simpleMessage(
            "Quantity must be greater than zero"),
        "text_169": MessageLookupByLibrary.simpleMessage(
            "Please use the correct email address"),
        "text_17": MessageLookupByLibrary.simpleMessage("男性"),
        "text_170": MessageLookupByLibrary.simpleMessage(
            "The verification code is incorrect"),
        "text_171": MessageLookupByLibrary.simpleMessage(
            "Account already exists, please login"),
        "text_172": MessageLookupByLibrary.simpleMessage(
            "The current account has not been registered yet, please register"),
        "text_173": MessageLookupByLibrary.simpleMessage("Request failed"),
        "text_174": MessageLookupByLibrary.simpleMessage("Please select"),
        "text_175": MessageLookupByLibrary.simpleMessage("Price"),
        "text_176": MessageLookupByLibrary.simpleMessage("Required deposit"),
        "text_177": MessageLookupByLibrary.simpleMessage("Closeout Fee"),
        "text_178": MessageLookupByLibrary.simpleMessage("Stop Out"),
        "text_179": MessageLookupByLibrary.simpleMessage("Default"),
        "text_18": MessageLookupByLibrary.simpleMessage("女性"),
        "text_180": MessageLookupByLibrary.simpleMessage("Stop Loss"),
        "text_181": MessageLookupByLibrary.simpleMessage("Buy"),
        "text_182": MessageLookupByLibrary.simpleMessage("Current Position"),
        "text_183":
            MessageLookupByLibrary.simpleMessage("Historical Contracts"),
        "text_184": MessageLookupByLibrary.simpleMessage("Order Number"),
        "text_185": MessageLookupByLibrary.simpleMessage("Creation Time"),
        "text_186": MessageLookupByLibrary.simpleMessage("Transaction Type"),
        "text_187": MessageLookupByLibrary.simpleMessage("Buy Up"),
        "text_188": MessageLookupByLibrary.simpleMessage("Buy Down"),
        "text_189": MessageLookupByLibrary.simpleMessage("Quantity"),
        "text_19": MessageLookupByLibrary.simpleMessage("昵称"),
        "text_190": MessageLookupByLibrary.simpleMessage("Margin"),
        "text_191": MessageLookupByLibrary.simpleMessage("Commission"),
        "text_192": MessageLookupByLibrary.simpleMessage("Close P&L"),
        "text_193": MessageLookupByLibrary.simpleMessage("Net Profit/Loss"),
        "text_194": MessageLookupByLibrary.simpleMessage("Order Status"),
        "text_195": MessageLookupByLibrary.simpleMessage("Operation"),
        "text_196":
            MessageLookupByLibrary.simpleMessage("Force Close Position"),
        "text_197": MessageLookupByLibrary.simpleMessage(
            "Is it OK to force close a position"),
        "text_198": MessageLookupByLibrary.simpleMessage(
            "You are not logged in, please log in first!"),
        "text_199": MessageLookupByLibrary.simpleMessage(
            "The current currency price is 0"),
        "text_2": MessageLookupByLibrary.simpleMessage("首页"),
        "text_20": MessageLookupByLibrary.simpleMessage("年龄"),
        "text_200":
            MessageLookupByLibrary.simpleMessage("Time to close position"),
        "text_201": MessageLookupByLibrary.simpleMessage("Opening price"),
        "text_202":
            MessageLookupByLibrary.simpleMessage("Position opening time"),
        "text_203": MessageLookupByLibrary.simpleMessage("Close price"),
        "text_204": MessageLookupByLibrary.simpleMessage("24h High"),
        "text_205": MessageLookupByLibrary.simpleMessage("24h Low"),
        "text_206": MessageLookupByLibrary.simpleMessage("Latest transaction"),
        "text_207": MessageLookupByLibrary.simpleMessage(
            "Password must be a combination of letters + numbers"),
        "text_208": MessageLookupByLibrary.simpleMessage(
            "Password length must not be less than 8 digits"),
        "text_209":
            MessageLookupByLibrary.simpleMessage("Operation successful"),
        "text_21": MessageLookupByLibrary.simpleMessage("身高"),
        "text_210":
            MessageLookupByLibrary.simpleMessage("Notes on fund exchange"),
        "text_211": MessageLookupByLibrary.simpleMessage(
            "Please note that funds exchange is affected by market depth and quotation, the price will change at any time, please refer to the final amount after order confirmation. \n"),
        "text_212": MessageLookupByLibrary.simpleMessage(
            "According to the requirements of the wind control system, if the funds exchange triggers the third party wind control, the exchange user needs to cooperate with the auditor to improve the relevant audit, and the order will be refunded for you in at least one month (within 30 days)."),
        "text_213": MessageLookupByLibrary.simpleMessage(
            "Please ensure that the exchange of funds is personal and confirm that you do not use the digital currency to participate in any pyramid scheme, illegal fund raising, fraud and other illegal activities, please be wary of all illegal projects that promise high interest reporting, beware of being duped and avoid unnecessary losses."),
        "text_214": MessageLookupByLibrary.simpleMessage(
            "In order to protect the safety of funds, when your account security policy changes, password changes, we will carry out manual review of the withdrawal of coins, please wait patiently for the staff email contact."),
        "text_215": MessageLookupByLibrary.simpleMessage(
            "Please make sure your computer and browser are safe to prevent information from being tampered with and leaked."),
        "text_216": MessageLookupByLibrary.simpleMessage(
            "After you top up to the above address, you need the confirmation of the whole network node. 12 times of network confirmation will arrive, and you can withdraw coins after 12 times of network confirmation."),
        "text_217": MessageLookupByLibrary.simpleMessage(
            "Please do not top up any non-ERC20_USDT assets to the above address, otherwise the assets will not be recoverable."),
        "text_218": MessageLookupByLibrary.simpleMessage(
            "Minimum top-up amount: 300 USDT, top-ups smaller than the minimum amount will not be credited and cannot be returned."),
        "text_219": MessageLookupByLibrary.simpleMessage(
            "Your recharge address will not change often and you can recharge repeatedly; if there are any changes, we will try to notify you via web station announcement or email. \n"),
        "text_22": MessageLookupByLibrary.simpleMessage("请输入昵称"),
        "text_220": MessageLookupByLibrary.simpleMessage(
            "Please make sure your computer and browser are secure to prevent information from being tampered with or leaked."),
        "text_221": MessageLookupByLibrary.simpleMessage("I want to top up"),
        "text_222": MessageLookupByLibrary.simpleMessage("Contract Market"),
        "text_223": MessageLookupByLibrary.simpleMessage("24H up or down"),
        "text_224": MessageLookupByLibrary.simpleMessage("Latest Price"),
        "text_225": MessageLookupByLibrary.simpleMessage("Currency"),
        "text_226": MessageLookupByLibrary.simpleMessage("Login"),
        "text_227":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account yet?"),
        "text_228": MessageLookupByLibrary.simpleMessage(
            "Please enter your login password"),
        "text_229": MessageLookupByLibrary.simpleMessage(
            "Please enter your login email"),
        "text_230": MessageLookupByLibrary.simpleMessage("Incorrect format"),
        "text_231": MessageLookupByLibrary.simpleMessage("Email login"),
        "text_232": MessageLookupByLibrary.simpleMessage(
            "Please enter your registration password"),
        "text_233": MessageLookupByLibrary.simpleMessage(
            "Please enter your registered email address"),
        "text_234": MessageLookupByLibrary.simpleMessage("Send"),
        "text_235": MessageLookupByLibrary.simpleMessage("Next"),
        "text_236": MessageLookupByLibrary.simpleMessage("Language switch"),
        "text_237": MessageLookupByLibrary.simpleMessage("Contact Us"),
        "text_238":
            MessageLookupByLibrary.simpleMessage("Log out of your account"),
        "text_239": MessageLookupByLibrary.simpleMessage("Assets"),
        "text_240": MessageLookupByLibrary.simpleMessage("Available Balance"),
        "text_241": MessageLookupByLibrary.simpleMessage("Total Margin"),
        "text_242": MessageLookupByLibrary.simpleMessage("Turnover"),
        "text_243": MessageLookupByLibrary.simpleMessage("Open Position Price"),
        "text_244": MessageLookupByLibrary.simpleMessage("Floating P&L"),
        "text_245": MessageLookupByLibrary.simpleMessage("Close Position"),
        "text_246": MessageLookupByLibrary.simpleMessage("Uncertified"),
        "text_247":
            MessageLookupByLibrary.simpleMessage("Primary Authentication"),
        "text_248":
            MessageLookupByLibrary.simpleMessage("Advanced Authentication"),
        "text_249": MessageLookupByLibrary.simpleMessage(
            "To enhance your account security, please complete the following information."),
        "text_250": MessageLookupByLibrary.simpleMessage("Photo ID front"),
        "text_251": MessageLookupByLibrary.simpleMessage("ID Photo Reverse"),
        "text_252": MessageLookupByLibrary.simpleMessage(
            "Confirm new transaction password"),
        "text_253": MessageLookupByLibrary.simpleMessage(
            "Please set a new transaction password"),
        "text_254": MessageLookupByLibrary.simpleMessage(
            "Please enter the original password"),
        "text_255": MessageLookupByLibrary.simpleMessage("New password"),
        "text_256": MessageLookupByLibrary.simpleMessage("Original password"),
        "text_257":
            MessageLookupByLibrary.simpleMessage("Change funds password"),
        "text_258": MessageLookupByLibrary.simpleMessage(
            "Please enter the verification code"),
        "text_259": MessageLookupByLibrary.simpleMessage("Verification Code"),
        "text_260": MessageLookupByLibrary.simpleMessage(
            "Please enter your email address"),
        "text_261":
            MessageLookupByLibrary.simpleMessage("Invitation Code (optional)"),
        "text_262": MessageLookupByLibrary.simpleMessage(
            "Please fill in the invitation code"),
        "text_263": MessageLookupByLibrary.simpleMessage("Confirm"),
        "text_264":
            MessageLookupByLibrary.simpleMessage("Please enter a new password"),
        "text_265": MessageLookupByLibrary.simpleMessage(
            "Please enter your confirmation password"),
        "text_266":
            MessageLookupByLibrary.simpleMessage("Change Login Password"),
        "text_267":
            MessageLookupByLibrary.simpleMessage("Top up to the account"),
        "text_268": MessageLookupByLibrary.simpleMessage("Withdrawal unlocked"),
        "text_269":
            MessageLookupByLibrary.simpleMessage("Minimum top-up amount"),
        "text_27": MessageLookupByLibrary.simpleMessage("请选择"),
        "text_270": MessageLookupByLibrary.simpleMessage(
            "Top-up block confirmation number"),
        "text_271": MessageLookupByLibrary.simpleMessage("Recharge address"),
        "text_272": MessageLookupByLibrary.simpleMessage("CoinCharge Network"),
        "text_273": MessageLookupByLibrary.simpleMessage("Coin Charging"),
        "text_274": MessageLookupByLibrary.simpleMessage("withdraw coins"),
        "text_275": MessageLookupByLibrary.simpleMessage("Actual Arrival"),
        "text_276": MessageLookupByLibrary.simpleMessage("Coin Account"),
        "text_277": MessageLookupByLibrary.simpleMessage("Transfer"),
        "text_278":
            MessageLookupByLibrary.simpleMessage("Number of coins withdrawn"),
        "text_279": m7,
        "text_28": MessageLookupByLibrary.simpleMessage("保存"),
        "text_280": MessageLookupByLibrary.simpleMessage("Withdrawal address"),
        "text_281":
            MessageLookupByLibrary.simpleMessage("Withdrawal Instructions"),
        "text_282":
            MessageLookupByLibrary.simpleMessage("Number of withdrawals"),
        "text_283": m8,
        "text_284": MessageLookupByLibrary.simpleMessage("Address Book"),
        "text_285": MessageLookupByLibrary.simpleMessage(
            "More than 8 characters, at least letters + numbers, no spaces"),
        "text_286":
            MessageLookupByLibrary.simpleMessage("Password inconsistency"),
        "text_287": MessageLookupByLibrary.simpleMessage("Go to login"),
        "text_288": MessageLookupByLibrary.simpleMessage("Not set"),
        "text_289":
            MessageLookupByLibrary.simpleMessage("Modified successfully"),
        "text_29": MessageLookupByLibrary.simpleMessage("隐私设置"),
        "text_290": MessageLookupByLibrary.simpleMessage("Album"),
        "text_291": MessageLookupByLibrary.simpleMessage("Take a picture"),
        "text_292":
            MessageLookupByLibrary.simpleMessage("Please enter your ID number"),
        "text_293": MessageLookupByLibrary.simpleMessage(
            "The most people traded in the last hour"),
        "text_294": MessageLookupByLibrary.simpleMessage("Heat value"),
        "text_295":
            MessageLookupByLibrary.simpleMessage("Please select a currency"),
        "text_296": MessageLookupByLibrary.simpleMessage(
            "Please enter the withdrawal address"),
        "text_297": m9,
        "text_298": m10,
        "text_299":
            MessageLookupByLibrary.simpleMessage("Coin withdrawal successful"),
        "text_3": MessageLookupByLibrary.simpleMessage("广场"),
        "text_30": MessageLookupByLibrary.simpleMessage(
            "是否授权软件屏蔽手机通讯录里的用户?屏蔽后他们将看不到自己的信息。"),
        "text_300": MessageLookupByLibrary.simpleMessage(
            "Cannot be less than the minimum number of coin withdrawals"),
        "text_301": MessageLookupByLibrary.simpleMessage("Use"),
        "text_302": MessageLookupByLibrary.simpleMessage("Redeem to"),
        "text_303": m11,
        "text_304": MessageLookupByLibrary.simpleMessage("exchange_rate"),
        "text_305":
            MessageLookupByLibrary.simpleMessage("Please enter the quantity"),
        "text_306": MessageLookupByLibrary.simpleMessage("Transfer Quantity"),
        "text_307": MessageLookupByLibrary.simpleMessage("From"),
        "text_308": MessageLookupByLibrary.simpleMessage("to"),
        "text_309": MessageLookupByLibrary.simpleMessage("Contract Account"),
        "text_31": MessageLookupByLibrary.simpleMessage("暂不屏蔽"),
        "text_310": MessageLookupByLibrary.simpleMessage("Account Balance"),
        "text_311": MessageLookupByLibrary.simpleMessage("Address"),
        "text_312":
            MessageLookupByLibrary.simpleMessage("Redemption successful"),
        "text_313": MessageLookupByLibrary.simpleMessage("Transfer successful"),
        "text_314": MessageLookupByLibrary.simpleMessage("Status"),
        "text_315": MessageLookupByLibrary.simpleMessage("Top-up Network"),
        "text_316": MessageLookupByLibrary.simpleMessage("Top-up address"),
        "text_317": MessageLookupByLibrary.simpleMessage("Recharge success"),
        "text_318": MessageLookupByLibrary.simpleMessage("Top-up failed"),
        "text_319": MessageLookupByLibrary.simpleMessage("Redemption Record"),
        "text_32": MessageLookupByLibrary.simpleMessage("立马屏蔽"),
        "text_320": MessageLookupByLibrary.simpleMessage("Transfer Record"),
        "text_321": MessageLookupByLibrary.simpleMessage("Top-up record"),
        "text_322": MessageLookupByLibrary.simpleMessage("Withdrawal Record"),
        "text_323": MessageLookupByLibrary.simpleMessage("Total Assets"),
        "text_324": MessageLookupByLibrary.simpleMessage("Available"),
        "text_325": MessageLookupByLibrary.simpleMessage("USDT Valuation"),
        "text_326": MessageLookupByLibrary.simpleMessage("Historical Orders"),
        "text_327": MessageLookupByLibrary.simpleMessage("Quantity Used"),
        "text_328": MessageLookupByLibrary.simpleMessage("Exchange Quantity"),
        "text_329": MessageLookupByLibrary.simpleMessage("Coins used"),
        "text_33": MessageLookupByLibrary.simpleMessage("同城"),
        "text_330": MessageLookupByLibrary.simpleMessage("Redeem Coins"),
        "text_331": MessageLookupByLibrary.simpleMessage("Miner Fee"),
        "text_332": MessageLookupByLibrary.simpleMessage("Transfer successful"),
        "text_333": MessageLookupByLibrary.simpleMessage("Transfer failed"),
        "text_334": MessageLookupByLibrary.simpleMessage("Order Details"),
        "text_335": MessageLookupByLibrary.simpleMessage("Number of orders"),
        "text_336": MessageLookupByLibrary.simpleMessage("Storage Fee"),
        "text_337": MessageLookupByLibrary.simpleMessage("Auto Stop Out Close"),
        "text_338":
            MessageLookupByLibrary.simpleMessage("Auto Stop Loss Close"),
        "text_339":
            MessageLookupByLibrary.simpleMessage("Manual Take Profit Close"),
        "text_34": MessageLookupByLibrary.simpleMessage("附近"),
        "text_340":
            MessageLookupByLibrary.simpleMessage("Manual Stop Loss Close"),
        "text_341": MessageLookupByLibrary.simpleMessage(
            "Please select the price at which to open a position"),
        "text_342": MessageLookupByLibrary.simpleMessage(
            "Please enter the number of valid open positions"),
        "text_343":
            MessageLookupByLibrary.simpleMessage("Order placed successfully"),
        "text_344":
            MessageLookupByLibrary.simpleMessage("No data available yet"),
        "text_345":
            MessageLookupByLibrary.simpleMessage("Set transaction password"),
        "text_346": MessageLookupByLibrary.simpleMessage("Copy successful"),
        "text_347":
            MessageLookupByLibrary.simpleMessage("Confirm account exit?"),
        "text_348": MessageLookupByLibrary.simpleMessage("Upload successful"),
        "text_349": MessageLookupByLibrary.simpleMessage(
            "Upload failed, please try again"),
        "text_35": MessageLookupByLibrary.simpleMessage("搭讪"),
        "text_350":
            MessageLookupByLibrary.simpleMessage("Submitted successfully"),
        "text_351": MessageLookupByLibrary.simpleMessage("Details"),
        "text_352": MessageLookupByLibrary.simpleMessage("Profit and Loss"),
        "text_353":
            MessageLookupByLibrary.simpleMessage("Close Position Successfully"),
        "text_354":
            MessageLookupByLibrary.simpleMessage("Terms of Service Content"),
        "text_355": MessageLookupByLibrary.simpleMessage(
            "Please check the \"UserAgreement\" and \"PrivacyPolicy\""),
        "text_356": MessageLookupByLibrary.simpleMessage("New Login Password"),
        "text_357":
            MessageLookupByLibrary.simpleMessage("Confirm new login password"),
        "text_358": MessageLookupByLibrary.simpleMessage(
            "Please set a new login password"),
        "text_359": MessageLookupByLibrary.simpleMessage(
            "Click back again to exit the program"),
        "text_36": m12,
        "text_360":
            MessageLookupByLibrary.simpleMessage("Please enter your last name"),
        "text_361": MessageLookupByLibrary.simpleMessage("Please enter a name"),
        "text_362": MessageLookupByLibrary.simpleMessage(
            "Sending verification code successfully"),
        "text_363":
            MessageLookupByLibrary.simpleMessage("Original login password"),
        "text_364":
            MessageLookupByLibrary.simpleMessage("withdraw coin network"),
        "text_365": MessageLookupByLibrary.simpleMessage("Reviewing"),
        "text_366":
            MessageLookupByLibrary.simpleMessage("Withdrawal completed"),
        "text_367": MessageLookupByLibrary.simpleMessage("Withdrawal failed"),
        "text_368": MessageLookupByLibrary.simpleMessage(
            "Please perform primary authentication"),
        "text_369": MessageLookupByLibrary.simpleMessage(
            "Primary certification audit is in progress, please wait for the completion of the audit"),
        "text_37": MessageLookupByLibrary.simpleMessage("拍摄"),
        "text_370": MessageLookupByLibrary.simpleMessage("Go to certification"),
        "text_371": MessageLookupByLibrary.simpleMessage(
            "Please enter your payment password"),
        "text_372": MessageLookupByLibrary.simpleMessage(
            "Please perform advanced authentication"),
        "text_373": MessageLookupByLibrary.simpleMessage(
            "Advanced authentication is under review, please wait for the completion of the review"),
        "text_374": MessageLookupByLibrary.simpleMessage(
            "Please perform advanced authentication"),
        "text_375": MessageLookupByLibrary.simpleMessage(
            "No password has been set for the funds"),
        "text_376": MessageLookupByLibrary.simpleMessage("Go to Settings"),
        "text_377": MessageLookupByLibrary.simpleMessage("Not verified"),
        "text_378": MessageLookupByLibrary.simpleMessage("Verified"),
        "text_379": MessageLookupByLibrary.simpleMessage("Verifying"),
        "text_38": MessageLookupByLibrary.simpleMessage("从手机相册选择"),
        "text_380": MessageLookupByLibrary.simpleMessage("Data"),
        "text_381": MessageLookupByLibrary.simpleMessage("Market Sentiment"),
        "text_382":
            MessageLookupByLibrary.simpleMessage("BTC Leverage Long/Short"),
        "text_383":
            MessageLookupByLibrary.simpleMessage("BTC Contract Long/Short"),
        "text_384": MessageLookupByLibrary.simpleMessage("USDT OTC Premium"),
        "text_385": m13,
        "text_386": m14,
        "text_387": MessageLookupByLibrary.simpleMessage(
            "BTC Contract Basis Difference"),
        "text_388": MessageLookupByLibrary.simpleMessage("Current Week"),
        "text_389": MessageLookupByLibrary.simpleMessage("current_quarter"),
        "text_39": MessageLookupByLibrary.simpleMessage("取消"),
        "text_390": MessageLookupByLibrary.simpleMessage("perpetual"),
        "text_391": MessageLookupByLibrary.simpleMessage("Quote Trend"),
        "text_392":
            MessageLookupByLibrary.simpleMessage("BTC Spot Trading Volume"),
        "text_393":
            MessageLookupByLibrary.simpleMessage("BTC Contract Positions"),
        "text_394": MessageLookupByLibrary.simpleMessage("BTC Contract Volume"),
        "text_395": MessageLookupByLibrary.simpleMessage(
            "AML Agreement Signature Photos"),
        "text_396": MessageLookupByLibrary.simpleMessage("Handheld photo ID"),
        "text_397":
            MessageLookupByLibrary.simpleMessage("Error entering value"),
        "text_398": MessageLookupByLibrary.simpleMessage("Downloading"),
        "text_399": MessageLookupByLibrary.simpleMessage(
            "The download is complete, please go to the album to view"),
        "text_4": MessageLookupByLibrary.simpleMessage("聊天"),
        "text_40": MessageLookupByLibrary.simpleMessage("完成"),
        "text_400": MessageLookupByLibrary.simpleMessage("Privacy Policy"),
        "text_401": MessageLookupByLibrary.simpleMessage(
            "1. Introduction\n\nThank you for visiting MEXC Com (\"MEXC\" or \"this website\").\n\nAccess or use MEXC COM and related application interfaces or mobile applications mean that you agree with the policies and practices of our Privacy Policy (\"privacy policy\"), so please read this article carefully.\n\nThis Privacy Policy explains what data we collect, how we use and store such data, and how we share such data. If you do not wish to use your personal data (as defined below) in the manner described in this privacy policy, you shall not use this website or any services, software, APIs (application program interfaces), technologies, products and / or functions provided by this website (\"services\").\n\n2. Definitions\n\nDigital assets\n\n\"Digital assets\" means digital assets (also known as \"virtual financial assets\", \"convertible virtual currency\", \"cryptocurrency\", \"virtual currency\", \"digital currency\" or \"digital goods\"), such as bitcoin or Ethereum, which are based on the cryptographic protocol of computer network, which can be (I) centralized or decentralized, (II) closed or open source, And (III) as a medium of exchange and / or a store of value.\n\nPersonal data\n\n\"Personal data\" refers to any information that enables you to identify directly or indirectly, either alone or in combination with other data, such as your name, e-mail address, user name, contact information, identification number, location data, online identifier (such as IP address and device ID, or one or more factors specific to your physical, economic, cultural or social identity).  \n\n3. Personal data we collect\n\nThe personal data collected, processed and stored by MEXC is obtained through your use of our services or has obtained your consent. These personal data may include contact information, a copy of the identity information you provide, or the source of the publicly accessible database, the ID number issued by your government department, or any information related to your device or Internet service, such as the IP address and MAC number.  \n\nIn addition, we may conduct business and collect personal data with individuals and entities located in the European Economic Area (\"EEA\"), and we collect, store and process personal information in accordance with the general data protection regulations (\"gdpr\") and the data protection act. To learn more about how we protect data collected from individuals and entities in the European economic area, see the details below.  \n\nWe collect the information you provide in the MEXC registration process, which may come from the completed, incomplete or abandoned registration process. We also collect personal data when you communicate with us through customer support, subscribe to marketing information, or contact us through telephone, e-mail or other communication channels. We collect, use, store and transmit your personal data, which may include the following:\n\n  email address\n\n  full legal name (including former name and local language name)\n \nnationality\n\n(SSN), passport number or any ID number issued by the government.\n\n  date of birth\n\n  identification (e.g. passport, driver\'s license or government issued identification)\n\n  additional personal data or documents required at the discretion of our compliance team\n\n4. Data collection and transmission outside the European Economic Area\n\nAs mentioned above, we may collect personal data from customers located in the European economic area. In order to facilitate our services to customers in the European economic area, we require customers to provide clear consent to the transfer of personal data from the European economic area to outside the region. If you are an individual located in the European economic area and you refuse to agree to such terms, you will no longer be able to use our services. You will be able to withdraw your digital assets and legal tender; However, all other functions will be disabled.  \n\n5. How do we use your personal data\n\nMEXC Com uses personal data to manage, deliver, improve and provide personalized services for you. MEXC Com may also generate general data from any personal data we collect for our own use. We may also use these data with you on the bit chain MEXC COM and / or other products or services provided by its partners. We will not share your personal data with third parties (except partners related to MEXC.com service) unless you have obtained your consent or unless it is shown below.\n\nWe may share your personal data with third parties,\n\n(a) If we think it necessary to share to implement the terms of service;\n\n(b) To comply with the requirements of government agencies, including regulators, law enforcement and / or the judiciary;\n\n(c) In this way, the third party provides services (such as administrative or technical services) to MEXC.com;\n\n(d) Such third parties are related to the sale or transfer of our business or any part thereof.\n\n\n\nIn addition, we have adopted international standards to prevent money laundering, terrorist financing, circumvention of trade and economic sanctions. When the final digital asset rules and regulations come into force, we will implement them, which requires us to conduct due diligence on our customers. This may include the use of third-party data and service providers to cross compare your personal information with their data.\n\n6. How do we store your personal data\n\nThe data we collect from you may be transferred or stored to destinations outside Seychelles. These data may also be processed by staff outside Seychelles who work for us or for our suppliers. Your submission of your personal data means that you agree to our transfer, storage or processing of data, but as mentioned above, located in the EEA Except for customers.\n\n7. Access, correct and delete your personal data\n\nYou have the right to obtain a copy of your personal data upon request and to determine whether the information we have about you is accurate and up-to-date. If any of your personal data is inaccurate, you can ask to update your information. You can also request the deletion of your personal data, but we may refuse your deletion request in some cases, such as for legal requirements or other legal purposes. For data access, correction or deletion requests, please contact Personal Center email And attach the topic \"data query\".  \n\nIn response to data access, correction or deletion requests, we will verify the identity of the requesting party to ensure that he / she has the legal right to make such requests. Although our goal is to respond to these requests free of charge, we reserve the right to charge you a reasonable fee if your request is repeated or heavy.  \n\n8. Marketing\n\nFrom time to time, we will share with you company news, promotion information and information about products and services provided by MEXC. We may share personal data with third parties to help us carry out marketing and promotion projects or send marketing messages. By using MEXC, you accept this Privacy Policy and agree to accept such marketing communications.\n\nCustomers can opt out of these marketing communications at any time. If you do not want to receive these communications, please Personal Center email 。  \n\nYou will not be able to choose not to receive important information related to the product, such as policy / term updates and operational notices.\n\n9. Use of cookie\n\nWhen you visit MEXC, we may place a small amount of data to be saved by your browser (cookies) according to industry practice. This information will be placed on your computer or other devices used to access MEXC. This information helps us identify you and collect information about your use of MEXC, so as to better customize our services and improve your experience. We may also use the information collected to ensure compliance with the Bank Secrecy Act (\"BSA\") and the anti money laundering (\"AML\") program (\"BSA / AML program\") and to ensure that the security of your account is not affected by detecting irregular or suspicious account activities.  \n\nMost browsers are set to automatically accept cookies. When you finish browsing or page operation, some cookies will expire, and other cookies will remain on your computer or other devices until they are deleted or expired. You can choose to refuse to use our cookies, but this may affect the function of MEXC service or your user experience.  \n\n10. Information security\n\nWe are committed to protecting MEXC and you from unauthorized access, change, disclosure or destruction of personal data we collect and store. We take various measures to ensure information security, including using SSL to encrypt MEXC communication; All sessions need two factor authentication; Regularly review our personal data collection, storage and processing processes; And restrict the access rights of our employees and suppliers to your data according to the necessary principles, and our employees and suppliers must abide by the strict contractual confidentiality obligations.\n\n11. Contact MEXC about MEXC privacy issues or concerns\n\nIf you have any questions about this privacy policy or the use of your personal data, please send an Personal Center email Contact us (titled \"privacy request\").\n\nFor EEA customers, you have the right to require unresolved issues regarding the collection, use or disclosure of your personal data to comply with the requirements of the applicable regulatory authorities in your jurisdiction.  \n\n12. Modification of privacy policy\n\nWe may update this privacy policy at any time by publishing a revised version (including the effective date of the revised version) on this website, so please check frequently for any updates and changes.\n\n13. Language used\n\nThis privacy policy may be published in different languages. In case of any discrepancy, the English version shall prevail."),
        "text_402": MessageLookupByLibrary.simpleMessage(
            "Thank you for visiting MEXC Com (hereinafter referred to as \"MEXC\" or \"we\"). By browsing, accessing, or using MEXC COM and related mobile applications (collectively referred to as \"this website\"), you (\"user\" or \"you\") agree to the terms of service (these \"terms\"), so please read them carefully.\n\nThis clause constitutes a unanimous agreement and understanding on the use of any or all services and any way of obtaining services between you and the following service providers (\"we\"):\n\nBy clicking the \"create account\" button or accessing this website, we will provide you with access to and use of our trading platform through software, API (application interface), technology, products and / or functions. The services we provide through this website (\"services\") include:\n\nMEXC provides services – through (1) decentralized trading platform (2) virtual contract trading.\n\nAs described in this clause, you agree to be legally bound by these clauses and all clauses incorporated by reference. If you do not agree to be bound by these terms, please do not access or use this service.  \n\nWe have the right to change or modify the terms and conditions contained in these terms at any time, including but not limited to any policies or guidelines on the platform. We will provide notice of these changes by issuing the revised terms and changing the \"last update\" date at the top of the terms, or by sending an e-mail to the e-mail address provided by the user, or by any other means at our sole discretion. Any change or modification will take effect immediately when the revised version is published on this website or when we convey the modification information. These changes will be immediately applied to all current and subsequent uses or services.  \n\nYou waive any right to receive special notice of these changes or modifications. Your continued use of the platform will be deemed as your consent to these changes or modifications. If you do not agree with the current terms when accessing or using this platform, you must stop using our services. We recommend that you review the terms frequently to ensure that you understand the terms and conditions applicable to your access to and use of the services. If you have any questions about the use of this website, please contact Personal Center email 。\n\nThese terms and any terms expressly incorporated herein apply to your access to and use of any services provided by MEXC. These terms do not in any way change the terms or conditions of any other agreement you have entered into with MEXC\'s products, services or otherwise. If you use the service on behalf of any entity, you represent and warrant that (1) the organization is a legally established and effectively existing entity in accordance with local laws and regulations, and (2) you have the right to accept these terms on behalf of the entity. If you violate these terms, the entity agrees to be responsible to us for your actions.  \n\nYou should read this clause and any related documents very carefully. If you do not understand this clause and any documents involved herein, you should discuss with us and seek necessary explanations.  \n\nUnless otherwise specified, any formal communication with you will be in the form of e-mail. The document will be sent to you by email, and you should seek to send the document to us in the same way. You can also contact us by telephone.\n\nUnless otherwise agreed, any communication with you will be in English. If there is any discrepancy between the English version of this clause and any relevant English communication and any translation of this clause or any other language (as applicable), the English version shall prevail.\n\n1. Scope of application\nThis service is only applicable to users aged 18 or above. By accessing or using our services, you represent and ensure that you are at least 18 years old and have not been deprived of the right to apply this service. You also guarantee that you are not included in any trade or economic sanctions list, such as the sanctions list of the United Nations Security Council, nor are you restricted or prohibited from participating in any relevant type of transactions by the European Union, the Hong Kong Monetary Authority, Hong Kong customs, the overseas assets control office of the U.S. Department of Finance and other administrative law enforcement agencies.  \n\nIn addition, we will not provide this service in all countries or regions, and provide some or no services to users in specific restricted areas, including Cuba, Iran, Crimea, Sudan, Syria, Canada (limited to Ontario and Quebec), Bangladesh, Bolivia, Ecuador, Kyrgyzstan and Malta. The contents of these terms shall not be excluded by the laws of the user\'s country or region. Therefore, if you do not meet these requirements, do not use our services.\n\n2. Our services\n\nWe provide an online trading platform for trading VFA (or also known as virtual financial assets, encrypted tokens, digital tokens and encrypted currencies), as well as derivative services related to virtual financial assets or their indexes. The buyer and the seller conduct transactions on our platform; MEXC, as a platform provider, is neither a buyer nor a seller in these transactions. Users can request to withdraw their virtual financial assets, subject to the restrictions of this clause.\n\nMEXC provides users with the following transaction services:\n\n1) An order matching platform can automatically match users\' transactions with other users\' open orders for virtual financial assets or products related to virtual financial assets according to preset standards:\n\n you can use one type of virtual financial assets to trade spot services of another type of virtual financial assets. You will not be able to pre-determine or trade with pre-determined users. Similarly, an order may be partially completed or completed by multiple matching orders from different users.\n\n additional services that allow you to trade derivatives of virtual financial assets or indexes composed of them. These transactions are carried out through a platform that automatically matches user transactions about virtual financial assets and virtual financial asset related products with open orders of other users according to established standards. You will not be able to pre-determine or trade with pre-determined users.\n\n2) Digital wallet - MEXC provides users with a digital wallet that allows each user to store virtual financial assets traded through the trading platform service or C2C platform. The digital assets deposited or obtained by users through MEXC order matching platform or C2C platform will be saved by MEXC in the digital wallet maintained by MEXC on your behalf. MEXC provides this service to accelerate and facilitate the acquisition and / or disposal of virtual financial assets. MEXC will be deemed to keep the virtual financial asset in your name and should recognize that you are the beneficial owner of any virtual financial asset in your digital wallet. MEXC will not use your virtual financial assets as securities or use your virtual financial assets in any way unless it has received your legal instructions and prior authorization. The virtual financial assets kept by MEXC on behalf of you may be stored together with the assets of other users.\n\nBy agreeing to these terms, you clearly agree that your virtual financial assets are stored together with other users\' virtual financial assets. The rights and interests of individual users will not be identifiable due to a separate certificate of title or other electronic records. In the case of inevitable losses, you may not receive all your profits and may share the losses proportionally. You declare and guarantee that you will always remain the ultimate effective legal beneficial owner of any virtual financial assets held by MEXC, and you will not act as a nominee or trustee of any other person, and will not transfer, transfer, mortgage Charge or create any security interest or encumbrance on the relevant virtual financial assets in any other way.  \n\nMEXC, where applicable, has no obligation to accept orders unless there are sufficient virtual financial assets in the account to (1) complete the delivery of relevant orders, (2) provide the margin that may be required for relevant transactions involving derivatives, and (3) pay any relevant applicable charges and expenses.  \n\nAccuracy of the website: we have made every effort to ensure the accuracy of the information on the website. The information and content on the website are subject to change without notice, and only to assist users to make independent decisions. We have taken reasonable measures to ensure the accuracy of website information; However, we do not guarantee the accuracy, applicability, reliability, integrity, performance and / or appropriateness of any service or product content provided by this website, and shall not be liable for any direct or indirect loss or damage, delay or failure of information transmission and your inability to access the website. We assume no responsibility for the use or interpretation of such information.  \n\nUsers must prepare the following equipment and bear the following expenses: (1) Internet access equipment, including but not limited to computers or other Internet access terminals, modems and other Internet access devices; (2) Internet access expenses, including but not limited to network access fees, Internet equipment rental fees, mobile phone traffic fees, etc.  \n\nYou agree to accept all kinds of information services provided by us while accepting various services of www. You hereby authorize us to send business information to you by email, mobile phone, mailing address, etc. You can choose not to accept various information services by making relevant settings on the website.  \n\nYou understand and agree that the services we provide are provided according to the existing technology and conditions. Although we have tried our best to ensure the continuity and security of the service, we cannot fully foresee and prevent the possible service interruption caused by legal, technical and other risks, including but not limited to force majeure, viruses, Trojans, hacker attacks, system instability, third-party service defects, government actions, etc Data loss and other losses and risks.  \n\nIf the system platform fails to operate normally due to the following conditions, so that the user cannot use various services or cannot place or cancel orders normally, we will not be liable for damages, including but not limited to:\n\nsystem shutdown and maintenance period announced by MEXC platform;\n\n telecommunication or network equipment problems;\n\n typhoon, earthquake, tsunami, flood, power failure, war, terrorist attack and other force majeure factors;\n\n any other problems, including hacker attacks, computer virus intrusion or attack, technical adjustment or failure of the telecommunications department, website upgrade, banking problems, government regulations or orders, or problems caused by any other third party;\n\n losses caused by third parties to users or other third parties.\n\nWe have the right to cancel the abnormal transaction results according to the actual situation due to abnormal transactions, market interruption and other possible abnormal conditions that may be caused by unexpected factors such as system failure, network failure, distributed denial of service attack (DDoS) and other hacker attacks. For virtual contract transactions, C2C} and margin loans, we have the right to roll back all transactions for a certain period of time as described in each user agreement.\n\nWe will not ask the user for any password and will not allow the user to transfer or make money to any account, virtual financial asset or virtual financial asset address not provided in the trading center of this website. This website is not responsible for losses caused by transfer or payment to accounts, virtual financial assets or virtual financial asset addresses provided by non trading platforms.\n\nTransaction exception handling: when using this service, you agree and agree that this service may not be provided due to the connection problem of digital currency network or other irresistible factors. The user shall ensure that the information you input is correct. If the website fails to timely inform the user of the follow-up processing methods of relevant transactions in case of the above abnormal conditions due to data errors, the website will not bear any liability for damages.\n\nWe have the right to know the real transaction background and purpose of users using our products or services. Users should truthfully provide the comprehensive and accurate information we require. If we have reasonable reasons to suspect that the user provides false transaction information, we have the right to temporarily or permanently restrict part or all of the functions of the product or service used by the user.  \n\n3. Risks of trading digital assets\n\nVirtual financial asset transactions involve significant risks. The risk of trading or holding virtual digital assets may cause you significant actual losses. Therefore, you should carefully consider whether to trade digital assets or related derivatives and use leverage according to your financial situation.  \n\nWe do not guarantee the orderly and stable trading of virtual financial assets on our platform. You should be cautious in trading virtual financial assets (and any other assets). The price will fluctuate at any time due to any factor. Due to price fluctuations, you may have a large profit or loss. Any virtual financial asset or trading position may fluctuate greatly in value or even become worthless.  \n\nAny loss caused by the user\'s fault shall be borne by the user. The fault includes but is not limited to: failure to operate according to the transaction prompt, failure to carry out the transaction operation in time, forgetting or leaking the password, the password is cracked by others, and the computer used by the user is invaded by others.  \n\nIf the user makes improper profits due to a potential undetected loophole in the website transaction rules, we will contact the user to recover it. You must give practical cooperation, otherwise we will take recourse measures including but not limited to restricting account transactions, freezing account funds, and suing a court with jurisdiction. The recourse expenses incurred to us due to the user\'s failure to cooperate effectively will also be borne by the user.  \n\nAdditional services may have increased risk factors. Please note:\n\n(1) You may lose all the initial margin and any additional virtual financial assets stored on our platform in order to maintain your location;\n\n(2) If the change of the market is not conducive to your position or the improvement of the margin level, you may be temporarily notified to transfer in additional virtual financial assets to maintain your position;\n\n(3) If you fail to deposit additional virtual financial assets into your account as required within the specified time, we can decide to close the position in case of loss.\n\n(4) Your profit or loss will depend on the price fluctuation of the corresponding virtual financial assets, which is not controlled by us.\n\n4. Create an account\n\n4.1 account registration and authentication: in order to use any service of the platform, you must first register your account by providing your name or email, provide your full name and other personal information for authentication, and confirm your acceptance of the terms of service. You agree to provide us with accurate and true information required at the time of registration due to the continuous reasons of identity verification, anti money laundering, anti terrorist financing, fraud, or other financial crime monitoring, including but not limited to the copy of your official identity certificate with photos and proof of address, such as rental contract and property bill. If the relevant information changes, you are obliged to update it as soon as possible.  \n\n4.2 account protection: you agree not to allow anyone to use or manage your account, and update us with any changes to your information, or notify MEXC in time once your account is stolen. You are responsible for retaining, protecting and safeguarding any key, certificate, password, access code, user ID, API key or other credentials and login information (collectively referred to as \"password\") provided to you, or the above password generated by your use of the service. If you lose your password, you may not be able to access your account. You agree to notify us immediately of any unauthorized use of your password. We will not be liable for any liability, loss or damage caused by unauthorized use of your password. You know and agree that if you authorize the password information of your account to any third party or third-party platform, the third party or third-party platform will know your account information (including but not limited to your asset status, transaction information, transaction operation authority and account information), and your account will have certain risks and may suffer losses or damages. You agree to bear any loss or damage caused by any third party or third-party platform authorized by you to use your password information, and any loss or damage caused to you by the third party or third-party platform due to the use of your account password information. We will not bear any compensation or other legal liability for the loss or damage caused by the above circumstances. Since MEXC is an online trading platform, in order to avoid potential security risks, the login password, management password and any other password shall not be set to the same. Relevant responsibilities shall be borne by the user. Once the user registers and becomes a user of the site, the user will obtain the user name (user mailbox) and password, and use the user name and password to be responsible for all activities and events after entering the system, and bear all legal liabilities directly or indirectly caused by the language and behavior using the user name.  \n\n4.3 password recovery: users who lose their password can reset their password after verification through their registered e-mail address or telephone number. If you find any unauthorized operation or security vulnerability, you should report it to MEXC immediately.  \n\n4.4 account balance: if your account shows a credit balance, you can request us to return the remaining virtual financial assets. However, we may choose to withhold (or deduct where applicable) your request to withdraw virtual financial assets in the following cases:\n\n there is a nominal loss in your public derivatives transaction;\n\n due to potential market conditions, we believe that additional virtual financial assets are needed to meet any current or future margin requirements for open derivative positions;\n\n under the provisions of this clause, you have any actual or possible liability to us; And / or\n\n we reasonably decide that there is an unresolved dispute between you and us in combination with this clause.\n\n4.5 account closing: you can close your account at any time. Closing the account will not affect any rights and obligations arising prior to the account closing date. You may be required to cancel or complete all outstanding orders and provide transfer instructions indicating the transfer location of any legal tender and / or digital assets remaining in your account in accordance with the terms of service. You are responsible for any fees, costs or obligations incurred in closing your account (including but not limited to attorney and court fees or transfer fees of legal tender or digital assets). If your account closing fee exceeds the value of your account, you will be responsible for reimbursing us. You may not close any of your accounts in order to avoid paying any other fees or avoiding any inspection related to our anti money laundering program.  \n\n4.6 account suspension and investigation: you agree and understand that MEXC has the right to suspend your account and any account you are the representative or authorized signatory at any time. And you agree that MEXC may freeze / lock the funds and assets in all such accounts and suspend your access to the site until we make a decision if we suspect and decide in our sole discretion that any such account will violate the following provisions:\n\n MEXC terms of service;\n\n any applicable laws or regulations;\n\n MEXC anti money laundering scheme;\n\n request of regulatory authority, court order, valid summons;\n\n the account is related to any pending litigation, investigation or government proceedings;\n\n the balance of the account needs to be adjusted for any reason;\n\n if we believe that an unauthorized person attempts to access your account;\n\n if we believe that you use relevant vouchers or other account information in an unauthorized or inappropriate manner;\n\n the account has not been accessed within one year.\n\nYou agree and acknowledge that, in our sole discretion, we have the right to immediately investigate your account and any related account if we suspect that any such account is in violation of regulations.  \n\n4.7 account termination: you agree and understand that we have the right to terminate any account at any time for any reason. You further agree and specify that we have the right to take any and all necessary and appropriate measures in accordance with this user agreement and / or applicable laws and regulations. If your account is terminated, we will refund your funds less the value of any transaction fee discounts, rebates and / or damages to which we are entitled under this user agreement. If your account is no longer subject to investigation, court order or subpoena, unless otherwise provided by law, you authorize us to return your funds (less any transaction fees, discounts, rebates and / or damages to which we are entitled) to any bank account related to your account. If there is still a balance of digital assets in your account, you agree to provide us with the address of digital assets after receiving a written notice so that we can return the remaining digital assets to you.  \n\n5. User\'s rights and license restrictions\n\nUnder these terms, we grant you a limited, non exclusive, non transferable license to access and use our websites and services only with our permission. You agree that you will not copy, transmit, distribute, sell, license, reverse engineer, modify, publish or participate in the transfer or sale, create derivative works or use any of our source code or similar content, proprietary or confidential data or other similar information in any other way without our prior express written consent.\n\nYou agree that:\n\n all rights, ownership and interests in the service and related software, websites and technologies (including all intellectual property rights therein) shall be reserved by us;\n\n no right or interest in the services shall be transferred except for the limited license granted by this Agreement;\n\n the service is protected by copyright and other intellectual property laws;\n\n we reserve all rights not expressly granted under this clause;\n\nMEXC has the right to question, freeze or deduct the user\'s goods or accounts according to the requirements of any applicable administrative, judicial and military authorities, including but not limited to public security authorities, inspection authorities, courts, customs and tax authorities.  \n\n6. User obligations\n\n6.1 the user shall not register multiple accounts for any purpose.  \n\n6.2 users shall not use the accounts of other users.\n\n6.3 the user shall not use the website or services in any way that causes or may cause damage to the website or damage the usability or accessibility of the website; Or use the website or services in connection with the following acts or activities, that is, any illegal fund payment and settlement activities, including but not limited to illegal payment activities by illegal means such as false transaction, false price and transaction refund; Illegal cash out of unit bank settlement account; Illegal transfer of unit bank settlement account to individual account; Illegal cheque cashing activities; Or any other activity for illegal, fraudulent or harmful purposes; Or any other activities in violation of existing laws and regulations. The user guarantees that MEXC fintech Co. Ltd., its officers, directors, shareholders, interest successors, employees, agents, subsidiaries, affiliates and the previous operators of the website will not bear any claims, claims or other requirements for liability brought by a third party due to the user\'s use of or related to the website or services, Otherwise, the user agrees to compensate the above parties for their losses and expenses (including lawyer\'s fees).\n\n6.4 users are prohibited from using this site to engage in illegal activities in any form. Without the authorization or permission of MEXC, users shall not use the name of this site to engage in any commercial activities, nor use this site as a place, platform or medium for commercial activities in any form.  \n\n6.5 users shall abide by all laws and regulations, and bear corresponding legal consequences and responsibilities for their actions involving the site and services. In addition, the user shall not infringe upon the legitimate rights and interests of any third party. In addition, if bit chain MEXC suffers losses as a result, bit chain MEXC has the right to obtain compensation from the user through legal or other means.  \n\n6.6 if the user violates the above provisions, MEXC has the right to directly take all necessary measures, including but not limited to deleting the content published by the user, canceling the stars and honors obtained by the user on the website, freezing the user\'s digital assets, suspending or sealing up the user\'s account, canceling the benefits obtained due to the violation, and even investigating the user\'s legal responsibility in the form of litigation.  \n\n7. Service fee\n\n7.1 some of the services we provide to users may incur costs. By using our services, you agree to the cost.\n\n7.2 MEXC has the right to set user service fees according to appropriate rules. We also have the right to set and adjust service fees and set specific service fees for users to use our services. All fee changes will be announced in advance.  \n\n7.3 if you do not agree to any fee change. You should stop using this service immediately. You still need to bear the expenses incurred before.\n\n7.4 unless otherwise stated or agreed, the user agrees that we have the right to automatically deduct the above service fees from the assets of the user account without prior notice.  \n\n7.5 if you fail to pay the fees in full or on time, we reserve the right to interrupt, suspend or terminate your account.  \n\n8. Change, interrupt, terminate, restrict, freeze and terminate services\n\n8.1 service change and interruption: we may change the service content and / or interrupt, suspend or terminate the service at any time or without prior notice.\n\n8.2 service interruption and termination: under any of the following circumstances, we have the right to interrupt or terminate the services provided to you at our discretion without notice, including but not limited to the following circumstances:\n\n if the personal information you provide is untrue or inconsistent with the information at the time of registration, and you fail to provide reasonable proof (please remember that you should submit true information according to laws or regulations);\n\n if you violate relevant laws and regulations or the agreement;\n\n if in accordance with any provisions of laws and regulations and the requirements of relevant government departments;\n\n if for safety reasons or other necessary circumstances.\n\n9. Comply with local laws\n\nIt is your personal responsibility to determine whether and to what extent you pay to the relevant tax authorities the income from any transaction through the services, and the corresponding taxes after deducting, collecting, reporting and reducing the correct amount. In addition, you agree to comply with all relevant laws and regulations. In order to prevent terrorist financing and anti money laundering activities, we will cooperate with local authorities. When using our services, you confirm that your behavior is legal and correct, and your virtual financial assets and legal tender do not come from illegal activities. We can control, restrict or empty your account, legal tender and virtual financial assets as appropriate or in coordination with local law enforcement authorities.  \n\n10. Privacy policy\n\nIf you want to know how we collect, use and share your information, please refer to our privacy policy.  \n\n11. Compensation\n\nYou shall indemnify us and our agents (if any), employees, officers, directors, affiliates, subsidiaries and successors to ensure that they do not suffer losses as a result of all third-party claims, except for damages caused by our separate violation of this clause. Similarly, in addition to your separate violation of these terms, we shall also compensate you and your agents, employees, officers, directors, affiliates, subsidiaries and successors to ensure that they do not suffer losses due to all third-party claims.\n\n12. Disclaimer\n\n12.1 network service provider: MEXC, as the third-party platform of \"network service provider\", does not guarantee that the information and services provided by this site can fully meet the needs of users. We are not responsible for the errors, insults, slanders, dereliction of duty, obscenity, pornography or blasphemy that users may encounter in the process of receiving our network services.\n\n12.2 service interruption: Based on the particularity of the Internet, we do not guarantee that the service will not be interrupted; The timeliness and security of the service cannot be guaranteed, and we do not assume any responsibility not caused by MEXC.\n\n12.3 network security: we try to provide users with a safe network environment, but we do not guarantee that the website or its server is free of viruses or other potentially harmful factors; Therefore, users should use industry approved software to check and remove any viruses in the files downloaded from this site.  \n\n12.4 user information: we are not responsible for the failure to save, modify, delete or store the information provided by the user. We will not be responsible for printing errors, negligence, etc. not caused by MEXC\'s intention. We have the right but no obligation to improve or correct any omissions and errors in any part of this site.  \n\n12.5 accuracy, integrity and reliability of the website: unless we expressly agree in writing, we do not guarantee the accuracy, integrity and reliability of any content information, including but not limited to advertising, obtained by users from the website in any way (including but not limited to including, connecting, via or downloading); We are not responsible for any products, services, information or materials purchased or obtained by users due to the content information on this site. The user shall bear the risk caused by using the information content of this site.  \n\n12.6 user comments: the user comments on this site only represent the user\'s personal views. This does not mean that we agree with their views or confirm their description. This site does not assume any legal responsibility caused by any user comments.\n\n12.7 announcement: all announcements sent to users will be delivered through formal page announcement, station letter, e-mail, customer service telephone, mobile phone short message or regular letter. We will not be legally liable for any winning, preferential and other activities or information obtained through other channels.  \n\n12.8 charges, handling charges, transaction and other expenses: we have the right to adjust recharge, handling charges, transaction and other expenses according to market conditions, and have the right to terminate any promotional activities in advance.  \n\n13. Applicable law\n\nThese terms, your use of the services and any claims, counterclaims or disputes of any kind or nature arising directly or indirectly from these terms shall be governed by and construed in accordance with the laws of England and Wales without regard to their conflict of laws rules.\n\n14. Separability, complaints and other provisions\n\n14.1 separability: if any provision of this agreement is deemed illegal, invalid or unenforceable for any reason, such provision shall be deemed separable and shall not affect the legal effect of any other provision.  \n\n14.2 complaints: if you have any complaints, feedback or questions, please contact Personal Center email Contact our customer service. When you contact us, please provide us with your name and email address and any other information we may need to identify you, as well as any feedback, problems or complaints you have.  \n\n14.3 others: these terms stipulate the comprehensive understanding of the subject by both parties and replace all previous relevant understanding and communication. The terms and conditions of any other document inconsistent with, contradictory to or added to the contents specified in this clause will not be binding on us. You represent and warrant that all information related to the terms of service disclosed to us is true, accurate and complete."),
        "text_403":
            MessageLookupByLibrary.simpleMessage("Network request timed out"),
        "text_404": MessageLookupByLibrary.simpleMessage(
            "Trigger take profit and stop loss"),
        "text_405": MessageLookupByLibrary.simpleMessage("Server Error"),
        "text_406": MessageLookupByLibrary.simpleMessage("download failed"),
        "text_41": MessageLookupByLibrary.simpleMessage("收到点赞"),
        "text_42": MessageLookupByLibrary.simpleMessage("收到评论"),
        "text_45": MessageLookupByLibrary.simpleMessage("系统消息"),
        "text_46": MessageLookupByLibrary.simpleMessage("最新"),
        "text_47": MessageLookupByLibrary.simpleMessage("关注"),
        "text_48": MessageLookupByLibrary.simpleMessage("发动态"),
        "text_49": MessageLookupByLibrary.simpleMessage("回复"),
        "text_5": MessageLookupByLibrary.simpleMessage("我的"),
        "text_50": MessageLookupByLibrary.simpleMessage("您还没有收到点赞"),
        "text_51": MessageLookupByLibrary.simpleMessage("您还没有收到评论"),
        "text_52": MessageLookupByLibrary.simpleMessage("暂无系统消息"),
        "text_53": MessageLookupByLibrary.simpleMessage("说点什么吧..."),
        "text_54": MessageLookupByLibrary.simpleMessage("发送"),
        "text_55": MessageLookupByLibrary.simpleMessage("楼主"),
        "text_56": m15,
        "text_57": MessageLookupByLibrary.simpleMessage("举报"),
        "text_58": MessageLookupByLibrary.simpleMessage("举报类型"),
        "text_59": MessageLookupByLibrary.simpleMessage("必填"),
        "text_6": MessageLookupByLibrary.simpleMessage("获取验证码"),
        "text_60": MessageLookupByLibrary.simpleMessage("选填"),
        "text_61": MessageLookupByLibrary.simpleMessage("举报原因"),
        "text_62": MessageLookupByLibrary.simpleMessage("请输入您举报的原因，有利于我们核实"),
        "text_63": MessageLookupByLibrary.simpleMessage("上传图片"),
        "text_64": m16,
        "text_65": MessageLookupByLibrary.simpleMessage("删除"),
        "text_66": MessageLookupByLibrary.simpleMessage("提交"),
        "text_67": MessageLookupByLibrary.simpleMessage("上传"),
        "text_68": MessageLookupByLibrary.simpleMessage("广告及垃圾信息"),
        "text_69": MessageLookupByLibrary.simpleMessage("色情污秽或低俗内容"),
        "text_7": MessageLookupByLibrary.simpleMessage("我已阅读并同意"),
        "text_70": MessageLookupByLibrary.simpleMessage("涉及政治信息或不实言论"),
        "text_71": MessageLookupByLibrary.simpleMessage("恶意攻击或侮辱诽谤"),
        "text_72": MessageLookupByLibrary.simpleMessage("其他"),
        "text_73": MessageLookupByLibrary.simpleMessage("发布"),
        "text_74": MessageLookupByLibrary.simpleMessage("这一刻你想说什么..."),
        "text_75": MessageLookupByLibrary.simpleMessage("全部评论"),
        "text_76": m17,
        "text_77": MessageLookupByLibrary.simpleMessage("设置"),
        "text_78": MessageLookupByLibrary.simpleMessage("粉丝"),
        "text_79": MessageLookupByLibrary.simpleMessage("我的动态"),
        "text_8": MessageLookupByLibrary.simpleMessage("《用户协议》"),
        "text_80": MessageLookupByLibrary.simpleMessage("我的收益"),
        "text_81": MessageLookupByLibrary.simpleMessage("聊天就有收益，所见即所得"),
        "text_82": MessageLookupByLibrary.simpleMessage("推送设置"),
        "text_83": MessageLookupByLibrary.simpleMessage("意见反馈"),
        "text_84": MessageLookupByLibrary.simpleMessage("退出登录"),
        "text_85": MessageLookupByLibrary.simpleMessage("我的钻石"),
        "text_86": MessageLookupByLibrary.simpleMessage("快点去寻找心动的她吧！"),
        "text_87": MessageLookupByLibrary.simpleMessage("个人资料"),
        "text_88": MessageLookupByLibrary.simpleMessage("自我介绍"),
        "text_89": MessageLookupByLibrary.simpleMessage("手机号"),
        "text_9": MessageLookupByLibrary.simpleMessage("《隐私协议》"),
        "text_90": MessageLookupByLibrary.simpleMessage("不可修改"),
        "text_91": MessageLookupByLibrary.simpleMessage("输入您的个性签名吧~"),
        "text_92": MessageLookupByLibrary.simpleMessage("性别"),
        "text_93": MessageLookupByLibrary.simpleMessage("保存修改"),
        "text_94": MessageLookupByLibrary.simpleMessage("删除动态"),
        "text_95": MessageLookupByLibrary.simpleMessage("修改手机号"),
        "text_96": MessageLookupByLibrary.simpleMessage("更换手机号后，下次登录请使用新手机号登录"),
        "text_97": MessageLookupByLibrary.simpleMessage("新手机号"),
        "text_98": MessageLookupByLibrary.simpleMessage("请填写新手机号"),
        "text_99": MessageLookupByLibrary.simpleMessage("验证码")
      };
}
