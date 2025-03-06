import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:gudsho/src/core/assets/assets.dart';
import 'package:gudsho/src/core/constants/styles/colors.dart';
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
  bool isValidEmail = true;
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
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.white,
        titleSpacing: 0,
        toolbarHeight: 80,
        title: Container(
          width: double.infinity,
          padding: EdgeInsets.zero,
          margin: EdgeInsets.zero,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Container(
                height: 80,
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
        ),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(left: 23, right: 23),
            child: Column(
              children: [
                Text("Let's get you registered",
                    textAlign: TextAlign.center,
                    style: AppTextStyles.semiBold(
                        fontSize: 20, fontWeight: FontWeight.w600)),
                SizedBox(height: 30),
                //Google and linked in
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width / 2.3,
                      height: 45,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: AppColors.borderGL),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset(
                            Assets.googleIcon,
                            height: 40,
                            width: 40,
                          ),
                          Text("Google",
                              style: AppTextStyles.medium(
                                  fontColor: AppColors.textClick)),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width / 2.4,
                      height: 45,
                      padding:
                          EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(7),
                        border: Border.all(color: AppColors.borderGL),
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
                            style: AppTextStyles.medium(
                                fontColor: AppColors.textClick),
                            textAlign: TextAlign.center,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                //Or design
                SizedBox(
                  height: 13,
                  width: MediaQuery.of(context).size.width * 0.9,
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
                SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Email Address",
                        style: AppTextStyles.medium(),
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        validator: TextFormFieldValidator.emailValidator,
                        controller: _emailController,
                        textInputAction: TextInputAction.next,
                        style: TextStyle(color: Color(0xff6A6A6A)),
                        decoration: InputDecoration(
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 12),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                  color: isValidEmail
                                      ? AppColors.textfieldBorder
                                      : AppColors.errorText,
                                  width: 1),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                  color: isValidEmail
                                      ? AppColors.focusedBorder
                                      : AppColors.errorText,
                                  width: 1),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(4),
                              borderSide: BorderSide(
                                  color: isValidEmail
                                      ? AppColors.textfieldBorder
                                      : AppColors.errorText,
                                  width: 1),
                            )),
                      ),
                      SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            "Password",
                            style: AppTextStyles.medium(),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Expanded(
                            child: TextFormField(
                              controller: _passwordController,
                              validator:
                                  TextFormFieldValidator.passwordValidator,
                              obscureText: obscureText, // Show/hide password
                              style: TextStyle(
                                  color: Color(0xff6A6A6A), fontSize: 16),
                              decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.symmetric(horizontal: 10),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      color: AppColors.textfieldBorder,
                                      width: 1),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      color: AppColors.focusedBorder, width: 1),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(4),
                                  borderSide: BorderSide(
                                      color: AppColors.textfieldBorder,
                                      width: 1),
                                ),
                                suffixIcon: IconButton(
                                  iconSize: 24,
                                  icon: Icon(
                                    obscureText
                                        ? Icons.visibility_off_outlined
                                        : Icons.visibility_outlined,
                                    color: Color(0xff6A6A6A),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      obscureText = !obscureText;
                                    });
                                  },
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                //ForgetPass button
                InkWell(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => ResetWithmail()),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(
                      left: 254,
                    ),
                    child: Text(
                      'Forgot password?',
                      style: AppTextStyles.medium(
                          fontSize: 12, fontColor: Color(0xff4F5862)),
                    ),
                  ),
                ),
                SizedBox(height: 30),
                SizedBox(
                  width: double.infinity,
                  height: 46,
                  child: ElevatedButton(
                    onPressed: () {
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
                      padding:
                          EdgeInsets.symmetric(horizontal: 145, vertical: 12),
                    ),
                    child: authState is AuthLoadingState
                        ? Center(
                            child: CircularProgressIndicator(),
                          )
                        : Text(
                            "Sign in",
                            style: TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                  ),
                ),
                SizedBox(height: 10),
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                          text: "Dont't receive a code?",
                          style: AppTextStyles.medium(
                              fontSize: 12, fontColor: Color(0xff6A6A6A))),
                      TextSpan(
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              context.goNamed(AppRoute.signup.name);
                            },
                          text: ' Sign up',
                          style: AppTextStyles.medium(
                              fontSize: 12, fontColor: Color(0xff000000))),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
