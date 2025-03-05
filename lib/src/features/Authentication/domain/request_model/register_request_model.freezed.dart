// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_request_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$RegisterReqModel {
  String get phoneNumber => throw _privateConstructorUsedError;
  String get countryCodeShort => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String get emailId => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get countryCode => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;

  /// Create a copy of RegisterReqModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RegisterReqModelCopyWith<RegisterReqModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterReqModelCopyWith<$Res> {
  factory $RegisterReqModelCopyWith(
          RegisterReqModel value, $Res Function(RegisterReqModel) then) =
      _$RegisterReqModelCopyWithImpl<$Res, RegisterReqModel>;
  @useResult
  $Res call(
      {String phoneNumber,
      String countryCodeShort,
      String firstName,
      String emailId,
      String country,
      String countryCode,
      String password});
}

/// @nodoc
class _$RegisterReqModelCopyWithImpl<$Res, $Val extends RegisterReqModel>
    implements $RegisterReqModelCopyWith<$Res> {
  _$RegisterReqModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RegisterReqModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? countryCodeShort = null,
    Object? firstName = null,
    Object? emailId = null,
    Object? country = null,
    Object? countryCode = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      countryCodeShort: null == countryCodeShort
          ? _value.countryCodeShort
          : countryCodeShort // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      emailId: null == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RegisterReqModelImplCopyWith<$Res>
    implements $RegisterReqModelCopyWith<$Res> {
  factory _$$RegisterReqModelImplCopyWith(_$RegisterReqModelImpl value,
          $Res Function(_$RegisterReqModelImpl) then) =
      __$$RegisterReqModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String phoneNumber,
      String countryCodeShort,
      String firstName,
      String emailId,
      String country,
      String countryCode,
      String password});
}

/// @nodoc
class __$$RegisterReqModelImplCopyWithImpl<$Res>
    extends _$RegisterReqModelCopyWithImpl<$Res, _$RegisterReqModelImpl>
    implements _$$RegisterReqModelImplCopyWith<$Res> {
  __$$RegisterReqModelImplCopyWithImpl(_$RegisterReqModelImpl _value,
      $Res Function(_$RegisterReqModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of RegisterReqModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? phoneNumber = null,
    Object? countryCodeShort = null,
    Object? firstName = null,
    Object? emailId = null,
    Object? country = null,
    Object? countryCode = null,
    Object? password = null,
  }) {
    return _then(_$RegisterReqModelImpl(
      phoneNumber: null == phoneNumber
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String,
      countryCodeShort: null == countryCodeShort
          ? _value.countryCodeShort
          : countryCodeShort // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      emailId: null == emailId
          ? _value.emailId
          : emailId // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      countryCode: null == countryCode
          ? _value.countryCode
          : countryCode // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$RegisterReqModelImpl implements _RegisterReqModel {
  const _$RegisterReqModelImpl(
      {required this.phoneNumber,
      required this.countryCodeShort,
      required this.firstName,
      required this.emailId,
      required this.country,
      required this.countryCode,
      required this.password});

  @override
  final String phoneNumber;
  @override
  final String countryCodeShort;
  @override
  final String firstName;
  @override
  final String emailId;
  @override
  final String country;
  @override
  final String countryCode;
  @override
  final String password;

  @override
  String toString() {
    return 'RegisterReqModel(phoneNumber: $phoneNumber, countryCodeShort: $countryCodeShort, firstName: $firstName, emailId: $emailId, country: $country, countryCode: $countryCode, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterReqModelImpl &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber) &&
            (identical(other.countryCodeShort, countryCodeShort) ||
                other.countryCodeShort == countryCodeShort) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.emailId, emailId) || other.emailId == emailId) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, phoneNumber, countryCodeShort,
      firstName, emailId, country, countryCode, password);

  /// Create a copy of RegisterReqModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterReqModelImplCopyWith<_$RegisterReqModelImpl> get copyWith =>
      __$$RegisterReqModelImplCopyWithImpl<_$RegisterReqModelImpl>(
          this, _$identity);
}

abstract class _RegisterReqModel implements RegisterReqModel {
  const factory _RegisterReqModel(
      {required final String phoneNumber,
      required final String countryCodeShort,
      required final String firstName,
      required final String emailId,
      required final String country,
      required final String countryCode,
      required final String password}) = _$RegisterReqModelImpl;

  @override
  String get phoneNumber;
  @override
  String get countryCodeShort;
  @override
  String get firstName;
  @override
  String get emailId;
  @override
  String get country;
  @override
  String get countryCode;
  @override
  String get password;

  /// Create a copy of RegisterReqModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterReqModelImplCopyWith<_$RegisterReqModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
