import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gudsho/src/features/Authentication/data/datasource/providers/auth_remove_datasource_provider.dart';
import 'package:gudsho/src/features/Authentication/data/repository/auth_repository.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_repository_provider.g.dart';

@riverpod
AuthRepository authRepository(Ref ref) {
  return AuthRepository(ref.watch(authRemoteDataSourceProvider));
}
