import 'package:flutter/material.dart';
import 'package:paypal/shared/widgets.dart';
import 'package:paypal/shared/custom_field.dart';
import 'package:paypal/shared/recent.dart';
import 'package:paypal/shared/contacts.dart';
import 'package:paypal/screens/send/send_to.dart';

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

            CustomField(
              hintText: "Name, Email or Mobile number",
              iconData: Icons.search,
            ),

            Recent(
              navigateTo: SendTo(),
            ),

            Expanded(
              child: Contacts(
                navigateTo: SendTo(),
              ),
            ),

          ],
        ),
      )
    );
  }
}