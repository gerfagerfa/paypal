import 'package:flutter/material.dart';
import 'package:paypal/utils/constants.dart';

class SettingItem extends StatelessWidget {

  final String title;
  final IconData iconData;

  SettingItem({@required this.title, @required this.iconData});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      height: 40,
      child: Row(
        children: [

          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: kSecondaryColor,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Icon(
              iconData,
              color: Colors.white,
            ),
          ),

          SizedBox(
            width: 16,
          ),

          Text(
            title,
            style: TextStyle(
              color: kPrimaryColor,
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),

        ],
      ),
    );
  }
}