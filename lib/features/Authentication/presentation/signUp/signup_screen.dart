import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gudsho/core/assets/assets.dart';
import 'package:gudsho/core/constants/styles/colors.dart';
import 'package:gudsho/core/constants/styles/fonts_style.dart';
import 'package:gudsho/features/Authentication/presentation/otp/otp_screen.dart';
import 'package:gudsho/features/Authentication/presentation/register/register_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  bool obscureText = true;
  bool isChecked = false;
  final fullNameFocus = FocusNode();
  final emailFocus = FocusNode();
  final phoneFocus = FocusNode();
  final passwordFocus = FocusNode();
  final TextEditingController _controller = TextEditingController();
  TextEditingController emailController = TextEditingController();
  bool isValidEmail = true;
  String? _errorText;

  void _validateInput(String value) {
    setState(() {
      _errorText = value.length > 50 ? "Maximum 50 characters allowed." : null;
    });
  }

  void validateEmail(String value) {
    setState(() {
      if (value.isEmpty) {
        isValidEmail = true;
      } else {
        isValidEmail =
            RegExp(r'^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$')
                .hasMatch(value);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
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
        body: SingleChildScrollView(
          reverse: true,
          child: Padding(
            padding: const EdgeInsets.only(left: 23, right: 23),
            child: Column(
              children: [
                Text('Start Crafting Your Videos - \n Sign Up now!',
                    textAlign: TextAlign.center,
                    style: AppTextStyles.semiBold()),
                SizedBox(height: 30),
                //Google and linked in
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
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

                    // Facebook Button
                    Container(
                      width: MediaQuery.of(context).size.width * 0.4,
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
                SizedBox(height: 20),
                //4 Textfield
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            "Full Name ",
                            style: AppTextStyles.medium(
                                fontColor: AppColors.textfieldName),
                          ),
                          Text(
                            "*",
                            style: TextStyle(
                                color: AppColors.errorText, fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: _controller,
                        textInputAction: TextInputAction.next,
                        focusNode: fullNameFocus,
                        onFieldSubmitted: (value) {
                          FocusScope.of(context).requestFocus(emailFocus);
                        },
                        onChanged: _validateInput,
                        style: TextStyle(color: AppColors.inputText),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                              color: _errorText != null
                                  ? AppColors.errorText
                                  : AppColors.textfieldBorder,
                              width: 1,
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                              color: _errorText != null
                                  ? AppColors.errorText
                                  : AppColors.focusedBorder,
                              width: 1,
                            ),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                              color: _errorText != null
                                  ? AppColors.errorText
                                  : AppColors.textfieldBorder,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      if (_errorText != null)
                        Padding(
                          padding: const EdgeInsets.only(top: 4, right: 20),
                          child: Text(
                            _errorText!,
                            style: TextStyle(
                                color: AppColors.errorText, fontSize: 12),
                          ),
                        ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text(
                            "Email Address",
                            style: AppTextStyles.medium(
                                fontColor: AppColors.textfieldName),
                          ),
                          Text(
                            "*",
                            style: TextStyle(
                                color: AppColors.errorText, fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        controller: emailController,
                        focusNode: emailFocus,
                        textInputAction: TextInputAction.next,
                        onFieldSubmitted: (value) {
                          FocusScope.of(context).requestFocus(phoneFocus);
                        },
                        onChanged: validateEmail,
                        style: TextStyle(color: AppColors.inputText),
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
                      if (!isValidEmail)
                        Padding(
                          padding: EdgeInsets.only(top: 5, right: 20),
                          child: Text(
                            "Please enter a valid email address",
                            style: TextStyle(
                                color: AppColors.errorText, fontSize: 12),
                          ),
                        ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: [
                          Text("Phone Number",
                              style: AppTextStyles.medium(
                                  fontColor: AppColors.textfieldName)),
                          Text(
                            "*",
                            style: TextStyle(
                                color: AppColors.errorText, fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        maxLength: 10,
                        textInputAction: TextInputAction.next,
                        focusNode: phoneFocus,
                        onFieldSubmitted: (value) {
                          FocusScope.of(context).requestFocus(passwordFocus);
                        },
                        keyboardType: TextInputType.phone,
                        style: TextStyle(color: AppColors.inputText),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 12),
                          prefixIcon: Padding(
                            padding: EdgeInsets.symmetric(horizontal: 8),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                SvgPicture.asset(
                                  Assets.indianFlag,
                                  width: 23,
                                  height: 15,
                                ),
                                SizedBox(width: 8),
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
                                      SizedBox(width: 4),
                                      Icon(Icons.arrow_drop_down_rounded,
                                          color: Color(0xff6A6A6A), size: 20),
                                    ],
                                  ),
                                ),
                                SizedBox(width: 8),
                                Container(
                                  height: 20,
                                  width: 1,
                                  color: Color(0xff6A6A6A),
                                ),
                                SizedBox(width: 8),
                              ],
                            ),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                                color: AppColors.textfieldBorder, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                                color: AppColors.focusedBorder, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                                color: AppColors.textfieldBorder, width: 1),
                          ),
                        ),
                      ),
                      Row(
                        children: [
                          Text(
                            "Password",
                            style: AppTextStyles.medium(
                                fontColor: AppColors.textfieldName),
                          ),
                          Text(
                            "*",
                            style: TextStyle(
                                color: AppColors.errorText, fontSize: 16),
                          ),
                        ],
                      ),
                      SizedBox(height: 10),
                      TextFormField(
                        textInputAction: TextInputAction.done,
                        focusNode: passwordFocus,
                        onFieldSubmitted: (value) {
                          passwordFocus.unfocus();
                        },
                        obscureText: obscureText,
                        style:
                            TextStyle(color: AppColors.inputText, fontSize: 16),
                        decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(horizontal: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                                color: AppColors.textfieldBorder, width: 1),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                                color: AppColors.focusedBorder, width: 1),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(4),
                            borderSide: BorderSide(
                                color: AppColors.textfieldBorder, width: 1),
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
                      )
                    ],
                  ),
                ),
                SizedBox(height: 10),
                //checkbox and conditons
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
                                isChecked = !isChecked;
                              });
                            },
                            child: Container(
                              height: 16,
                              width: 16,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2),
                                color: isChecked ? Colors.blue : Colors.white,
                                border: Border.all(
                                    color: AppColors.textfieldBorder),
                              ),
                              child: isChecked
                                  ? Icon(Icons.check,
                                      color: Colors.white, size: 12)
                                  : null,
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
                            color: AppColors.textClickBOLD,
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
                SizedBox(height: 10),
                //Signup button
                SizedBox(
                  height: 46,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OTPInputScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.buttonColor,
                      foregroundColor: AppColors.buttonText,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    child: Text(
                      "Sign Up",
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
                SizedBox(height: 10),
                //Navigate to sign in page
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already have an account?',
                      style: AppTextStyles.medium(
                          fontSize: 12, fontColor: AppColors.textNoClick),
                    ),
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
                        style: AppTextStyles.medium(
                            fontWeight: FontWeight.bold, fontSize: 12),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
