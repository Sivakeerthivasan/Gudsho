// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginResponseImpl _$$LoginResponseImplFromJson(Map<String, dynamic> json) =>
    _$LoginResponseImpl(
      status: (json['status'] as num).toInt(),
      data: UserData.fromJson(json['data'] as Map<String, dynamic>),
      message: json['message'] as String,
    );

Map<String, dynamic> _$$LoginResponseImplToJson(_$LoginResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data.toJson(),
      'message': instance.message,
    };

_$UserDataImpl _$$UserDataImplFromJson(Map<String, dynamic> json) =>
    _$UserDataImpl(
      userId: (json['userId'] as num).toInt(),
      jwt: json['jwt'] as String,
      email: json['email'] as String,
      userRoleId: (json['userRoleId'] as num).toInt(),
      userPlanTypeId: (json['userPlanTypeId'] as num).toInt(),
      pwd: json['pwd'] as String,
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String?,
      image: json['image'] as String?,
      organisationId: (json['organisationId'] as num).toInt(),
      organisationName: json['organisationName'] as String,
      licensekeyExpire: json['licensekeyExpire'] as bool,
      createdAt: json['createdAt'] as String,
      isActive: (json['isActive'] as num).toInt(),
      emailVerified: (json['emailVerified'] as num).toInt(),
      primaryGoal: json['primaryGoal'] as String,
      designation: json['designation'] as String,
      registrationCompleted: (json['registrationCompleted'] as num).toInt(),
      userPrivileges: json['userPrivileges'],
    );

Map<String, dynamic> _$$UserDataImplToJson(_$UserDataImpl instance) =>
    <String, dynamic>{
      'userId': instance.userId,
      'jwt': instance.jwt,
      'email': instance.email,
      'userRoleId': instance.userRoleId,
      'userPlanTypeId': instance.userPlanTypeId,
      'pwd': instance.pwd,
      'firstName': instance.firstName,
      'lastName': instance.lastName,
      'image': instance.image,
      'organisationId': instance.organisationId,
      'organisationName': instance.organisationName,
      'licensekeyExpire': instance.licensekeyExpire,
      'createdAt': instance.createdAt,
      'isActive': instance.isActive,
      'emailVerified': instance.emailVerified,
      'primaryGoal': instance.primaryGoal,
      'designation': instance.designation,
      'registrationCompleted': instance.registrationCompleted,
      'userPrivileges': instance.userPrivileges,
    };
