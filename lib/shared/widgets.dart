import 'package:flutter/material.dart';
import 'package:paypal/utils/constants.dart';

buildAppBar(String title) {
  return AppBar(
    brightness: Brightness.light,
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    title: Text(
      title,
      style: TextStyle(
        color: kPrimaryColor,
      ),
    ),
    automaticallyImplyLeading: false,
    actions: [
      Padding(
        padding: EdgeInsets.only(right: 16),
        child: SizedBox(
          height: 24,
          width: 24,
          child: Image.asset(
            "assets/icons/bell.png",
            color: kPrimaryColor,
          ),
        ),
      ),
    ],
  );
}