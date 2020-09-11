import 'package:flutter/material.dart';

class RecentItem extends StatelessWidget {

  final String imageUrl;

  RecentItem({@required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(imageUrl), 
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}