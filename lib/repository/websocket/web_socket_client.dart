

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bittchainpro/application/app.dart';
import 'package:bittchainpro/bean/history_kline_bean.dart';
import 'package:bittchainpro/bean/k_line_bean.dart';
import 'package:bittchainpro/common/res/res_path.dart';
import 'package:bittchainpro/common/utils/dialog/common_dialog_util.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class WebSocketClient{
  int state = 1;//0--测试 1--正式
  static const String webSocketTestUrl = "ws://8.218.132.36:6063";//长连接测试服
  static const String webSocketUrl = "wss://m.globalmexc.net/wss";
  List<String> clientUrl = [webSocketTestUrl,webSocketUrl];
  final int HEART_BEAT_RATE = 15 * 1000;//心跳包间隔
  final int HEART_CYCLE_TIME = 5 * 1000;//心跳包循环检测时间
  static WebSocketClient? _client;
  WebSocketChannel? _webSocketChannel;
  Timer? _heartTimer;
  bool isConnected = false;//是否已连接
  int _lastSendTime = 0;//上一次发送的时间戳  用于计算发送心跳包

  String? symbol,timePeriod;

  factory WebSocketClient() => _getInstance();

  WebSocketClient._();

  static WebSocketClient _getInstance(){
    if(_client==null) _client = WebSocketClient._();
    return _client!;
  }


  //初始化
  void init() async{
    if(_webSocketChannel!=null) return;
    LogUtil.printM("WebSocket链接：${clientUrl[state]}--${clientUrl[state].startsWith("https")}--${clientUrl[state].startsWith("http")}");
    _webSocketChannel = WebSocketChannel.connect(Uri.parse(clientUrl[state]));
    _webSocketChannel?.stream.listen(_onReceived,onDone: _release,onError: _onError);
    isConnected = true;
    _lastSendTime = DateTime.now().millisecondsSinceEpoch;
    // _heartTimer = Timer.periodic(Duration(milliseconds: HEART_CYCLE_TIME), (timer) {
    //   int nowTime = DateTime.now().millisecondsSinceEpoch;
    //   if(nowTime-_lastSendTime>=HEART_BEAT_RATE) WebSocketRequest.sendHeartPack();
    // });
    LogUtil.printM("WebSocket连接成功!$_webSocketChannel");
  }

  //发送数据
  void onSend(data){
    LogUtil.printM("OnSend:$data--$isConnected");
    if(_webSocketChannel==null||!isConnected) init();
    _webSocketChannel?.sink.add(data);
    _lastSendTime = DateTime.now().millisecondsSinceEpoch;
  }

  //获取历史K线
  void history(symbol,timePeriod,{bool needDialog=true}){
    if(needDialog) CommonDialogUtil.showWaitDialog(App.appGlobal.currentContext!);
    int count = 500;
    int fromTimeStamp = 0;
    int toTimeStamp = DateTime.now().millisecondsSinceEpoch~/1000;
    if(timePeriod=="1min"){
      fromTimeStamp = toTimeStamp - 60*count;
    }else if(timePeriod=="5min"){
      fromTimeStamp = toTimeStamp - 5*60*count;
    }else if(timePeriod=="30min"){
      fromTimeStamp = toTimeStamp - 30*60*count;
    }else if(timePeriod=="60min"){
      fromTimeStamp = toTimeStamp - 60*60*count;
    }else if(timePeriod=="4hour"){
      fromTimeStamp = toTimeStamp - 4*60*60*count;
    }else if(timePeriod=="1day"){
      fromTimeStamp = toTimeStamp - 24*60*60*count;
    }
    Map<String,dynamic> msgMap = {
      "from":fromTimeStamp,
      "to":DateTime.now().millisecondsSinceEpoch~/1000,
      "period":"$timePeriod",
      "symbol":"$symbol",
      "history":"true"
    };
    LogUtil.printE("历史K线：${json.encode(msgMap)}");
    Future.delayed(Duration(milliseconds: 50),(){
      onSend(json.encode(msgMap));
    });
  }

  //订阅
  void sub(symbol,timePeriod,){
    this.symbol = symbol;
    this.timePeriod = timePeriod;
    Map<String,dynamic> msgMap = {
      "symbol":"$symbol",
      "period":"$timePeriod"
    };
    LogUtil.printE("订阅：${json.encode(msgMap)}");
    Future.delayed(Duration(milliseconds: 50),(){
      onSend(json.encode(msgMap));
    });
  }

  //取消订阅   {"symbol":"btcusdt","period":"1min"}   {"unsub":"btcusdt","period":"1hour"}
  void unSub(symbol,timePeriod,){
    Map<String,dynamic> msgMap = {
      "un_subscribe":"true",
      "symbol":"$symbol",
      "period":"$timePeriod"
    };
    LogUtil.printE("取消订阅：${json.encode(msgMap)}");
    Future.delayed(Duration(milliseconds: 60),(){
      onSend(json.encode(msgMap));
    });
  }


  //接受数据
  void _onReceived(data){
    // print("WebSocket接受:$data");
    if(data is String) {
      if(data.contains("ping")){

      }else if(data.contains("info")){
        dynamic dy = json.decode(data);
        KLineBean bean = KLineBean.fromJson(dy);
        App.eventBus.fire(bean);
      }else if(data.contains("history")){
        dynamic dy = json.decode(data);
        HistoryKlineBean bean = HistoryKlineBean.fromJson(dy);
        App.eventBus.fire(bean);
      }
    }
  }

  //错误
  void _onError(e){
    isConnected = false;
    LogUtil.printE("WebSocket onError$e");
    _release();
    init();
    if(this.symbol!=null&&this.timePeriod!=null) sub(symbol, timePeriod);
  }

  //关闭
  void close(){
    isConnected = false;
    LogUtil.printE("WebSocket close...");
    _webSocketChannel?.sink.close();
    _release();
    init();
    if(this.symbol!=null&&this.timePeriod!=null) sub(symbol, timePeriod);
  }

  //释放资源
  void _release(){
    _webSocketChannel = null;
    isConnected = false;
    if(_heartTimer!=null) _heartTimer?.cancel();
    _heartTimer = null;
  }

}