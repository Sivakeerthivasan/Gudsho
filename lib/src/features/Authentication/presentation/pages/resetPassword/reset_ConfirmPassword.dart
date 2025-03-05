import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gudsho/src/core/assets/assets.dart';
import 'package:gudsho/src/core/constants/styles/fonts_style.dart';

class ResetConfirmpassword extends StatefulWidget {
  const ResetConfirmpassword({super.key});

  @override
  State<ResetConfirmpassword> createState() => _ResetConfirmpasswordState();
}

class _ResetConfirmpasswordState extends State<ResetConfirmpassword> {
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
          Text('Reset your Password',
              textAlign: TextAlign.center,
              style: AppTextStyles.semiBold(
                  fontSize: 20, fontWeight: FontWeight.w600)),
          SizedBox(
            height: 70,
          ),
          SizedBox(
            height: 200,
            width: 330,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "New Password",
                  style: AppTextStyles.medium(),
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
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Confirm Password",
                  style: AppTextStyles.medium(),
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
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xff0B4C51),
              foregroundColor: Color(0xffFFFFFF),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              padding: EdgeInsets.symmetric(horizontal: 150, vertical: 12),
            ),
            child: Text(
              "Submit",
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
              Text(
                ' Sign in',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          )
        ],
      ),
    ));
  }
}
