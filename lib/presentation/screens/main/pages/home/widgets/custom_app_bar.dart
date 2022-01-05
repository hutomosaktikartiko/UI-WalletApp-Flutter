import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../../core/config/size_config.dart';

class CustomAppBar {
  const CustomAppBar({
    Key? key,
  });

  AppBar build() {
    return AppBar(
      title: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.defaultMargin - 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: 37,
              width: 37,
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: Color(0xFFF8F8F8),
                  border: Border.all(
                    color: Color(0xFFCFCFCF),
                  ),
                  borderRadius: BorderRadius.circular(6)),
              child: ImageIcon(
                AssetImage("assets/icons/filter.png"),
                color: Color(0xFF6A86E3),
              ),
            ),
            Text(
              "PitihPay",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
            Image.asset(
              "assets/images/profile.png",
              height: 37,
              fit: BoxFit.cover,
            )
          ],
        ),
      ),
    );
  }
}
