import 'package:flutter/material.dart';
import 'package:paypal/utils/constants.dart';

buildAppBar(String title) {
  return AppBar(
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
  );
}