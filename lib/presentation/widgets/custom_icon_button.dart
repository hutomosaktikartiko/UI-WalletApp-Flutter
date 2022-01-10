import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  const CustomIconButton({
    Key? key,
    required this.borderColor,
    required this.borderRadius,
    required this.icon,
    required this.backgroundColor,
    required this.onTap,
  }) : super(key: key);

  final Widget icon;
  final Color borderColor, backgroundColor;
  final double borderRadius;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(6),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(child: icon)
      ),
    );
  }
}
