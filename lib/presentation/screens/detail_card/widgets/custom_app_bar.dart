import 'package:flutter/material.dart';

import '../../../../core/config/size_config.dart';

class CustomAppBar {
  const CustomAppBar({
    Key? key,
  });

  AppBar build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.transparent,
      automaticallyImplyLeading: false,
      title: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: SizeConfig.defaultMargin - 15),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset(
                "assets/icons/chevrolet_left_circle.png",
                height: 30,
              ),
            ),
            Text(
              "Card Detail",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white,
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Image.asset(
                "assets/icons/more_square.png",
                height: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
