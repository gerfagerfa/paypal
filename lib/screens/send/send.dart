import 'package:flutter/material.dart';
import 'package:paypal/shared/widgets.dart';
import 'package:paypal/shared/search.dart';
import 'package:paypal/screens/send/recent.dart';
import 'package:paypal/screens/send/contacts.dart';

class Send extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("Send Money"),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Search(),

            Recent(),

            Expanded(
              child: Contacts(),
            ),

          ],
        ),
      )
    );
  }
}