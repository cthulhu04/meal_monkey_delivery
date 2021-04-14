import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';
import 'package:meal_monkey_food_delivery/functionality/assets.dart';

Widget menu_card_header({String title, double price}) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Container(
        child: Text(
          title,
          style: TextStyle(
            fontSize: 23.0,
          ),
        ),
      ),
      Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  rating_star(5),
                  SizedBox(height: 5),
                  Text('4 rating'),
                ],
              ),
            ),
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    price.toStringAsFixed(2),
                    style: primary_text_style.copyWith(
                      fontSize: 30,
                      color: fourPrimaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text('portion'),
                ],
              ),
            ),
          ],
        ),
      ),
    ],
  );
}
