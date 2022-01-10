import 'package:flutter/material.dart';

import '../../../../../data/models/mock_history_transaction_model.dart';
import '../widgets/page_body.dart';

class MonthPage extends StatelessWidget {
  const MonthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageBody(transactions: mockListHistoryTransactionsThisMonth);
  }
}
