import 'package:flutter/material.dart';
import 'package:paypal/shared/widgets.dart';
import 'package:paypal/utils/constants.dart';

class Settings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar("Settings"),
    );
  }
}