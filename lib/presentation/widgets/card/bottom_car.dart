import 'package:flutter/material.dart';

import '../../../data/models/mock_card_model.dart';


class BottomCard extends StatelessWidget {
  const BottomCard({
    Key? key,
    required this.card,
    required this.logoUrl,
  }) : super(key: key);

  final MockCardModel card;
  final String logoUrl;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 17,
        ),
        Text(
          card.numberCensored ?? "**** **** **** ****",
          style: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              card.name ?? "Anonim",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Text(
              card.code ?? "-",
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            Image.asset(
              "assets/images/$logoUrl",
              height: 24,
            )
          ],
        ),
      ],
    );
  }
}
