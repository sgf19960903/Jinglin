
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:jinglin/common/utils/log_util.dart';

///LOG
class DioLogInterceptor extends Interceptor{



  @override
  Future onRequest(RequestOptions options, RequestInterceptorHandler handler) async{
    String requestLog = "HttpRequest>>>>";
    var url = options.path;
    var data = options.data;
    var argument = options.queryParameters;
    var method = options.method;
    requestLog+= " - Url:$url";
    requestLog+= " - Method:$method";
    requestLog+= " - Argument:${argument is Map?json.encode(argument):argument}";
    if(data!=null) requestLog+= " - Data:${data is Map?json.encode(data):data}";
    LogUtil.printM(requestLog);
    handler.next(options);
    return options;
  }

  @override
  Future onError(DioError err, ErrorInterceptorHandler handler) async{
    String errorLog = "HttpError>>>>";
    var message = err.message;
    errorLog+= " - Message:$message";
    LogUtil.printE(errorLog);
    handler.next(err);
    // handler.reject(err);
    return err;
  }

  @override
  Future onResponse(Response response, ResponseInterceptorHandler handler) async{
    String responseLog = "HttpResponse>>>> - url:${response.requestOptions.path}";
    var statusCode = response.statusCode;
    var statusMessage = response.statusMessage;
    var data = response.data;

    responseLog+= " - StatusCode:$statusCode";
    responseLog+= " - StatusMessage:$statusMessage";
    if(data!=null) responseLog+= " - Data:$data";
    LogUtil.printM(responseLog);
    handler.next(response);
    return response;
  }


}