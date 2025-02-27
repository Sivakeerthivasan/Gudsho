import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gudsho/core/assets/assets.dart';
import 'package:gudsho/core/constants/styles/fonts_style.dart';
import 'package:gudsho/features/Authentication/presentation/otp/otp_screen.dart';
import 'package:gudsho/features/Authentication/presentation/register/register_screen.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  bool obscureText = true;
  bool isChecked = true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
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
                          Color(0xffc2f3eb).withOpacity(0.0),
                        ],
                      ),
                    ),
                  ),
                  SvgPicture.asset(
                    Assets.gudshowLogo,
                  ),
                ],
              ),
              Text('Start Crafting Your Videos - \n Sign Up now!',
                  textAlign: TextAlign.center, style: AppTextStyles.semiBold()),
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
                height: 350,
                width: 330,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          "Full Name ",
                          style: AppTextStyles.medium(),
                        ),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 46,
                      width: 330,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        border: Border.all(color: Colors.grey, width: 1),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 12),
                        child: TextField(
                          style: TextStyle(color: Color(0xff6A6A6A)),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Email Address",
                          style: AppTextStyles.medium(),
                        ),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        ),
                      ],
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
                        child: TextField(
                          style: TextStyle(
                              color: Color(
                                  0xff6A6A6A)), // Text color inside TextField
                          decoration: InputDecoration(border: InputBorder.none),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text("Phone Number", style: AppTextStyles.medium()),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.red, fontSize: 16),
                        ),
                      ],
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
                      child: Row(
                        children: [
                          // Indian Flag
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8),
                              child: SvgPicture.asset(
                                Assets.indianFlag,
                                width: 23,
                                height: 15,
                              )),
                          InkWell(
                            onTap: () {},
                            child: Row(
                              children: [
                                Text(
                                  "+91",
                                  style: TextStyle(
                                    color: Color(0xff6A6A6A),
                                    fontSize: 16,
                                  ),
                                ),
                                SizedBox(
                                    width: 4), // Space between +91 and dropdown
                                Icon(Icons.arrow_drop_down_rounded,
                                    color: Color(0xff6A6A6A),
                                    size: 20), // Dropdown Arrow
                              ],
                            ),
                          ),
                          SizedBox(width: 8), // Space before vertical divider
                          // Vertical Divider
                          Container(
                            height: 20,
                            width: 1,
                            color: Color(0xff6A6A6A), // Vertical line color
                          ),
                          SizedBox(width: 8), // Space after vertical divider
                          // Phone Number TextField
                          Expanded(
                            child: TextField(
                              keyboardType: TextInputType.phone,
                              style: TextStyle(color: Color(0xff6A6A6A)),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        Text(
                          "Password",
                          style: AppTextStyles.medium(),
                        ),
                        Text(
                          "*",
                          style: TextStyle(color: Colors.red, fontSize: 16),
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
                          // Password TextField
                          Expanded(
                            child: TextField(
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
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 60,
                width: 332,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: const EdgeInsets.only(top: 3),
                        child: GestureDetector(
                          onTap: () {
                            setState(() {
                              isChecked = !isChecked; // Toggle checkbox state
                            });
                          },
                          child: Container(
                            height: 16,
                            width: 16,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(2),
                              color: isChecked
                                  ? Colors.blue
                                  : Colors.white, // Black when checked
                              border: Border.all(color: Colors.grey),
                            ),
                            child: isChecked
                                ? Icon(Icons.check,
                                    color: Colors.white, size: 12) // Tick icon
                                : null, // Empty when not checked
                          ),
                        )),
                    SizedBox(
                      width: 10,
                    ),
                    RichText(
                      textAlign: TextAlign.start,
                      text: TextSpan(
                        style: TextStyle(
                          height: 1.4,
                          fontSize: 12,
                          color: Color(0xff000000),
                        ),
                        // Default text style
                        children: [
                          TextSpan(
                            text: "By continuing, you're agreeing to Gudsho ",
                          ),
                          TextSpan(
                            text: "Terms of \nService",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text: " and ",
                          ),
                          TextSpan(
                            text: "Privacy Policy",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              decoration: TextDecoration.underline,
                            ),
                          ),
                          TextSpan(
                            text:
                                ". Consent includes receiving \nmarketing information from Gudsho.",
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const OTPInputScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff0B4C51),
                  foregroundColor: Color(0xffFFFFFF),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 140, vertical: 12),
                ),
                child: Text(
                  "Sign Up",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const RegisterScreen()),
                      );
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
    );
  }
}
