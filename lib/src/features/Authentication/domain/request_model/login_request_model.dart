import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_request_model.freezed.dart';

@freezed
class LoginInReqModel with _$LoginInReqModel {
  const factory LoginInReqModel(
      {required String email,
      required String password,
      @Default('user') String logintype,
      @Default("") String ssoType}) = _LoginInReqModel;
}
