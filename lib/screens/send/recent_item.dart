import 'package:flutter/material.dart';
import 'package:paypal/screens/send/send_to.dart';

class RecentItem extends StatelessWidget {

  final String imageUrl;

  RecentItem({@required this.imageUrl});

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
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage(imageUrl), 
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}