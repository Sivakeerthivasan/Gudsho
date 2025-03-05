import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gudsho/src/core/config/environment.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'dio_provider.g.dart';

@riverpod
Dio dio(Ref ref) {
  // Using Environment set Url
  final options = BaseOptions(baseUrl: EnvironmentConfig.instance.apiUrl);
  return Dio(options);
}
