import 'package:flutter/material.dart';
import 'package:paypal/shared/bottom_navigation_item.dart';

class Master extends StatefulWidget {
  @override
  _MasterState createState() => _MasterState();
}

class _MasterState extends State<Master> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        height: 80,
        color: Colors.white,
        child: Column(
          children: [

            Container(
              height: 2,
              color: Colors.grey[300],
            ),

            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [

                  BottomNavigationItem(
                    imageUrl: "assets/icons/tile.png",
                    text: "Dashboard",
                    selected: true,
                    onPress: () {

                    },
                  ),

                  BottomNavigationItem(
                    imageUrl: "assets/icons/send_money.png",
                    text: "Send",
                    selected: false,
                    onPress: () {
                      
                    },
                  ),

                  BottomNavigationItem(
                    imageUrl: "assets/icons/request_money.png",
                    text: "Request",
                    selected: false,
                    onPress: () {
                      
                    },
                  ),

                  BottomNavigationItem(
                    imageUrl: "assets/icons/settings.png",
                    text: "Settings",
                    selected: false,
                    onPress: () {
                      
                    },
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}