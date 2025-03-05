import 'package:gudsho/src/core/config/environment.dart';

class ApiEndpoints {
  static String baseUrl = EnvironmentConfig.instance.apiUrl;

  // Auth Endpoints
  static final String login = '$baseUrl/api/login';
  static final String register = "$baseUrl/api/signup";
  static final String otpVerify = "$baseUrl/api/otp/verify";
  static final String resendOtp = "$baseUrl/api/otp/generate";
}
