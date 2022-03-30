import 'package:dio/dio.dart';

class DioInterceptor extends InterceptorsWrapper {
  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    print(options);
    options.headers["Accept"] = "application/json;charset=UTF-8";
    options.headers["Content-Type"] = "application/json;charset=UTF-8";
    super.onRequest(options, handler);
  }
}
