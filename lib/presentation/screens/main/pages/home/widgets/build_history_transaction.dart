import 'package:flutter/material.dart';

import '../../../../../../core/config/size_config.dart';
import '../../../../../../data/models/mock_history_transaction_model.dart';
import '../../../../../widgets/custom_text_view_all.dart';
import '../../../../../widgets/history_transaction_card.dart';
import 'custom_label.dart';

class BuildHistoryTransaction extends StatelessWidget {
  const BuildHistoryTransaction({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: SizeConfig.defaultMargin),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomLabel(label: "History"),
              CustomTextViewAll(onTap: () {}),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          ...mockListHistoryTransactions
              .asMap()
              .map(
                (key, transaction) => MapEntry(
                  key,
                  Padding(
                    padding: EdgeInsets.only(
                      bottom: (key == mockListHistoryTransactions.length - 1)
                          ? 0
                          : 18,
                    ),
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 10,
                        horizontal: 15,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.white,
                      ),
                      child: HistoryTransactionCard(
                        transaction: transaction,
                      ),
                    ),
                  ),
                ),
              )
              .values
              .toList(),
        ],
      ),
    );
  }
}
