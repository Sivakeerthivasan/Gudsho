// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resent_otp_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

ResentOtpResponse _$ResentOtpResponseFromJson(Map<String, dynamic> json) {
  return _ResentOtpResponse.fromJson(json);
}

/// @nodoc
mixin _$ResentOtpResponse {
  int get status => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this ResentOtpResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of ResentOtpResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ResentOtpResponseCopyWith<ResentOtpResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ResentOtpResponseCopyWith<$Res> {
  factory $ResentOtpResponseCopyWith(
          ResentOtpResponse value, $Res Function(ResentOtpResponse) then) =
      _$ResentOtpResponseCopyWithImpl<$Res, ResentOtpResponse>;
  @useResult
  $Res call({int status, String data, String message});
}

/// @nodoc
class _$ResentOtpResponseCopyWithImpl<$Res, $Val extends ResentOtpResponse>
    implements $ResentOtpResponseCopyWith<$Res> {
  _$ResentOtpResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ResentOtpResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ResentOtpResponseImplCopyWith<$Res>
    implements $ResentOtpResponseCopyWith<$Res> {
  factory _$$ResentOtpResponseImplCopyWith(_$ResentOtpResponseImpl value,
          $Res Function(_$ResentOtpResponseImpl) then) =
      __$$ResentOtpResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String data, String message});
}

/// @nodoc
class __$$ResentOtpResponseImplCopyWithImpl<$Res>
    extends _$ResentOtpResponseCopyWithImpl<$Res, _$ResentOtpResponseImpl>
    implements _$$ResentOtpResponseImplCopyWith<$Res> {
  __$$ResentOtpResponseImplCopyWithImpl(_$ResentOtpResponseImpl _value,
      $Res Function(_$ResentOtpResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of ResentOtpResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$ResentOtpResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ResentOtpResponseImpl implements _ResentOtpResponse {
  _$ResentOtpResponseImpl(
      {required this.status, required this.data, required this.message});

  factory _$ResentOtpResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$ResentOtpResponseImplFromJson(json);

  @override
  final int status;
  @override
  final String data;
  @override
  final String message;

  @override
  String toString() {
    return 'ResentOtpResponse(status: $status, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ResentOtpResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data, message);

  /// Create a copy of ResentOtpResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ResentOtpResponseImplCopyWith<_$ResentOtpResponseImpl> get copyWith =>
      __$$ResentOtpResponseImplCopyWithImpl<_$ResentOtpResponseImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ResentOtpResponseImplToJson(
      this,
    );
  }
}

abstract class _ResentOtpResponse implements ResentOtpResponse {
  factory _ResentOtpResponse(
      {required final int status,
      required final String data,
      required final String message}) = _$ResentOtpResponseImpl;

  factory _ResentOtpResponse.fromJson(Map<String, dynamic> json) =
      _$ResentOtpResponseImpl.fromJson;

  @override
  int get status;
  @override
  String get data;
  @override
  String get message;

  /// Create a copy of ResentOtpResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ResentOtpResponseImplCopyWith<_$ResentOtpResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
