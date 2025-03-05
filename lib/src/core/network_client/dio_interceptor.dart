import 'package:dio/dio.dart';

class Ignore400Interceptor extends Interceptor {
  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    // If status code is 400, handle it normally instead of throwing an error
    if (response.statusCode == 400) {
      handler.resolve(response);
    } else {
      super.onResponse(response, handler);
    }
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    // If the error is due to status code 400, treat it as a normal response
    if (err.response?.statusCode == 400) {
      handler.resolve(err.response!);
    } else {
      super.onError(err, handler);
    }
  }
}
