// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LoginResponse _$LoginResponseFromJson(Map<String, dynamic> json) {
  return _LoginResponse.fromJson(json);
}

/// @nodoc
mixin _$LoginResponse {
  int get status => throw _privateConstructorUsedError;
  UserData get data => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;

  /// Serializes this LoginResponse to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LoginResponseCopyWith<LoginResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseCopyWith<$Res> {
  factory $LoginResponseCopyWith(
          LoginResponse value, $Res Function(LoginResponse) then) =
      _$LoginResponseCopyWithImpl<$Res, LoginResponse>;
  @useResult
  $Res call({int status, UserData data, String message});

  $UserDataCopyWith<$Res> get data;
}

/// @nodoc
class _$LoginResponseCopyWithImpl<$Res, $Val extends LoginResponse>
    implements $LoginResponseCopyWith<$Res> {
  _$LoginResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LoginResponse
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
              as UserData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserDataCopyWith<$Res> get data {
    return $UserDataCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LoginResponseImplCopyWith<$Res>
    implements $LoginResponseCopyWith<$Res> {
  factory _$$LoginResponseImplCopyWith(
          _$LoginResponseImpl value, $Res Function(_$LoginResponseImpl) then) =
      __$$LoginResponseImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int status, UserData data, String message});

  @override
  $UserDataCopyWith<$Res> get data;
}

