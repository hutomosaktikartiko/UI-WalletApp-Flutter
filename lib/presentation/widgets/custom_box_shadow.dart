import 'package:flutter/material.dart';

class CustomBoxShadow {
  const CustomBoxShadow({
    Key? key,
    this.blurRadius = 7,
    this.color = Colors.grey,
    this.offset = const Offset(0, 0),
    this.spreadRadius = 5,
  });

  final double spreadRadius, blurRadius;
  final Offset offset;
  final Color color;

  BoxShadow build() {
    return BoxShadow(
      color: color.withOpacity(0.1),
      spreadRadius: spreadRadius,
      blurRadius: blurRadius,
      offset: offset,
    );
  }
}
