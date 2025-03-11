import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class StackedIcons extends StatelessWidget {
  final List<String> iconPaths;
  final double spacing;
  final double iconSize;

  const StackedIcons({
    Key? key,
    required this.iconPaths,
    this.spacing = 20, // Default spacing
    this.iconSize = 40, // Default icon size
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: iconSize,
      child: Stack(alignment: Alignment.center,
        children: iconPaths.asMap().entries.map((entry) {
          int index = entry.key;
          String path = entry.value;
          return Positioned(
            left: index * spacing,
            child: SvgPicture.asset(
              path,
              width: iconSize,
              height: iconSize,
            ),
          );
        }).toList(),
      ),
    );
  }
}
