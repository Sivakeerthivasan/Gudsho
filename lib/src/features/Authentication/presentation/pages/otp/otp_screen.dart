import 'dart:developer';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:gudsho/src/core/assets/assets.dart';
import 'package:gudsho/src/core/constants/styles/fonts_style.dart';
import 'package:gudsho/src/core/router/routes_constants.dart';
import 'package:gudsho/src/features/Authentication/domain/model/login_response_model.dart';
import 'package:gudsho/src/features/Authentication/domain/request_model/otp_request_model.dart';
import 'package:gudsho/src/features/Authentication/presentation/controllers/auth_controller.dart';
import 'package:gudsho/src/features/Authentication/presentation/controllers/auth_state.dart';

class OTPInputScreen extends ConsumerStatefulWidget {
  const OTPInputScreen(
      {super.key,
      this.isGenerateOtp = false,
      this.loginResponse,
      this.emailAddress});
  final bool isGenerateOtp;
  final LoginResponse? loginResponse;
  final String? emailAddress;

  @override
  ConsumerState createState() => _OTPInputScreenState();
}

class _OTPInputScreenState extends ConsumerState<OTPInputScreen> {
  List<TextEditingController> controllers =
      List.generate(6, (index) => TextEditingController());
  List<FocusNode> focusNodes = List.generate(6, (index) => FocusNode());
  String email = '';

  Future<void> validateOtp() async {
    final otp = getOTP();

    log(otp.toString());
    final otpReqModel = OtpReqModel(email: email, otpCode: otp);
    ref.read(authControllerProvider.notifier).otpValidate(otpReqModel);
  }

  Future<void> resendOtp() async {
    ref.read(authControllerProvider.notifier).resendOtp(email);
  }

  int getOTP() {
    String otpString = controllers.map((controller) => controller.text).join();
    if (otpString.length != 6) {
      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text("Please Enter all the required fields")));
    }
    return int.tryParse(otpString) ?? 0; // Default to 0 if parsing fails
  }

  @override
  void initState() {
    super.initState();
    email = widget.emailAddress ?? widget.loginResponse!.data.email;
    if (widget.isGenerateOtp) {
      Future(() => resendOtp());
    }
  }

  @override
  void dispose() {
    super.dispose();
    //! TODO dispose all the textediting controllers
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(
      authControllerProvider,
      (previous, next) {
        if (next is OtpErrorState) {
          //! show dialog next.error
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(next.error.errMsg)));
        } else if (next is OtpSuccessState) {
          //! navigate to dashboard
          context.goNamed(AppRoute.dashboard.name);
        } else if (next is OtpResentSuccess) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(next.message)));
        }
      },
    );
    final authState = ref.watch(authControllerProvider);
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
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
        body: Padding(
          padding: const EdgeInsets.only(left: 23, right: 23),
          child: Column(
            children: [
              Text('Enter OTP Code',
                  textAlign: TextAlign.center,
                  style: AppTextStyles.semiBold(
                      fontSize: 20, fontWeight: FontWeight.w600)),
              SizedBox(
                height: 10,
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                        text: 'Code has been sent to your email id\n',
                        style: AppTextStyles.regular(
                            fontSize: 12, fontColor: Color(0xff4f5862))),
                    TextSpan(
                      text: email,
                      style: TextStyle(
                        fontSize: 12,
                        color: Color(0xff4f5862),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 60,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(6, (index) {
                  return Container(
                    width: 40,
                    height: 40,
                    margin: EdgeInsets.symmetric(horizontal: 5),
                    child: TextFormField(
                      controller: controllers[index],
                      focusNode: focusNodes[index],
                      textAlign: TextAlign.center,
                      keyboardType: TextInputType.number,
                      maxLength: 1,
                      style: AppTextStyles.medium(fontSize: 16),
                      decoration: InputDecoration(
                          counterText: '',
                          contentPadding: EdgeInsets.only(bottom: 4),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide:
                                BorderSide(color: Color(0xffB3BAC2), width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide:
                                BorderSide(color: Colors.black, width: 1),
                          )),
                      onChanged: (value) {
                        if (value.isEmpty && index > 0) {
                          FocusScope.of(context)
                              .requestFocus(focusNodes[index - 1]);
                        } else if (value.isNotEmpty && index < 5) {
                          FocusScope.of(context)
                              .requestFocus(focusNodes[index + 1]);
                        } else if (index == 5 && value.isNotEmpty) {
                          FocusScope.of(context).unfocus();
                        }
                      },
                    ),
                  );
                }),
              ),
              SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 46,
                width: 245,
                child: ElevatedButton(
                  onPressed: () {
                    validateOtp();
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff0B4C51),
                    foregroundColor: Color(0xffFFFFFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  child: Text(
                    "Verify OTP",
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
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
                            resendOtp();
                          },
                        text: 'Resend', // Second line
                        style: AppTextStyles.medium(
                            fontSize: 12, fontColor: Color(0xff000000))),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
