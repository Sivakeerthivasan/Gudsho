import 'package:freezed_annotation/freezed_annotation.dart';
part 'register_request_model.freezed.dart';

@freezed
class RegisterReqModel with _$RegisterReqModel {
  const factory RegisterReqModel({
    required String phoneNumber,
    required String countryCodeShort,
    required String firstName,
    required String emailId,
    required String country,
    required String countryCode,
    required String password,
  }) = _RegisterReqModel;
}
