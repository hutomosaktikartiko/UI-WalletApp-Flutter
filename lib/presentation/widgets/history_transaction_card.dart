import 'package:flutter/material.dart';

import '../../data/models/mock_history_transaction_model.dart';
import 'custom_box_shadow.dart';

class HistoryTransactionCard extends StatelessWidget {
  const HistoryTransactionCard({
    Key? key,
    required this.transaction,
  }) : super(key: key);

  final MockHistoryTransactionModel transaction;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Container(
              margin: EdgeInsets.only(right: 14),
              padding: EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: transaction.color,
                boxShadow: [
                  CustomBoxShadow(color: transaction.color!).build(),
                ],
                gradient: LinearGradient(
                  colors: [
                    transaction.color!.withOpacity(0.7),
                    transaction.color!
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: BorderRadius.circular(11),
              ),
              child: Image.asset(
                "assets/icons/${transaction.iconName}",
                height: 25,
                width: 25,
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  transaction.title ?? "-",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                Text(
                  transaction.description ?? "-",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color(0xFF9CAEEE),
                  ),
                ),
              ],
            ),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              transaction.priceDollar ?? "-",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w700,
                color: Color(0xFFED5C5C),
              ),
            ),
            Text(
              transaction.date ?? "-",
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500,
                color: Color(0xFF9CAEEE),
              ),
            ),
          ],
        )
      ],
    );
  }
}
