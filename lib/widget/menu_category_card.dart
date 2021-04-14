import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';

Widget menu_category_card({Size size, String food, int items, Function onTap}) {
  double _heightOfContainer = 500;
  return GestureDetector(
    onTap: onTap,
    child: Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          height: _heightOfContainer / 4 - 40,
          width: size.width / 1.2,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: Offset(0, 3), // changes position of shadow
              ),
            ],
          ),
          child: Row(
            children: [
              SizedBox(width: 90),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      food,
                      style: primary_text_style.copyWith(
                        color: fourPrimaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text('${items.toString()} items',
                        style: primary_text_style.copyWith(
                          color: secondPrimaryColor,
                          fontSize: 17.0,
                        )),
                  ],
                ),
              )
            ],
          ),
        ),
        Positioned(
          left: 0,
          child: Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.black38.withOpacity(0.5),
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
              image: DecorationImage(
                image: AssetImage('images/wat-is-cappuccino.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(50),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3), // changes position of shadow
                ),
              ],
            ),
            child: Icon(
              Platform.isIOS ? Icons.arrow_forward_ios : Icons.arrow_forward,
              color: fivePrimaryColor,
            ),
          ),
        ),
      ],
    ),
  );
}
