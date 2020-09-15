import 'package:flutter/material.dart';
import 'package:paypal/utils/constants.dart';

class CustomField extends StatelessWidget {

  final String hintText;
  final IconData iconData;

  CustomField({@required this.hintText, @required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 24),
      child: TextField(
        style: TextStyle(
          fontSize: 14,
          color: kGreyColor,
          fontWeight: FontWeight.bold,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 14,
            color: kGreyColor,
            fontWeight: FontWeight.bold,
          ),
          labelText: hintText,
          enabledBorder: UnderlineInputBorder(      
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 2,  
            ),
          ),  
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 2,  
            ),
          ),
          border: UnderlineInputBorder(
            borderSide: BorderSide(
              color: kPrimaryColor,
              width: 2,  
            ),
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.only(right: 16),
            child: Icon(
              iconData,
              color: kPrimaryColor,
            ),
          ),
        ),
      ),
    );
  }
}