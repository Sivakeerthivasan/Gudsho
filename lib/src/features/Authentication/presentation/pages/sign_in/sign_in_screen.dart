import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:gudsho/src/core/assets/assets.dart';
import 'package:gudsho/src/core/constants/styles/fonts_style.dart';
import 'package:gudsho/src/core/router/routes_constants.dart';
import 'package:gudsho/src/core/utils/form_validator.dart';
import 'package:gudsho/src/features/Authentication/domain/request_model/login_request_model.dart';
import 'package:gudsho/src/features/Authentication/presentation/controllers/auth_controller.dart';
import 'package:gudsho/src/features/Authentication/presentation/controllers/auth_state.dart';
import 'package:gudsho/src/features/Authentication/presentation/pages/resetPassword/reset_withMail.dart';

class SignInScreen extends ConsumerStatefulWidget {
  const SignInScreen({super.key});

  @override
  ConsumerState<SignInScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends ConsumerState<SignInScreen> {
  bool obscureText = true;
  Future<void> signIn() async {
    final loginReq = LoginInReqModel(
        email: _emailController.text.trim(),
        password: _passwordController.text.trim());
    ref.read(authControllerProvider.notifier).signInUser(loginReq);
  }

  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
    _passwordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      authControllerProvider,
      (previous, next) {
        if (next is AuthFailureState) {
          //! TODO SHOW ERROR DIALOG
          //! show dialog next.error
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(next.error.errMsg)));
          // next.error
        } else if (next is AuthSuccessState) {
          final int emailVerifiedCodeStatus =
              next.loginResModel.data.emailVerified;
          if (emailVerifiedCodeStatus == 0) {
            context.pushNamed(AppRoute.otp.name, extra: {
              'isGenerateOtp': true,
              'loginResponse': next.loginResModel
            });
          } else {
            context.goNamed(AppRoute.dashboard.name);
          }
        }
      },
    );
    final authState = ref.watch(authControllerProvider);
    return SafeArea(
        child: Scaffold(
      body: Form(
        key: _formKey,
        child: Column(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  height: 80,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xffc2f3eb),
                        Color(0xffc2f3eb).withValues(alpha: 0.0),
                      ],
                    ),
                  ),
                ),
                SvgPicture.asset(
                  Assets.gudshowLogo,
                ),
              ],
            ),
            Text("Let's get you registered",
                textAlign: TextAlign.center,
                style: AppTextStyles.semiBold(
                    fontSize: 20, fontWeight: FontWeight.w600)),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 161,
                  height: 45,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        Assets.googleIcon,
                        height: 40,
                        width: 40,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text("Google", style: AppTextStyles.medium()),
                    ],
                  ),
                ),
                SizedBox(
                  width: 10,
                ),

                // Facebook Button
                Container(
                  width: 161,
                  height: 45,
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(7),
                    border: Border.all(color: Colors.grey),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SvgPicture.asset(
                        "assets/svg/linkedin_icon.svg",
                        height: 40,
                        width: 40,
                      ),
                      Text(
                        "Linkedin",
                        style: AppTextStyles.medium(),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 13,
              width: 329,
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.grey,
                            Colors.grey.withValues(alpha: 0.0)
                          ],
                          begin: Alignment.centerRight,
                          end: Alignment.centerLeft,
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8),
                    child: Text("Or", style: AppTextStyles.regular()),
                  ),
                  Expanded(
                    child: Container(
                      height: 1,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.grey,
                            Colors.grey.withValues(alpha: 0.0)
                          ],
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              height: 180,
              width: 330,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Email Address",
                    style: AppTextStyles.medium(),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 46,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                          color: Colors.grey, width: 1), // Grey border
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12), // Padding for TextField
                      child: TextFormField(
                        validator: TextFormFieldValidator.emailValidator,
                        controller: _emailController,
                        style: TextStyle(
                            color: Color(
                                0xff6A6A6A)), // Text color inside TextField
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      Text(
                        "Password",
                        style: AppTextStyles.medium(),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 46,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(color: Colors.grey), // Grey border
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextFormField(
                            controller: _passwordController,
                            validator: TextFormFieldValidator.passwordValidator,
                            obscureText: obscureText, // Show/hide password
                            style: TextStyle(
                                color: Color(0xff6A6A6A), fontSize: 16),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 10),
                            ),
                          ),
                        ),
                        IconButton(
                          icon: Icon(
                            obscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: Color(0xff6A6A6A),
                          ),
                          onPressed: () {
                            setState(() {
                              obscureText = !obscureText;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 220),
              child: InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ResetWithmail()),
                  );
                },
                child: Text(
                  'Forgot password?',
                  style: AppTextStyles.medium(
                      fontSize: 12, fontColor: Color(0xff4F5862)),
                ),
              ),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                //Form is validated using formkey
                if (_formKey.currentState!.validate()) {
                  signIn();
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff0B4C51),
                foregroundColor: Color(0xffFFFFFF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
                padding: EdgeInsets.symmetric(horizontal: 145, vertical: 12),
              ),
              child: authState is AuthLoadingState
                  ? Center(
                      child: CircularProgressIndicator(),
                    )
                  : Text(
                      "Sign in",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                children: [
                  TextSpan(
                      text: "Dont't receive a code?", // First line
                      style: AppTextStyles.medium(
                          fontSize: 12, fontColor: Color(0xff6A6A6A))),
                  TextSpan(
                      recognizer: TapGestureRecognizer()
                        ..onTap = () {
                          context.goNamed(AppRoute.signup.name);
                        },
                      text: ' Sign up', // Second line
                      style: AppTextStyles.medium(
                          fontSize: 12, fontColor: Color(0xff000000))),
                ],
              ),
            ),
          ],
        ),
      ),
    ));
  }
}
