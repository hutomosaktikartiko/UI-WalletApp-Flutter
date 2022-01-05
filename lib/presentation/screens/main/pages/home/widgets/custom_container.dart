import 'package:flutter/material.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({
    Key? key,
    this.bottom,
    required this.color,
    required this.borderRadius,
    required this.height,
    required this.width,
    this.left,
    this.right,
    this.top,
  }) : super(key: key);

  final double? left, bottom, right, top, height, width;
  final BorderRadiusGeometry borderRadius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      bottom: bottom,
      top: top,
      right: right,
      child: Container(
        width: width,
        height: height,
        decoration: BoxDecoration(
          color: color,
          borderRadius: borderRadius,
        ),
      ),
    );
  }
}
