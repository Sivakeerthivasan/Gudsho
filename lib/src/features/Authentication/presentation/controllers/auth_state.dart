import 'package:gudsho/src/core/error/custom_error.dart';
import 'package:gudsho/src/features/Authentication/domain/model/login_response_model.dart';

sealed class AuthState {
  const AuthState();
}

final class AuthInitialState extends AuthState {
  const AuthInitialState();

  @override
  String toString() => 'WeatherStateInitial()';
}

final class AuthLoadingState extends AuthState {
  const AuthLoadingState();

  @override
  String toString() => 'AuthLoadingState()';
}

final class AuthSuccessState extends AuthState {
  final LoginResponse loginResModel;
  const AuthSuccessState({required this.loginResModel});

  @override
  String toString() => 'AuthSuccessState';
}

final class AuthFailureState extends AuthState {
  final CustomError error;
  const AuthFailureState({
    required this.error,
  });

  @override
  String toString() => 'Auth Failure (error: $error)';
}

//! OTP SCREEN STATES
final class OtpSentState extends AuthState {
  const OtpSentState();
  @override
  String toString() => 'OtpSentState()';
}

final class OtpLoadingState extends AuthState {
  const OtpLoadingState();
  String toString() => 'OtpLoadingState()';
}

final class OtpErrorState extends AuthState {
  final CustomError error;
  const OtpErrorState({required this.error});
}

final class OtpSuccessState extends AuthState {
  const OtpSuccessState();
}
final class OtpResentLoading extends AuthState {
  const OtpResentLoading();
}

final class OtpResentSuccess extends AuthState {
  final String message;
  const OtpResentSuccess({required this.message});
}

final class OtpResentFailure extends AuthState {
  final CustomError error;
  const OtpResentFailure({required this.error});
}
