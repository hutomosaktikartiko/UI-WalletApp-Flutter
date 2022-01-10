import 'package:flutter/material.dart';
import 'package:ui_wallet_app/presentation/screens/detail_card/detail_card_screen.dart';
import 'package:ui_wallet_app/presentation/widgets/card/bottom_car.dart';
import 'package:ui_wallet_app/presentation/widgets/card/custom_card.dart';
import 'package:ui_wallet_app/presentation/widgets/card/header_card.dart';

import '../../../../../../core/config/size_config.dart';
import '../../../../../../data/models/mock_card_model.dart';
import 'custom_container.dart';

class BuildCard extends StatelessWidget {
  const BuildCard({
    Key? key,
    required this.card,
  }) : super(key: key);

  final MockCardModel card;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(
          context, MaterialPageRoute(builder: (_) => DetailCardScreen())),
      child: CustomCard(
        card: card,
        borderRadius: 35,
        width: SizeConfig.screenWidth - (3 * SizeConfig.defaultMargin),
        borderColor: Colors.transparent,
        child: Stack(
          children: [
            CustomContainer(
              right: 0,
              top: 0,
              height: 100,
              width: 100,
              color: Colors.black.withOpacity(0.1),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(150),
                topRight: Radius.circular(50),
              ),
            ),
            CustomContainer(
              left: 0,
              bottom: 0,
              color: Colors.white.withOpacity(0.1),
              height: 150,
              width: 150,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(150),
                bottomLeft: Radius.circular(35),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 24, vertical: 29),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HeaderCard(card: card),
                  BottomCard(card: card, logoUrl: "master_card.png", ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
