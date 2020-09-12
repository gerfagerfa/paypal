import 'package:flutter/material.dart';
import 'package:paypal/utils/constants.dart';

class OptionPill extends StatelessWidget {

  final String text;
  final bool selected;

  OptionPill({@required this.text, @required this.selected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
        color: selected ? kPrimaryColor : Colors.transparent,
      ),
      child: Text(
        text,
        style: TextStyle(
          color: selected ? Colors.white : Colors.grey[400],
          fontWeight: FontWeight.bold,
          fontSize: 14,
        ),
      ),
    );
  }
}