import 'package:freezed_annotation/freezed_annotation.dart';
part 'otp_model.freezed.dart';
part 'otp_model.g.dart';

@freezed
class OtpModel with _$OtpModel {
  const factory OtpModel(
      {required int status,
      required String message,
      required String data,
      required bool? error}) = _OtpModel;
  factory OtpModel.fromJson(Map<String, dynamic> json) =>
      _$OtpModelFromJson(json);
}
