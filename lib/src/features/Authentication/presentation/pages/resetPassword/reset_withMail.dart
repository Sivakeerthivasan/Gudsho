import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gudsho/src/core/assets/assets.dart';
import 'package:gudsho/src/core/constants/styles/fonts_style.dart';
import 'package:gudsho/src/features/Authentication/presentation/pages/resetPassword/reset_ConfirmPassword.dart';

class ResetWithmail extends StatefulWidget {
  const ResetWithmail({super.key});

  @override
  State<ResetWithmail> createState() => _ResetWithmailState();
}

class _ResetWithmailState extends State<ResetWithmail> {
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
              height: 60,
            ),
            SizedBox(
              height: 100,
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
                      border: Border.all(color: Colors.grey, width: 1),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 12),
                      child: TextField(
                        style: TextStyle(color: Color(0xff6A6A6A)),
                        decoration: InputDecoration(border: InputBorder.none),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ResetConfirmpassword()),
                );
              },
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
      ),
    );
  }
}
