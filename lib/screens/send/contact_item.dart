import 'package:flutter/material.dart';
import 'package:paypal/utils/constants.dart';

class ContactItem extends StatelessWidget {

  final String fullName;
  final String imageUrl;

  ContactItem({@required this.fullName, @required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [

          Container(
            width: 50,
            height: 50,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                image: AssetImage(imageUrl), 
                fit: BoxFit.cover,
              ),
            ),
          ),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  fullName,
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              ],
            ),
          ),

          Icon(
            Icons.more_vert,
            color: kPrimaryColor,
          ),

        ]
      ),
    );
  }
}