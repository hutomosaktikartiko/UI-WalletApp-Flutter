import 'dart:ui';

import 'package:flutter/material.dart';

import '../../../../../../core/config/size_config.dart';
import '../../../../../widgets/custom_icon_button.dart';

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
            CustomIconButton(
                borderColor: Color(0xFFCFCFCF),
                backgroundColor: Color(0xFFF8F8F8),
                icon: ImageIcon(
                  AssetImage("assets/icons/filter.png"),
                  color: Color(0xFF6A86E3),
                ),
                borderRadius: 12,
                onTap: () {},
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
