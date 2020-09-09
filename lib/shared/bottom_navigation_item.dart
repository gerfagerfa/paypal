import 'package:flutter/material.dart';
import 'package:paypal/utils/constants.dart';

class BottomNavigationItem extends StatelessWidget {

  final String imageUrl;
  final String text;
  final bool selected;
  final Function onPress;

  BottomNavigationItem({@required this.imageUrl, @required this.text, @required this.selected, this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          SizedBox(
            height: 24,
            width: 24,
            child: Image.asset(
              imageUrl,
              color: selected ? kPrimaryColor : Colors.grey[400],
            ),
          ),

          SizedBox(
            height: 12,
          ),

          Text(
            text,
            style: TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.bold,
              color: selected ? kPrimaryColor : Colors.grey[400],
            ),
          )

        ],
      ),
    );
  }
}