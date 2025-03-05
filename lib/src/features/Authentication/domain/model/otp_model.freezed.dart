// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OtpModel _$OtpModelFromJson(Map<String, dynamic> json) {
  return _OtpModel.fromJson(json);
}

/// @nodoc
mixin _$OtpModel {
  int get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  String get data => throw _privateConstructorUsedError;
  bool get error => throw _privateConstructorUsedError;

  /// Serializes this OtpModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OtpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpModelCopyWith<OtpModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpModelCopyWith<$Res> {
  factory $OtpModelCopyWith(OtpModel value, $Res Function(OtpModel) then) =
      _$OtpModelCopyWithImpl<$Res, OtpModel>;
  @useResult
  $Res call({int status, String message, String data, bool error});
}

/// @nodoc
class _$OtpModelCopyWithImpl<$Res, $Val extends OtpModel>
    implements $OtpModelCopyWith<$Res> {
  _$OtpModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpModelImplCopyWith<$Res>
    implements $OtpModelCopyWith<$Res> {
  factory _$$OtpModelImplCopyWith(
          _$OtpModelImpl value, $Res Function(_$OtpModelImpl) then) =
      __$$OtpModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, String message, String data, bool error});
}

/// @nodoc
class __$$OtpModelImplCopyWithImpl<$Res>
    extends _$OtpModelCopyWithImpl<$Res, _$OtpModelImpl>
    implements _$$OtpModelImplCopyWith<$Res> {
  __$$OtpModelImplCopyWithImpl(
      _$OtpModelImpl _value, $Res Function(_$OtpModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? data = null,
    Object? error = null,
  }) {
    return _then(_$OtpModelImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OtpModelImpl implements _OtpModel {
  const _$OtpModelImpl(
      {required this.status,
      required this.message,
      required this.data,
      required this.error});

  factory _$OtpModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OtpModelImplFromJson(json);

  @override
  final int status;
  @override
  final String message;
  @override
  final String data;
  @override
  final bool error;

  @override
  String toString() {
    return 'OtpModel(status: $status, message: $message, data: $data, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpModelImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, message, data, error);

  /// Create a copy of OtpModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpModelImplCopyWith<_$OtpModelImpl> get copyWith =>
      __$$OtpModelImplCopyWithImpl<_$OtpModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OtpModelImplToJson(
      this,
    );
  }
}

abstract class _OtpModel implements OtpModel {
  const factory _OtpModel(
      {required final int status,
      required final String message,
      required final String data,
      required final bool error}) = _$OtpModelImpl;

  factory _OtpModel.fromJson(Map<String, dynamic> json) =
      _$OtpModelImpl.fromJson;

  @override
  int get status;
  @override
  String get message;
  @override
  String get data;
  @override
  bool get error;

  /// Create a copy of OtpModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpModelImplCopyWith<_$OtpModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
