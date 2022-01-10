import 'package:flutter/material.dart';

class CustomTabItem extends StatelessWidget {
  const CustomTabItem({
    Key? key,
    required this.isSelected,
    required this.onTap,
    required this.label,
  }) : super(key: key);

  final Function() onTap;
  final bool isSelected;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          padding: EdgeInsets.symmetric(vertical: 13),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
              colors: (isSelected)
                  ? [
                      Color(0xFF829EFC),
                      Color(0xFF5271DA),
                    ]
                  : [
                    Colors.white,
                    Colors.white,
                  ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            ),
          ),
          child: Center(
            child: Text(
              label,
              style: TextStyle(
                color: (isSelected) ? Colors.white : Color(0xFFCFCFCF),
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
