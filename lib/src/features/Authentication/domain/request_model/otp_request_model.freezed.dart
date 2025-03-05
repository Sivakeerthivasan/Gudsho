// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'otp_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$OtpReqModel {
  String get email => throw _privateConstructorUsedError;
  int get otpCode => throw _privateConstructorUsedError;

  /// Create a copy of OtpReqModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OtpReqModelCopyWith<OtpReqModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OtpReqModelCopyWith<$Res> {
  factory $OtpReqModelCopyWith(
          OtpReqModel value, $Res Function(OtpReqModel) then) =
      _$OtpReqModelCopyWithImpl<$Res, OtpReqModel>;
  @useResult
  $Res call({String email, int otpCode});
}

/// @nodoc
class _$OtpReqModelCopyWithImpl<$Res, $Val extends OtpReqModel>
    implements $OtpReqModelCopyWith<$Res> {
  _$OtpReqModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OtpReqModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otpCode = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OtpReqModelImplCopyWith<$Res>
    implements $OtpReqModelCopyWith<$Res> {
  factory _$$OtpReqModelImplCopyWith(
          _$OtpReqModelImpl value, $Res Function(_$OtpReqModelImpl) then) =
      __$$OtpReqModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, int otpCode});
}

/// @nodoc
class __$$OtpReqModelImplCopyWithImpl<$Res>
    extends _$OtpReqModelCopyWithImpl<$Res, _$OtpReqModelImpl>
    implements _$$OtpReqModelImplCopyWith<$Res> {
  __$$OtpReqModelImplCopyWithImpl(
      _$OtpReqModelImpl _value, $Res Function(_$OtpReqModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OtpReqModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? otpCode = null,
  }) {
    return _then(_$OtpReqModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      otpCode: null == otpCode
          ? _value.otpCode
          : otpCode // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$OtpReqModelImpl implements _OtpReqModel {
  const _$OtpReqModelImpl({required this.email, required this.otpCode});

  @override
  final String email;
  @override
  final int otpCode;

  @override
  String toString() {
    return 'OtpReqModel(email: $email, otpCode: $otpCode)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OtpReqModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.otpCode, otpCode) || other.otpCode == otpCode));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, otpCode);

  /// Create a copy of OtpReqModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OtpReqModelImplCopyWith<_$OtpReqModelImpl> get copyWith =>
      __$$OtpReqModelImplCopyWithImpl<_$OtpReqModelImpl>(this, _$identity);
}

abstract class _OtpReqModel implements OtpReqModel {
  const factory _OtpReqModel(
      {required final String email,
      required final int otpCode}) = _$OtpReqModelImpl;

  @override
  String get email;
  @override
  int get otpCode;

  /// Create a copy of OtpReqModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OtpReqModelImplCopyWith<_$OtpReqModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
