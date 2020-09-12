import 'package:flutter/material.dart';
import 'package:paypal/shared/widgets.dart';
import 'package:paypal/screens/dashboard/balance_summary.dart';
import 'package:paypal/screens/dashboard/transactions_summary.dart';

class Dashboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("Dashboard"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            BalanceSummary(),

            Expanded(
              child: TransactionsSummary(),
            ),

          ],
        ),
      )
    );
  }
}