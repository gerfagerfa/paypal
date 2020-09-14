import 'package:flutter/material.dart';
import 'package:paypal/utils/constants.dart';

class BalanceItem extends StatelessWidget {

  final String currency;
  final String money;
  final String conversion;

  BalanceItem({@required this.currency, @required this.money, this.conversion});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8),
      height: 60,
      child: Row(
        children: [

          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
              image: DecorationImage(
                image: AssetImage("assets/images/" + currency + ".png"), 
                fit: BoxFit.cover,
              ),
            ),
          ),

          SizedBox(
            width: 16,
          ),

          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Text(
                  currency,
                  style: TextStyle(
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    
                    Text(
                      r"$ " + money,
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),

                    conversion != null
                    ? Column(
                      children: [

                        SizedBox(
                          height: 4,
                        ),

                        Text(
                          r"$ " + conversion + " in USD",
                          style: TextStyle(
                            color: kGreyColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 12,
                          ),
                        ),

                      ],
                    )
                    : Container()

                  ],
                ),

              ],
            ),
          ),

        ],
      ),
    );
  }
}