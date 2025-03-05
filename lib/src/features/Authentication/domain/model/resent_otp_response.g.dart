// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'resent_otp_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ResentOtpResponseImpl _$$ResentOtpResponseImplFromJson(
        Map<String, dynamic> json) =>
    _$ResentOtpResponseImpl(
      status: (json['status'] as num).toInt(),
      data: json['data'] as String,
      message: json['message'] as String,
    );

Map<String, dynamic> _$$ResentOtpResponseImplToJson(
        _$ResentOtpResponseImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'data': instance.data,
      'message': instance.message,
    };
