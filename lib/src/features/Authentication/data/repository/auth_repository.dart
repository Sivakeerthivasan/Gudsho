import 'package:gudsho/src/core/error/custom_error.dart';
import 'package:gudsho/src/features/Authentication/data/datasource/auth_remote_datasource.dart';
import 'package:gudsho/src/features/Authentication/domain/model/login_response_model.dart';
import 'package:gudsho/src/features/Authentication/domain/request_model/login_request_model.dart';
import 'package:gudsho/src/features/Authentication/domain/request_model/otp_request_model.dart';
import 'package:gudsho/src/features/Authentication/domain/request_model/register_request_model.dart';

class AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;
  AuthRepository(this.authRemoteDataSource);

  Future<void> registerNewUser(RegisterReqModel req) async {
    try {
      await authRemoteDataSource.registerNewUser(req);
    } catch (e) {
      throw CustomError(errMsg: e.toString());
    }
  }

  Future<LoginResponse> loginUser(LoginInReqModel req) async {
    try {
      final result = await authRemoteDataSource.loginUser(req);
      return result;
    } catch (error) {
      throw CustomError(errMsg: error.toString());
    }
  }

  Future<void> validateOtp(OtpReqModel otpReq) async {
    try {
      await authRemoteDataSource.validateOtp(otpReq);
    } catch (error) {
      throw CustomError(errMsg: error.toString());
    }
  }

  Future<String> resendOtp(String email) async {
    try {
      final msg = await authRemoteDataSource.resendOtp(email);
      return msg;
    } catch (error) {
      throw CustomError(errMsg: error.toString());
    }
  }
}
