import 'package:flutter/material.dart';
import 'package:ui_wallet_app/presentation/screens/detail_card/detail_card_screen.dart';

import '../../../../../../core/config/size_config.dart';
import '../../../../../../data/models/mock_card_model.dart';
import 'custom_container.dart';

class CustomCard extends StatelessWidget {
  const CustomCard({
    Key? key,
    required this.card,
  }) : super(key: key);

  final MockCardModel card;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => DetailCardScreen())),
      child: Container(
        width: SizeConfig.screenWidth - (3 * SizeConfig.defaultMargin),
        height: 200,
        decoration: BoxDecoration(
          color: card.color,
          borderRadius: BorderRadius.circular(35),
        ),
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
                        "assets/images/master_card.png",
                        height: 24,
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
