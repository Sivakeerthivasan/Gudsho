import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:gudsho/src/core/config/api_endpoints.dart';
import 'package:gudsho/src/core/error/dio_error_handler.dart';
import 'package:gudsho/src/features/Authentication/domain/model/login_response_model.dart';
import 'package:gudsho/src/features/Authentication/domain/model/otp_model.dart';
import 'package:gudsho/src/features/Authentication/domain/model/resent_otp_response.dart';
import 'package:gudsho/src/features/Authentication/domain/request_model/otp_request_model.dart';
import 'package:gudsho/src/features/Authentication/domain/request_model/register_request_model.dart';
import 'package:gudsho/src/features/Authentication/domain/request_model/login_request_model.dart';

class AuthRemoteDataSource {
  final Dio dio;

  AuthRemoteDataSource({required this.dio});

  Future<String> registerNewUser(RegisterReqModel req) async {
    try {
      final Response response = await dio.post(ApiEndpoints.register, data: {
        "phoneNumber": req.phoneNumber,
        "countryCodeShort": req.countryCodeShort,
        "firstName": req.firstName,
        "emailId": req.emailId,
        "country": req.country,
        "countryCode": req.countryCode,
        "password": req.password
      });

      if (response.statusCode == 200) {
        final res = response.data;
        if (res['status'] == 400) {
          throw res['message'];
        } else if (res['status'] == 200) {
          return res['message'];
        }
      }
      throw dioErrorHandler(response);
    } on DioException catch (e) {
      throw dioErrorHandler(
          e.response ?? Response(requestOptions: RequestOptions(path: '')));
    } catch (e) {
      rethrow;
    }
  }

  Future<LoginResponse> loginUser(LoginInReqModel req) async {
    try {
      final Response response = await dio.post(ApiEndpoints.login, data: {
        "email": req.email,
        "password": req.password,
        "logintype": req.logintype,
        "ssoType": req.ssoType
      });

      if (response.statusCode == 200 || response.statusCode == 400) {
        if (response.statusCode == 200) {
          final result = LoginResponse.fromJson(response.data);
          print("success");
          return result;
        } else if (response.statusCode == 400) {
          final map = response.data as Map<String, dynamic>;
          throw Exception(map['message']);
        }
      }
      throw dioErrorHandler(response);
    } on DioException catch (e) {
      throw dioErrorHandler(
          e.response ?? Response(requestOptions: RequestOptions(path: '')));
    } catch (e) {
      rethrow;
    }
  }

  Future<void> validateOtp(OtpReqModel req) async {
    try {
      final Response response = await dio.post(ApiEndpoints.otpVerify,
          queryParameters: {'email': req.email, 'otp': req.otpCode});

      if (response.statusCode == 200) {
        final OtpModel otpModel = OtpModel.fromJson(response.data);
        if (otpModel.error) {
          throw Exception(otpModel.message);
        } else {
          throw dioErrorHandler(response);
        }
      }
    } on DioException catch (e) {
      throw dioErrorHandler(
          e.response ?? Response(requestOptions: RequestOptions(path: '')));
    } catch (e) {
      rethrow;
    }
  }

  Future<String> resendOtp(String email) async {
    try {
      final Response response = await dio.post(ApiEndpoints.resendOtp,
          queryParameters: {"email": email, "oldEmail": ""});

      if (response.statusCode == 200) {
        final ResentOtpResponse result =
            ResentOtpResponse.fromJson(response.data);
        if (result.status == 200 && result.data == 'true') {
          return result.message;
        }
      }
      throw dioErrorHandler(response);
    } on DioException catch (e) {
      throw dioErrorHandler(
          e.response ?? Response(requestOptions: RequestOptions(path: '')));
    } catch (e) {
      rethrow;
    }
  }

  Future<String> passwordReset(String email) async {
    try {
      final Response response =
          await dio.post(ApiEndpoints.passwordReset, data: {'email': email});

      if (response.statusCode == 200) {
        final map = response.data;
        return map['message'];
      } else if (response.statusCode == 400) {
        final map = response.data;
        throw map['message'];
      }
      throw dioErrorHandler(response);
    } on DioException catch (e) {
      throw dioErrorHandler(
          e.response ?? Response(requestOptions: RequestOptions(path: '')));
    } catch (e) {
      rethrow;
    }
  }
}
