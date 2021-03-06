import 'package:flutter/material.dart';

import '../../../data/models/mock_card_model.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.card,
    required this.borderRadius,
    required this.child,
    required this.borderColor,
    required this.width,
  }) : super(key: key);

  final MockCardModel card;
  final Widget child;
  final double borderRadius, width;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 200,
      decoration: BoxDecoration(
        color: card.color,
        borderRadius: BorderRadius.circular(borderRadius),
        border: Border.all(color: borderColor)
      ),
      child: child,
    );
  }
}
