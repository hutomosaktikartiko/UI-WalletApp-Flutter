import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

import '../../../../../data/models/mock_history_transaction_model.dart';
import '../../../../widgets/history_transaction_card.dart';

class PageBody extends StatelessWidget {
  const PageBody({
    Key? key,
    required this.transactions,
  }) : super(key: key);

  final List<MockHistoryTransactionModel> transactions;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: transactions
          .map(
            (transaction) => Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: DottedBorder(
                radius: Radius.circular(20),
                borderType: BorderType.RRect,
                color: Color(0xFFE0E0E0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Padding(
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                    child: HistoryTransactionCard(transaction: transaction),
                  ),
                ),
              ),
            ),
          )
          .toList(),
    );
  }
}
