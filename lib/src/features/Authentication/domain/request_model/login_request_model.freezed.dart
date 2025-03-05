// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LoginInReqModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String get logintype => throw _privateConstructorUsedError;
  String get ssoType => throw _privateConstructorUsedError;

  /// Create a copy of LoginInReqModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginInReqModelCopyWith<LoginInReqModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginInReqModelCopyWith<$Res> {
  factory $LoginInReqModelCopyWith(
          LoginInReqModel value, $Res Function(LoginInReqModel) then) =
      _$LoginInReqModelCopyWithImpl<$Res, LoginInReqModel>;
  @useResult
  $Res call({String email, String password, String logintype, String ssoType});
}

/// @nodoc
class _$LoginInReqModelCopyWithImpl<$Res, $Val extends LoginInReqModel>
    implements $LoginInReqModelCopyWith<$Res> {
  _$LoginInReqModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginInReqModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? logintype = null,
    Object? ssoType = null,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      logintype: null == logintype
          ? _value.logintype
          : logintype // ignore: cast_nullable_to_non_nullable
              as String,
      ssoType: null == ssoType
          ? _value.ssoType
          : ssoType // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LoginInReqModelImplCopyWith<$Res>
    implements $LoginInReqModelCopyWith<$Res> {
  factory _$$LoginInReqModelImplCopyWith(_$LoginInReqModelImpl value,
          $Res Function(_$LoginInReqModelImpl) then) =
      __$$LoginInReqModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String password, String logintype, String ssoType});
}

/// @nodoc
class __$$LoginInReqModelImplCopyWithImpl<$Res>
    extends _$LoginInReqModelCopyWithImpl<$Res, _$LoginInReqModelImpl>
    implements _$$LoginInReqModelImplCopyWith<$Res> {
  __$$LoginInReqModelImplCopyWithImpl(
      _$LoginInReqModelImpl _value, $Res Function(_$LoginInReqModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginInReqModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? password = null,
    Object? logintype = null,
    Object? ssoType = null,
  }) {
    return _then(_$LoginInReqModelImpl(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      logintype: null == logintype
          ? _value.logintype
          : logintype // ignore: cast_nullable_to_non_nullable
              as String,
      ssoType: null == ssoType
          ? _value.ssoType
          : ssoType // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$LoginInReqModelImpl implements _LoginInReqModel {
  const _$LoginInReqModelImpl(
      {required this.email,
      required this.password,
      this.logintype = 'user',
      this.ssoType = ""});

  @override
  final String email;
  @override
  final String password;
  @override
  @JsonKey()
  final String logintype;
  @override
  @JsonKey()
  final String ssoType;

  @override
  String toString() {
    return 'LoginInReqModel(email: $email, password: $password, logintype: $logintype, ssoType: $ssoType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginInReqModelImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.logintype, logintype) ||
                other.logintype == logintype) &&
            (identical(other.ssoType, ssoType) || other.ssoType == ssoType));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, email, password, logintype, ssoType);

  /// Create a copy of LoginInReqModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginInReqModelImplCopyWith<_$LoginInReqModelImpl> get copyWith =>
      __$$LoginInReqModelImplCopyWithImpl<_$LoginInReqModelImpl>(
          this, _$identity);
}

abstract class _LoginInReqModel implements LoginInReqModel {
  const factory _LoginInReqModel(
      {required final String email,
      required final String password,
      final String logintype,
      final String ssoType}) = _$LoginInReqModelImpl;

  @override
  String get email;
  @override
  String get password;
  @override
  String get logintype;
  @override
  String get ssoType;

  /// Create a copy of LoginInReqModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginInReqModelImplCopyWith<_$LoginInReqModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
