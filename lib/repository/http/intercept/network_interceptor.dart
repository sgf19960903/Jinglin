
import 'package:connectivity/connectivity.dart';
import 'package:dio/dio.dart';

class NetworkInterceptor extends Interceptor{


  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) async{
    Connectivity connectivity = Connectivity();
    ConnectivityResult connectivityResult = await connectivity.checkConnectivity();
    //无网络时拦截
    if(connectivityResult==ConnectivityResult.none) return handler.reject(DioError(requestOptions: options,error: "当前没有网络!"));
    handler.next(options);
  }

}