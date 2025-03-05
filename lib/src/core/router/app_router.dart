import 'package:go_router/go_router.dart';
import 'package:gudsho/src/core/router/not_found_screen.dart';
import 'package:gudsho/src/core/router/routes_constants.dart';
import 'package:gudsho/src/features/Authentication/domain/model/login_response_model.dart';
import 'package:gudsho/src/features/Authentication/presentation/pages/otp/otp_screen.dart';
import 'package:gudsho/src/features/Authentication/presentation/pages/resetPassword/reset_withMail.dart';
import 'package:gudsho/src/features/Authentication/presentation/pages/sign_in/sign_in_screen.dart';
import 'package:gudsho/src/features/Authentication/presentation/pages/register/register_screen.dart';
import 'package:gudsho/src/features/dashboard/presentation/dashboard.dart';

final goRouter = GoRouter(
  initialLocation: '/login',
  debugLogDiagnostics: false,
  routes: [
    GoRoute(
      path: AppRoute.signup.path,
      name: AppRoute.signup.name,
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: AppRoute.otp.path,
      name: AppRoute.otp.name,
      builder: (context, state) {
        final mapData = state.extra as Map<String, dynamic>?;
        final bool isTriggerOtp = mapData?['isGenerateOtp'] ?? false;
        final LoginResponse? loginResponse = mapData?['loginResponse'];
        final String? email = mapData?['email'];
        return OTPInputScreen(
          isGenerateOtp: isTriggerOtp,
          loginResponse: loginResponse,
          emailAddress: email,
        );
      },
    ),
    GoRoute(
      path: AppRoute.login.path,
      name: AppRoute.login.name,
      builder: (context, state) => const SignInScreen(),
    ),
    GoRoute(
      path: AppRoute.dashboard.path,
      name: AppRoute.dashboard.name,
      builder: (context, state) => const DashBoardScreen(),
    ),
    GoRoute(
      path: AppRoute.forgotpassword.path,
      name: AppRoute.forgotpassword.name,
      builder: (context, state) => const ResetWithmail(),
    ),
  ],
  errorBuilder: (context, state) => const NotFoundScreen(),
);
