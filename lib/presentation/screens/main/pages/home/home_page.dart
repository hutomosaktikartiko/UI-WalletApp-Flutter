import 'package:flutter/material.dart';

import 'widgets/build_history_transaction.dart';
import 'widgets/build_my_card.dart';
import 'widgets/custom_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar().build(),
      body: SingleChildScrollView(
        physics: ClampingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 15),
              child: BuildMyCard(),
            ),
            BuildHistoryTransaction(),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}