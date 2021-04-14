import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';

Widget RecentItemsCard() {
  return GestureDetector(
    onTap: () {},
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15.0),
          child: Image.asset(
            'images/shrimp_ceviche.jpg',
            height: 90,
          ),
        ),
        SizedBox(width: 15),
        Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Ceviche',
                style: primary_text_style.copyWith(
                  color: fourPrimaryColor,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Text('Café',
                        style: primary_text_style.copyWith(
                          fontSize: 17.0,
                          color: secondPrimaryColor,
                        )),
                    SizedBox(width: 10),
                    Text('Western Food',
                        style: primary_text_style.copyWith(
                          fontSize: 17.0,
                          color: secondPrimaryColor,
                        )),
                  ],
                ),
              ),
              Container(
                child: Row(
                  children: [
                    Icon(Icons.star, color: fivePrimaryColor),
                    Text('4.9',
                        style: primary_text_style.copyWith(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w700,
                        )),
                    SizedBox(width: 10),
                    Text('(124 Ratings)',
                        style: primary_text_style.copyWith(
                          fontSize: 17.0,
                          color: secondPrimaryColor,
                        )),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
