import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:gudsho/src/core/assets/assets.dart';
import 'package:gudsho/src/core/constants/styles/colors.dart';
import 'package:gudsho/src/core/constants/styles/fonts_style.dart';
import 'package:gudsho/src/core/router/routes_constants.dart';
import 'package:gudsho/src/core/utils/form_validator.dart';
import 'package:gudsho/src/features/Authentication/presentation/controllers/auth_controller.dart';
import 'package:gudsho/src/features/Authentication/presentation/controllers/auth_state.dart';

class ResetWithmail extends ConsumerStatefulWidget {
  const ResetWithmail({super.key});

  @override
  ConsumerState<ResetWithmail> createState() => _ResetWithmailState();
}

class _ResetWithmailState extends ConsumerState<ResetWithmail> {
  final _emailController = TextEditingController();
  final _key = GlobalKey<FormState>();
  bool isValidEmail = true;

  @override
  void dispose() {
    super.dispose();
    _emailController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      authControllerProvider,
      (previous, next) {
        if (next is PasswordResetSentSuccess) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(next.message)));
          _emailController.clear();
        } else if (next is PasswordResetError) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(next.error.errMsg)));
        }
      },
    );
    ref.watch(authControllerProvider);
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
          key: _key,
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(left: 23, right: 23),
              child: Column(
                children: [
                  Text('Reset your Password',
                      textAlign: TextAlign.center,
                      style: AppTextStyles.semiBold(
                          fontSize: 20, fontWeight: FontWeight.w600)),
                  SizedBox(
                    height: 60,
                  ),
                  Column(
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
                        textInputAction: TextInputAction.done,
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
                    ],
                  ),
                  SizedBox(height: 30),
                  SizedBox(
                    height: 46,
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_key.currentState!.validate()) {
                          ref
                              .read(authControllerProvider.notifier)
                              .passwordReset(_emailController.text.trim());
                        }
                        // Navigator.push(
                        //   context,
                        //   MaterialPageRoute(
                        //       builder: (context) => const ResetConfirmpassword()),
                        // );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xff0B4C51),
                        foregroundColor: Color(0xffFFFFFF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                        padding:
                            EdgeInsets.symmetric(horizontal: 150, vertical: 12),
                      ),
                      child: Text(
                        "Submit",
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Already have an account?'),
                      GestureDetector(
                        onTap: () {
                          debugPrint('On tap is working');
                          context.pushNamed(AppRoute.login.name);
                        },
                        child: Text(
                          ' Sign in',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
