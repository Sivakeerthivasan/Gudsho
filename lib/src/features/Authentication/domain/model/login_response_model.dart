import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_model.freezed.dart';
part 'login_response_model.g.dart';

@freezed
class LoginResponse with _$LoginResponse {
  @JsonSerializable(
      explicitToJson: true) // Ensures nested objects serialize correctly
  const factory LoginResponse({
    required int status,
    required UserData data,
    required String message,
  }) = _LoginResponse;

  factory LoginResponse.fromJson(Map<String, dynamic> json) =>
      _$LoginResponseFromJson(json);
}

@freezed
class UserData with _$UserData {
  @JsonSerializable(
      explicitToJson: true) // Required for nested object serialization
  const factory UserData({
    required int userId,
    required String jwt,
    required String email,
    required int userRoleId,
    required int userPlanTypeId,
    required String pwd,
    required String firstName,
    String? lastName,
    String? image,
    required int organisationId,
    required String organisationName,
    required bool licensekeyExpire,
    required String createdAt,
    required int isActive,
    required int emailVerified,
    required String primaryGoal,
    required String designation,
    required int registrationCompleted,
    dynamic userPrivileges, // Can be changed to List<String>? if it's an array
  }) = _UserData;

  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}
