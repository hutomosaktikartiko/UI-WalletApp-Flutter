import 'package:flutter/material.dart';

import '../../../data/models/mock_card_model.dart';


class HeaderCard extends StatelessWidget {
  const HeaderCard({
    Key? key,
    required this.card,
  }) : super(key: key);

  final MockCardModel card;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Balance",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.asset(
              "assets/images/chip.png",
              height: 32,
            )
          ],
        ),
        Text(
          card.balanceIdr ?? "Rp.0",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w700,
          ),
        ),
      ],
    );
  }
}
