import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gudsho/src/core/assets/assets.dart';
import 'package:gudsho/src/core/constants/styles/fonts_style.dart';
import 'package:gudsho/src/core/extensions/responsive_extension.dart';
import 'package:gudsho/src/features/dashboard/presentation/widgets/custom_button.dart';
import 'package:gudsho/src/features/dashboard/presentation/widgets/stacked_social_icon.dart';

class HomePageTab extends StatefulWidget {
  const HomePageTab({
    super.key,
  });

  @override
  State<HomePageTab> createState() => _HomePageTabState();
}

class _HomePageTabState extends State<HomePageTab> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          leading: SvgPicture.asset(
            Assets.gudshowThumb,
            height: 28,
            width: 19,
          ),
          actions: [
            CircleAvatar(
              child: Container(),
            ),
            SizedBox(width: 16),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 17,
                ),
                ClipRRect(
                  child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Color(0xFFF4F5F6),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                      gradient: LinearGradient(
                        colors: [
                          Color(0xFFECFFF3),
                          Color(0xFFFBFFFD),
                        ],
                        begin: Alignment
                            .centerLeft, // Gradient starts from top-left
                        end: Alignment
                            .centerRight, // Gradient ends at bottom-right
                      ),
                    ),
                    height: context.h(136),
                    width: constraints.maxWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              SizedBox(
                                height: constraints.maxHeight * 0.04,
                              ),
                              Text(
                                textAlign: TextAlign.left,
                                'Hello, John martin\nGood Morning...',
                                style: AppTextStyles.semiBold(),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Align(
                              alignment: Alignment.bottomRight,
                              child: SvgPicture.asset(Assets.helloDashboard)),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Expanded(
                      child: CustomButton(
                        color: Color(0xFFFF8A65), // Coral shade
                        iconPath: Assets
                            .newPostIcon, // Replace with actual asset path
                        label: 'Post',
                      ),
                    ),
                    SizedBox(width: 10), // Spacing between buttons
                    Expanded(
                      child: CustomButton(
                        color: Color(0xFFFFF176), // Yellow shade
                        iconPath:
                            Assets.trimIcon, // Replace with actual asset path
                        label: 'Trim & Craft',
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 3, vertical: 34),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Connect Your Social Accounts!",
                          style: AppTextStyles.semiBold(),
                        ),
                        SizedBox(height: 10),
                        Text(
                          "Link your social accounts to post and grow effortlessly. More connections, better results!",
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 16),
                        StackedIcons(
                          iconPaths: [
                            Assets.youtubeIcon,
                            Assets.facebookIcon,
                            Assets.instagramIcon,
                            Assets.linkedInRoundedIcon,
                            Assets.xIcon,
                          ],
                          spacing: 20,
                          iconSize: 28,
                        ),
                        SizedBox(height: 31),
                        ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: WidgetStatePropertyAll<Color>(
                                Color(0xFF0B4C51)), // Button background color
                            foregroundColor: WidgetStatePropertyAll<Color>(
                                Colors.white), // Text color
                            shape:
                                WidgetStatePropertyAll<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ),
                          child: Text(
                            "Add account",
                            style: AppTextStyles.medium(
                                fontColor: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
