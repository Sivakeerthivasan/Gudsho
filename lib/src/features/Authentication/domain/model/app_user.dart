
import 'package:freezed_annotation/freezed_annotation.dart';
part 'app_user.freezed.dart';
typedef UserID = String;
@freezed
class AppUser with _$AppUser{
  const factory AppUser({
    required UserID uid,
    String? email,
    @Default(false) bool emailVerified ,
  }) = _AppUser;

}

