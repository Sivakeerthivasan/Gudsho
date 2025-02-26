import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gudsho/core/assets/assets.dart';
import 'package:gudsho/core/constants/styles/fonts_style.dart';

class SigninScreen extends StatefulWidget {
  const SigninScreen({super.key});

  @override
  State<SigninScreen> createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20, bottom: 20),
              child: SvgPicture.asset(Assets.gudshowLogo),
            ),
            // SizedBox(
            //   height: 40,
            // ),
            Text('Start Crafting Your Videos - \n Sign Up now!',
                textAlign: TextAlign.center, style: AppTextStyles.semiBold()),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Google Button
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
                    children: [
                      SvgPicture.asset(
                        "assets/svg/google_icon.svg",
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
                  Text("Full Name"),
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
                            color: Colors.white), // Text color inside TextField
                        decoration: InputDecoration(
                          border: InputBorder.none, // Removes default underline
                          // Hint text color
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Email Address"),
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
                            color: Colors.white), // Text color inside TextField
                        decoration: InputDecoration(
                          border: InputBorder.none, // Removes default underline
                          // Hint text color
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Phone Number"),
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
                              width: 24,
                              height: 24,
                            )),
                        // Country Code + Dropdown Arrow
                        InkWell(
                          onTap: () {
                            // Handle country code dropdown selection here
                          },
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
                              Icon(Icons.arrow_drop_down,
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
                            style: TextStyle(color: Colors.white),
                            decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: "Enter phone number",
                              hintStyle: TextStyle(
                                  color: Color(0xff6A6A6A), fontSize: 14),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Password"),
                  SizedBox(height: 10),
                  Container(
                    height: 46,
                    width: 330,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(4),
                        color: Colors.black38),
                  ),
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
                    child: Container(
                      height: 16,
                      width: 16,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(2),
                          color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "By continuing,you're agreeing to Gudsho Terms of \n service and Privacypolicy.Consent includes receiving \n marketing information from Gudsho",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 12),
                  )
                ],
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff0B4C51), // Button background color
                foregroundColor: Color(0xffFFFFFF), // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25), // Rounded corners
                ),
                padding: EdgeInsets.symmetric(
                    horizontal: 140, vertical: 12), // Padding
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
                Text(
                  ' Sign in',
                  style: TextStyle(fontWeight: FontWeight.bold),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
