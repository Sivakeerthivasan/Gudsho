import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:gudsho/src/core/error/custom_error.dart';
import 'package:gudsho/src/features/Authentication/data/repository/providers/auth_repository_provider.dart';
import 'package:gudsho/src/features/Authentication/domain/request_model/login_request_model.dart';
import 'package:gudsho/src/features/Authentication/domain/request_model/otp_request_model.dart';
import 'package:gudsho/src/features/Authentication/domain/request_model/register_request_model.dart';
import 'package:gudsho/src/features/Authentication/presentation/controllers/auth_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
part 'auth_controller.g.dart';

@riverpod
class AuthController extends _$AuthController {
  @override
  AuthState build() {
    return AuthInitialState();
  }

  Future<void> registerUser(RegisterReqModel req) async {
    state = AuthLoadingState();
    try {
      String md5Hash = md5.convert(utf8.encode(req.password)).toString();
      await ref
          .read(authRepositoryProvider)
          .registerNewUser(req.copyWith(password: md5Hash));
      state = OtpSentState();
    } on CustomError catch (error) {
      state = AuthFailureState(error: error);
    }
  }

  Future<void> signInUser(LoginInReqModel loginReq) async {
    String md5Hash = md5.convert(utf8.encode(loginReq.password)).toString();
    state = AuthLoadingState();
    try {
      final loginRes = await ref
          .read(authRepositoryProvider)
          .loginUser(loginReq.copyWith(password: md5Hash));
      state = AuthSuccessState(loginResModel: loginRes);
    } on CustomError catch (error) {
      state = AuthFailureState(error: error);
    }
  }

  Future<void> otpValidate(OtpReqModel otpReq) async {
    state = OtpLoadingState();
    try {
      await ref.read(authRepositoryProvider).validateOtp(otpReq);
      state = OtpSuccessState();
    } on CustomError catch (error) {
      state = OtpErrorState(error: error);
    }
  }

  Future<void> resendOtp(String email) async {
    state = OtpResentLoading();
    try {
      final successMsg =
          await ref.read(authRepositoryProvider).resendOtp(email);
      state = OtpResentSuccess(message: successMsg);
    } on CustomError catch (error) {
      state = OtpResentFailure(error: error);
    }
  }
}