/// @nodoc
class __$$LoginResponseImplCopyWithImpl<$Res>
    extends _$LoginResponseCopyWithImpl<$Res, _$LoginResponseImpl>
    implements _$$LoginResponseImplCopyWith<$Res> {
  __$$LoginResponseImplCopyWithImpl(
      _$LoginResponseImpl _value, $Res Function(_$LoginResponseImpl) _then)
      : super(_value, _then);

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? data = null,
    Object? message = null,
  }) {
    return _then(_$LoginResponseImpl(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as int,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as UserData,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$LoginResponseImpl implements _LoginResponse {
  const _$LoginResponseImpl(
      {required this.status, required this.data, required this.message});

  factory _$LoginResponseImpl.fromJson(Map<String, dynamic> json) =>
      _$$LoginResponseImplFromJson(json);

  @override
  final int status;
  @override
  final UserData data;
  @override
  final String message;

  @override
  String toString() {
    return 'LoginResponse(status: $status, data: $data, message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginResponseImpl &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.data, data) || other.data == data) &&
            (identical(other.message, message) || other.message == message));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, status, data, message);

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      __$$LoginResponseImplCopyWithImpl<_$LoginResponseImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LoginResponseImplToJson(
      this,
    );
  }
}

abstract class _LoginResponse implements LoginResponse {
  const factory _LoginResponse(
      {required final int status,
      required final UserData data,
      required final String message}) = _$LoginResponseImpl;

  factory _LoginResponse.fromJson(Map<String, dynamic> json) =
      _$LoginResponseImpl.fromJson;

  @override
  int get status;
  @override
  UserData get data;
  @override
  String get message;

  /// Create a copy of LoginResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginResponseImplCopyWith<_$LoginResponseImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
mixin _$UserData {
  int get userId => throw _privateConstructorUsedError;
  String get jwt => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;
  int get userRoleId => throw _privateConstructorUsedError;
  int get userPlanTypeId => throw _privateConstructorUsedError;
  String get pwd => throw _privateConstructorUsedError;
  String get firstName => throw _privateConstructorUsedError;
  String? get lastName => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  int get organisationId => throw _privateConstructorUsedError;
  String get organisationName => throw _privateConstructorUsedError;
  bool get licensekeyExpire => throw _privateConstructorUsedError;
  String get createdAt => throw _privateConstructorUsedError;
  int get isActive => throw _privateConstructorUsedError;
  int get emailVerified => throw _privateConstructorUsedError;
  String get primaryGoal => throw _privateConstructorUsedError;
  String get designation => throw _privateConstructorUsedError;
  int get registrationCompleted => throw _privateConstructorUsedError;
  dynamic get userPrivileges => throw _privateConstructorUsedError;

  /// Serializes this UserData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res, UserData>;
  @useResult
  $Res call(
      {int userId,
      String jwt,
      String email,
      int userRoleId,
      int userPlanTypeId,
      String pwd,
      String firstName,
      String? lastName,
      String? image,
      int organisationId,
      String organisationName,
      bool licensekeyExpire,
      String createdAt,
      int isActive,
      int emailVerified,
      String primaryGoal,
      String designation,
      int registrationCompleted,
      dynamic userPrivileges});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res, $Val extends UserData>
    implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? jwt = null,
    Object? email = null,
    Object? userRoleId = null,
    Object? userPlanTypeId = null,
    Object? pwd = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? image = freezed,
    Object? organisationId = null,
    Object? organisationName = null,
    Object? licensekeyExpire = null,
    Object? createdAt = null,
    Object? isActive = null,
    Object? emailVerified = null,
    Object? primaryGoal = null,
    Object? designation = null,
    Object? registrationCompleted = null,
    Object? userPrivileges = freezed,
  }) {
    return _then(_value.copyWith(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userRoleId: null == userRoleId
          ? _value.userRoleId
          : userRoleId // ignore: cast_nullable_to_non_nullable
              as int,
      userPlanTypeId: null == userPlanTypeId
          ? _value.userPlanTypeId
          : userPlanTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      pwd: null == pwd
          ? _value.pwd
          : pwd // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      organisationId: null == organisationId
          ? _value.organisationId
          : organisationId // ignore: cast_nullable_to_non_nullable
              as int,
      organisationName: null == organisationName
          ? _value.organisationName
          : organisationName // ignore: cast_nullable_to_non_nullable
              as String,
      licensekeyExpire: null == licensekeyExpire
          ? _value.licensekeyExpire
          : licensekeyExpire // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as int,
      primaryGoal: null == primaryGoal
          ? _value.primaryGoal
          : primaryGoal // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String,
      registrationCompleted: null == registrationCompleted
          ? _value.registrationCompleted
          : registrationCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      userPrivileges: freezed == userPrivileges
          ? _value.userPrivileges
          : userPrivileges // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$UserDataImplCopyWith<$Res>
    implements $UserDataCopyWith<$Res> {
  factory _$$UserDataImplCopyWith(
          _$UserDataImpl value, $Res Function(_$UserDataImpl) then) =
      __$$UserDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int userId,
      String jwt,
      String email,
      int userRoleId,
      int userPlanTypeId,
      String pwd,
      String firstName,
      String? lastName,
      String? image,
      int organisationId,
      String organisationName,
      bool licensekeyExpire,
      String createdAt,
      int isActive,
      int emailVerified,
      String primaryGoal,
      String designation,
      int registrationCompleted,
      dynamic userPrivileges});
}

/// @nodoc
class __$$UserDataImplCopyWithImpl<$Res>
    extends _$UserDataCopyWithImpl<$Res, _$UserDataImpl>
    implements _$$UserDataImplCopyWith<$Res> {
  __$$UserDataImplCopyWithImpl(
      _$UserDataImpl _value, $Res Function(_$UserDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? userId = null,
    Object? jwt = null,
    Object? email = null,
    Object? userRoleId = null,
    Object? userPlanTypeId = null,
    Object? pwd = null,
    Object? firstName = null,
    Object? lastName = freezed,
    Object? image = freezed,
    Object? organisationId = null,
    Object? organisationName = null,
    Object? licensekeyExpire = null,
    Object? createdAt = null,
    Object? isActive = null,
    Object? emailVerified = null,
    Object? primaryGoal = null,
    Object? designation = null,
    Object? registrationCompleted = null,
    Object? userPrivileges = freezed,
  }) {
    return _then(_$UserDataImpl(
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      userRoleId: null == userRoleId
          ? _value.userRoleId
          : userRoleId // ignore: cast_nullable_to_non_nullable
              as int,
      userPlanTypeId: null == userPlanTypeId
          ? _value.userPlanTypeId
          : userPlanTypeId // ignore: cast_nullable_to_non_nullable
              as int,
      pwd: null == pwd
          ? _value.pwd
          : pwd // ignore: cast_nullable_to_non_nullable
              as String,
      firstName: null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
      lastName: freezed == lastName
          ? _value.lastName
          : lastName // ignore: cast_nullable_to_non_nullable
              as String?,
      image: freezed == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      organisationId: null == organisationId
          ? _value.organisationId
          : organisationId // ignore: cast_nullable_to_non_nullable
              as int,
      organisationName: null == organisationName
          ? _value.organisationName
          : organisationName // ignore: cast_nullable_to_non_nullable
              as String,
      licensekeyExpire: null == licensekeyExpire
          ? _value.licensekeyExpire
          : licensekeyExpire // ignore: cast_nullable_to_non_nullable
              as bool,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as String,
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as int,
      emailVerified: null == emailVerified
          ? _value.emailVerified
          : emailVerified // ignore: cast_nullable_to_non_nullable
              as int,
      primaryGoal: null == primaryGoal
          ? _value.primaryGoal
          : primaryGoal // ignore: cast_nullable_to_non_nullable
              as String,
      designation: null == designation
          ? _value.designation
          : designation // ignore: cast_nullable_to_non_nullable
              as String,
      registrationCompleted: null == registrationCompleted
          ? _value.registrationCompleted
          : registrationCompleted // ignore: cast_nullable_to_non_nullable
              as int,
      userPrivileges: freezed == userPrivileges
          ? _value.userPrivileges
          : userPrivileges // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$UserDataImpl implements _UserData {
  const _$UserDataImpl(
      {required this.userId,
      required this.jwt,
      required this.email,
      required this.userRoleId,
      required this.userPlanTypeId,
      required this.pwd,
      required this.firstName,
      this.lastName,
      this.image,
      required this.organisationId,
      required this.organisationName,
      required this.licensekeyExpire,
      required this.createdAt,
      required this.isActive,
      required this.emailVerified,
      required this.primaryGoal,
      required this.designation,
      required this.registrationCompleted,
      this.userPrivileges});

  factory _$UserDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserDataImplFromJson(json);

  @override
  final int userId;
  @override
  final String jwt;
  @override
  final String email;
  @override
  final int userRoleId;
  @override
  final int userPlanTypeId;
  @override
  final String pwd;
  @override
  final String firstName;
  @override
  final String? lastName;
  @override
  final String? image;
  @override
  final int organisationId;
  @override
  final String organisationName;
  @override
  final bool licensekeyExpire;
  @override
  final String createdAt;
  @override
  final int isActive;
  @override
  final int emailVerified;
  @override
  final String primaryGoal;
  @override
  final String designation;
  @override
  final int registrationCompleted;
  @override
  final dynamic userPrivileges;

  @override
  String toString() {
    return 'UserData(userId: $userId, jwt: $jwt, email: $email, userRoleId: $userRoleId, userPlanTypeId: $userPlanTypeId, pwd: $pwd, firstName: $firstName, lastName: $lastName, image: $image, organisationId: $organisationId, organisationName: $organisationName, licensekeyExpire: $licensekeyExpire, createdAt: $createdAt, isActive: $isActive, emailVerified: $emailVerified, primaryGoal: $primaryGoal, designation: $designation, registrationCompleted: $registrationCompleted, userPrivileges: $userPrivileges)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserDataImpl &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.jwt, jwt) || other.jwt == jwt) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.userRoleId, userRoleId) ||
                other.userRoleId == userRoleId) &&
            (identical(other.userPlanTypeId, userPlanTypeId) ||
                other.userPlanTypeId == userPlanTypeId) &&
            (identical(other.pwd, pwd) || other.pwd == pwd) &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName) &&
            (identical(other.lastName, lastName) ||
                other.lastName == lastName) &&
            (identical(other.image, image) || other.image == image) &&
            (identical(other.organisationId, organisationId) ||
                other.organisationId == organisationId) &&
            (identical(other.organisationName, organisationName) ||
                other.organisationName == organisationName) &&
            (identical(other.licensekeyExpire, licensekeyExpire) ||
                other.licensekeyExpire == licensekeyExpire) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.emailVerified, emailVerified) ||
                other.emailVerified == emailVerified) &&
            (identical(other.primaryGoal, primaryGoal) ||
                other.primaryGoal == primaryGoal) &&
            (identical(other.designation, designation) ||
                other.designation == designation) &&
            (identical(other.registrationCompleted, registrationCompleted) ||
                other.registrationCompleted == registrationCompleted) &&
            const DeepCollectionEquality()
                .equals(other.userPrivileges, userPrivileges));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        userId,
        jwt,
        email,
        userRoleId,
        userPlanTypeId,
        pwd,
        firstName,
        lastName,
        image,
        organisationId,
        organisationName,
        licensekeyExpire,
        createdAt,
        isActive,
        emailVerified,
        primaryGoal,
        designation,
        registrationCompleted,
        const DeepCollectionEquality().hash(userPrivileges)
      ]);

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      __$$UserDataImplCopyWithImpl<_$UserDataImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserDataImplToJson(
      this,
    );
  }
}

