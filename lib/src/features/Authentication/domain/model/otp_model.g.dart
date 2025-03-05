// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$OtpModelImpl _$$OtpModelImplFromJson(Map<String, dynamic> json) =>
    _$OtpModelImpl(
      status: (json['status'] as num).toInt(),
      message: json['message'] as String,
      data: json['data'] as String,
      error: json['error'] as bool?,
    );

Map<String, dynamic> _$$OtpModelImplToJson(_$OtpModelImpl instance) =>
    <String, dynamic>{
      'status': instance.status,
      'message': instance.message,
      'data': instance.data,
      'error': instance.error,
    };
