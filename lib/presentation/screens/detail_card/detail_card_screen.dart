import 'package:flutter/material.dart';
import 'package:ui_wallet_app/presentation/screens/detail_card/widgets/custom_app_bar.dart';

import '../../../core/config/size_config.dart';
import '../../../data/models/mock_card_model.dart';
import '../../widgets/card/bottom_car.dart';
import '../../widgets/card/custom_card.dart';
import '../../widgets/card/header_card.dart';
import '../../widgets/custom_text_view_all.dart';
import '../main/pages/home/widgets/custom_label.dart';
import 'pages/month/month_page.dart';
import 'pages/week/week_page.dart';
import 'widgets/custom_tab_item.dart';

class DetailCardScreen extends StatefulWidget {
  const DetailCardScreen({Key? key}) : super(key: key);

  @override
  _DetailCardScreenState createState() => _DetailCardScreenState();
}

class _DetailCardScreenState extends State<DetailCardScreen> {
  int currentTab = 0;
  List<Widget> pages = [
    WeekPage(),
    MonthPage(),
  ];

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
        appBar: CustomAppBar().build(context),
        backgroundColor: Colors.transparent,
        body: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultMargin),
          physics: ClampingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 30,
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
              const SizedBox(
                height: 13,
              ),
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 6,
                  vertical: 7,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100),
                  color: Colors.white,
                ),
                child: Row(
                  children: ["This Week", "This Month"]
                      .asMap()
                      .map(
                        (key, value) => MapEntry(
                          key,
                          CustomTabItem(
                            isSelected: key == currentTab,
                            label: value,
                            onTap: () => setState(() => currentTab = key),
                          ),
                        ),
                      )
                      .values
                      .toList(),
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 13, horizontal: 6),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(23),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 22),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomLabel(label: "History"),
                          CustomTextViewAll(onTap: () {}),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 17,
                    ),
                    pages[currentTab],
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
