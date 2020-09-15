import 'package:flutter/material.dart';
import 'package:paypal/screens/master.dart';
import 'package:paypal/screens/signup.dart';
import 'package:paypal/utils/constants.dart';
import 'package:paypal/shared/custom_field.dart';
import 'package:paypal/shared/rounded_button.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverFillRemaining(
              hasScrollBody: false,
              child: Padding(
                padding: EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    
                    Text(
                      "Log In",
                      style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(
                      height: 32,
                    ),

                    CustomField(
                      hintText: "Email",
                      iconData: Icons.alternate_email,
                    ),

                    CustomField(
                      hintText: "Password",
                      iconData: Icons.lock_outline,
                    ),

                    SizedBox(
                      height: 32,
                    ),

                    RoundedButton(
                      text: "Log In",
                      onPress: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Master()),
                        );
                      },
                    ),

                    SizedBox(
                      height: 16,
                    ),

                    Text(
                      "Nice to have you back, it's time to start shopping, thousands of stores are waiting for you.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: kGreyColor,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    Expanded(
                      child: Container(),
                    ),

                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        Text(
                          "Do you have an account?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: kPrimaryColor,
                            fontSize: 14,
                          ),
                        ),

                        SizedBox(
                          width: 8,
                        ),

                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Signup()),
                            );
                          },
                          child: Text(
                            "Sign Up",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: kPrimaryColor,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),

                      ],
                    ),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}