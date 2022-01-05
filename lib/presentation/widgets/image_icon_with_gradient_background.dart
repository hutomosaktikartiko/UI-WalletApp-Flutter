import 'package:flutter/material.dart';

class ImageIconWithGradientBackground extends StatelessWidget {
  const ImageIconWithGradientBackground({
    Key? key,
    required this.iconName,
    required this.startColor,
    required this.endColor,
  }) : super(key: key);

  final String iconName;
  final Color startColor, endColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 62,
      width: 62,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(11),
        gradient: LinearGradient(
          colors: [
            startColor,
            endColor,
          ],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: ImageIcon(
        AssetImage(
          "assets/icons/$iconName",
        ),
        size: 30,
        color: Colors.white,
      ),
    );
  }
}
