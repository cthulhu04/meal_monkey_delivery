import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';
import 'package:meal_monkey_food_delivery/widget/add_cart_btn.dart';

Widget add_cart_card({Size size, String title, double total, Function onTap}) {
  double _heightOfContainer = 500;
  return Stack(
    alignment: AlignmentDirectional.center,
    children: [
      Container(
        height: _heightOfContainer / 3,
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
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18.0,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'LKR ${total.toString()}',
                style: secondary_text_style.copyWith(fontSize: 25),
              ),
              SizedBox(height: 10),
              Container(
                width: size.width / 1.7,
                child: add_cart_btn(
                  function: onTap,
                  color: fivePrimaryColor,
                  widget: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.shoppingCart,
                          color: Colors.white),
                      Expanded(
                        child: Center(
                          child: Text('Add to Cart',
                              style: TextStyle(
                                  color: Colors.white, fontSize: 17.0)),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Positioned(
        right: 0,
        child: Container(
          height: 50,
          width: 50,
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
          child: Center(
            child: FaIcon(
              FontAwesomeIcons.shoppingCart,
              color: fivePrimaryColor,
            ),
          ),
        ),
      ),
    ],
  );
}
