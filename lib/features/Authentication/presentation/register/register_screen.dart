import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gudsho/core/assets/assets.dart';
import 'package:gudsho/core/constants/styles/fonts_style.dart';
import 'package:gudsho/features/Authentication/presentation/homeScreen.dart';
import 'package:gudsho/features/Authentication/presentation/resetPassword/reset_withMail.dart';
import 'package:gudsho/features/Authentication/presentation/signUp/signup_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  bool obscureText = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
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
                    border:
                        Border.all(color: Colors.grey, width: 1), // Grey border
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: 12), // Padding for TextField
                    child: TextField(
                      style: TextStyle(
                          color:
                              Color(0xff6A6A6A)), // Text color inside TextField
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
                        child: TextField(
                          obscureText: obscureText, // Show/hide password
                          style:
                              TextStyle(color: Color(0xff6A6A6A), fontSize: 16),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            contentPadding:
                                EdgeInsets.symmetric(horizontal: 10),
                          ),
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          obscureText ? Icons.visibility_off : Icons.visibility,
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Homescreen()),
              );
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff0B4C51),
              foregroundColor: Color(0xffFFFFFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              padding: EdgeInsets.symmetric(horizontal: 145, vertical: 12),
            ),
            child: Text(
              "Sign in",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignupScreen()),
                        );
                      },
                    text: ' Sign up', // Second line
                    style: AppTextStyles.medium(
                        fontSize: 12, fontColor: Color(0xff000000))),
              ],
            ),
          ),
        ],
      ),
    ));
  }
}
