import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';

Widget HomeTitleLink({String title, String link, Function onTap}) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            title,
            style: TextStyle(fontSize: 22),
          ),
          GestureDetector(
            onTap: onTap,
            child: Text(
              link,
              style: TextStyle(
                fontSize: 18.0,
                color: fivePrimaryColor,
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
