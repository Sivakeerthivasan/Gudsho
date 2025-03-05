import 'package:freezed_annotation/freezed_annotation.dart';
part 'resent_otp_response.freezed.dart';
part 'resent_otp_response.g.dart';

@freezed
class ResentOtpResponse with _$ResentOtpResponse {
  factory ResentOtpResponse({
    required int status,
    required String data,
    required String message,
  }) = _ResentOtpResponse;

  factory ResentOtpResponse.fromJson(Map<String, dynamic> json) =>
      _$ResentOtpResponseFromJson(json);
}
