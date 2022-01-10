import 'package:flutter/material.dart';

import '../../../../../../core/config/size_config.dart';
import '../../../../../../data/models/mock_card_model.dart';
import 'build_card.dart';
import 'custom_label.dart';

class BuildMyCard extends StatelessWidget {
  const BuildMyCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultMargin),
          child: CustomLabel(label: "My Card"),
        ),
        SizedBox(
          height: 15,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          physics: ClampingScrollPhysics(),
          child: Row(
            children: mockListCards
                .asMap()
                .map(
                  (key, card) => MapEntry(
                    key,
                    Padding(
                      padding: EdgeInsets.only(
                        left: (key == 0) ? SizeConfig.defaultMargin : 0,
                        right: (key == mockListCards.length - 1)
                            ? SizeConfig.defaultMargin
                            : 20,
                      ),
                      child: BuildCard(
                        card: card,
                      ),
                    ),
                  ),
                )
                .values
                .toList(),
          ),
        ),
      ],
    );
  }
}
