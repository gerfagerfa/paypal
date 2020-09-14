import 'package:flutter/material.dart';
import 'package:paypal/utils/constants.dart';
import 'package:paypal/shared/contact_item.dart';

class Contacts extends StatelessWidget {

  final Widget navigateTo;

  Contacts({@required this.navigateTo});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
          "Contacts",
          style: TextStyle(
            color: kPrimaryColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),

        SizedBox(
          height: 16,
        ),

        Expanded(
          child: SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Column(
              children: [
                
                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_0.jpg",
                  fullName: "Rebecca Lucas",
                ),

                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_1.jpg",
                  fullName: "Jose Young",
                ),

                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_2.jpg",
                  fullName: "Janice Brewer",
                ),

                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_3.jpg",
                  fullName: "Phoebe Buffay",
                ),

                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_4.jpg",
                  fullName: "Monica Geller",
                ),

                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_5.jpg",
                  fullName: "Rachel Green",
                ),

                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_6.jpg",
                  fullName: "Kamila Fros",
                ),

                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_7.jpg",
                  fullName: "Ross Geller",
                ),

                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_8.jpg",
                  fullName: "Chandler Bing",
                ),

                ContactItem(
                  navigateTo: navigateTo,
                  imageUrl: "assets/images/user_9.jpg",
                  fullName: "Yoyi Delirio",
                ),

              ],
            ),
          ),
        ),

      ],
    );
  }
}