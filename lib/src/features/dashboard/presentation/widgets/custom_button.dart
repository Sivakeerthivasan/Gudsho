import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gudsho/src/core/extensions/responsive_extension.dart';

class CustomButton extends StatelessWidget {
  final Color color;
  final String iconPath;
  final String label;

  const CustomButton({
    super.key,
    required this.color,
    required this.iconPath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: context.w(165),
      height: context.h(47),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
          // SizedBox(width: 8),
           SvgPicture.asset(
            iconPath,
          ), // Load from assets
        ],
      ),
    );
  }
}
