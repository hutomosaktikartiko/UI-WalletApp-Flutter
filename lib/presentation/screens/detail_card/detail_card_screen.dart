import 'package:flutter/material.dart';
import 'package:ui_wallet_app/core/config/size_config.dart';
import 'package:ui_wallet_app/data/models/mock_card_model.dart';
import 'package:ui_wallet_app/presentation/widgets/card/bottom_car.dart';
import 'package:ui_wallet_app/presentation/widgets/card/custom_card.dart';
import 'package:ui_wallet_app/presentation/widgets/card/header_card.dart';
import 'package:ui_wallet_app/presentation/widgets/custom_icon_button.dart';

class DetailCardScreen extends StatefulWidget {
  const DetailCardScreen({Key? key}) : super(key: key);

  @override
  _DetailCardScreenState createState() => _DetailCardScreenState();
}

class _DetailCardScreenState extends State<DetailCardScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF74D8FE), Color(0xFF139CFA)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultMargin),
          physics: ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
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
              const SizedBox(
                height: 42,
              ),
              CustomCard(
                card: mockDetailCard,
                borderRadius: 30,
                width: SizeConfig.screenWidth,
                borderColor: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24, vertical: 29),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      HeaderCard(card: mockDetailCard),
                      BottomCard(
                        card: mockDetailCard,
                        logoUrl: "visa.png",
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
