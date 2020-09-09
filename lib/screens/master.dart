import 'package:flutter/material.dart';
import 'package:paypal/shared/bottom_navigation_item.dart';
import 'package:paypal/screens/dashboard.dart';
import 'package:paypal/screens/send.dart';
import 'package:paypal/screens/request.dart';
import 'package:paypal/screens/settings.dart';

class Master extends StatefulWidget {
  @override
  _MasterState createState() => _MasterState();
}

class _MasterState extends State<Master> {

  List<bool> bottomNavigationItemStatus = [true, false, false, false];

  Widget currentWidgetView;

  @override
  void initState() {
    super.initState();
    setState(() {
      currentWidgetView = Dashboard();
    });
  }

  setCurrentWidgetView(int index){
    setState(() {
      switch (index){
        case 0: currentWidgetView = Dashboard(); break;
        case 1: currentWidgetView = Send(); break;
        case 2: currentWidgetView = Request(); break;
        case 3: currentWidgetView = Settings(); break;
      }
      bottomNavigationItemStatus = [index == 0, index == 1, index == 2, index == 3];
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: AnimatedSwitcher(
        duration: Duration(milliseconds: 250),
        child: currentWidgetView,
      ),
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
                    selected: bottomNavigationItemStatus[0],
                    onPress: () {
                      setCurrentWidgetView(0);
                    },
                  ),

                  BottomNavigationItem(
                    imageUrl: "assets/icons/send_money.png",
                    text: "Send",
                    selected: bottomNavigationItemStatus[1],
                    onPress: () {
                      setCurrentWidgetView(1);
                    },
                  ),

                  BottomNavigationItem(
                    imageUrl: "assets/icons/request_money.png",
                    text: "Request",
                    selected: bottomNavigationItemStatus[2],
                    onPress: () {
                      setCurrentWidgetView(2);
                    },
                  ),

                  BottomNavigationItem(
                    imageUrl: "assets/icons/settings.png",
                    text: "Settings",
                    selected: bottomNavigationItemStatus[3],
                    onPress: () {
                      setCurrentWidgetView(3);
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