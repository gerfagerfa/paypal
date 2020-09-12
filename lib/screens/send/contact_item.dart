import 'package:flutter/material.dart';
import 'package:paypal/utils/constants.dart';
import 'package:paypal/screens/send/send_to.dart';

class ContactItem extends StatelessWidget {

  final String fullName;
  final String imageUrl;
  final String email;

  ContactItem({@required this.fullName, @required this.imageUrl, this.email});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => SendTo()),
        );
      },
      child: Container(
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

                  email != null
                  ? Text(
                    email,
                    style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                  : Container(),

                ],
              ),
            ),

            email == null
            ? Icon(
              Icons.more_vert,
              color: kPrimaryColor,
            )
            : Container(),

          ]
        ),
      ),
    );
  }
}