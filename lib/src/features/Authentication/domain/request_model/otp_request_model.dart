import 'package:freezed_annotation/freezed_annotation.dart';
part 'otp_request_model.freezed.dart';

@freezed
class OtpReqModel with _$OtpReqModel {
  const factory OtpReqModel({required String email, required int otpCode}) =
      _OtpReqModel;
}
