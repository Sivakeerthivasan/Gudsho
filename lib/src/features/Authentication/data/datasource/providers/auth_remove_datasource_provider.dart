import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gudsho/src/core/network_client/dio_interceptor.dart';
import 'package:gudsho/src/core/network_client/dio_provider.dart';
import 'package:gudsho/src/features/Authentication/data/datasource/auth_remote_datasource.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_remove_datasource_provider.g.dart';

@riverpod
AuthRemoteDataSource authRemoteDataSource(Ref ref) {
  return AuthRemoteDataSource(
      dio: ref.watch(dioProvider)..interceptors.add(Ignore400Interceptor()));
}
