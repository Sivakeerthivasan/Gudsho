import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gudsho/core/assets/assets.dart';
import 'package:gudsho/core/constants/styles/fonts_style.dart';

class OTPInputScreen extends StatefulWidget {
  const OTPInputScreen({super.key});

  @override
  _OTPInputScreenState createState() => _OTPInputScreenState();
}

class _OTPInputScreenState extends State<OTPInputScreen> {
  List<TextEditingController> controllers =
      List.generate(6, (index) => TextEditingController());
  List<FocusNode> focusNodes = List.generate(6, (index) => FocusNode());

  @override
  Widget build(BuildContext context) {
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
                      text: 'abishek.s@gmail.com',
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
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15),
                          ),
                          content: SizedBox(
                            height: 221,
                            width: 288,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check_circle,
                                  color: Colors.green,
                                  size: 80,
                                ),
                                SizedBox(height: 26),
                                Text('Successfully Verified',
                                    style: AppTextStyles.semiBold(
                                        fontWeight: FontWeight.w600,
                                        fontColor: Color(0xff0B4c51))),
                              ],
                            ),
                          ),
                        );
                      },
                    );
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
                        text: ' Resend', // Second line
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
