import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/route_constants.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';
import 'package:meal_monkey_food_delivery/widget/primary_button.dart';
import 'package:meal_monkey_food_delivery/widget/logo.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  double borderRadius = 120.0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: size.height / 1.5,
            width: double.infinity,
            color: Colors.white,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  child: Column(
                    children: [
                      Expanded(
                        child: Container(
                          decoration: BoxDecoration(
                              image: DecorationImage(
                            image: AssetImage('images/background_pattern.jpg'),
                            fit: BoxFit.cover,
                          )),
                        ),
                      ),
                      Container(
                        child: Column(
                          children: [
                            SizedBox(height: 50.0),
                            Text(
                              'Discover the best foods from over 1,000',
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                            Text(
                              'restaurants and fast delivery to your doorstep',
                              style: TextStyle(
                                fontSize: 15.0,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: size.height / 10,
                  child: Container(
                    padding: EdgeInsets.all(20.0),
                    width: 150.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(borderRadius),
                        topLeft: Radius.circular(borderRadius),
                      ),
                    ),
                    child: Logo(),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 35.0, vertical: 25.0),
              color: Colors.white,
              child: Column(
                children: [
                  PrimaryButton(
                    widget: Text('login',
                        style:
                            primary_text_style.copyWith(color: Colors.white)),
                    function: () => Navigator.of(context).pushNamed(login),
                  ),
                  SizedBox(height: 20.0),
                  PrimaryButton(
                    widget:
                        Text('Create an Account', style: primary_text_style),
                    color: false,
                    function: () => Navigator.of(context).pushNamed(signUp),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