abstract class _UserData implements UserData {
  const factory _UserData(
      {required final int userId,
      required final String jwt,
      required final String email,
      required final int userRoleId,
      required final int userPlanTypeId,
      required final String pwd,
      required final String firstName,
      final String? lastName,
      final String? image,
      required final int organisationId,
      required final String organisationName,
      required final bool licensekeyExpire,
      required final String createdAt,
      required final int isActive,
      required final int emailVerified,
      required final String primaryGoal,
      required final String designation,
      required final int registrationCompleted,
      final dynamic userPrivileges}) = _$UserDataImpl;

  factory _UserData.fromJson(Map<String, dynamic> json) =
      _$UserDataImpl.fromJson;

  @override
  int get userId;
  @override
  String get jwt;
  @override
  String get email;
  @override
  int get userRoleId;
  @override
  int get userPlanTypeId;
  @override
  String get pwd;
  @override
  String get firstName;
  @override
  String? get lastName;
  @override
  String? get image;
  @override
  int get organisationId;
  @override
  String get organisationName;
  @override
  bool get licensekeyExpire;
  @override
  String get createdAt;
  @override
  int get isActive;
  @override
  int get emailVerified;
  @override
  String get primaryGoal;
  @override
  String get designation;
  @override
  int get registrationCompleted;
  @override
  dynamic get userPrivileges;

  /// Create a copy of UserData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$UserDataImplCopyWith<_$UserDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
