import 'package:flutter/material.dart';

class CustomTextViewAll extends StatelessWidget {
  const CustomTextViewAll({
    Key? key,
    required this.onTap,
  }) : super(key: key);

  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Text(
        "View all",
        style: TextStyle(
          color: Color(0xFF6A86E3),
          fontSize: 14,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
