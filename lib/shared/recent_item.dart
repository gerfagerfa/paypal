import 'package:flutter/material.dart';

class RecentItem extends StatelessWidget {

  final Widget navigateTo;
  final String imageUrl;

  RecentItem({this.navigateTo, @required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if(navigateTo != null){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => navigateTo),
          );
        }
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