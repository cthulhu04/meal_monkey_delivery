import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';

Widget FoodHorizontalCard({
  double imageHeight = 300,
  bool paddingAndCircular = false,
  String title,
  String image,
}) {
  return Container(
    child: Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: paddingAndCircular ? 20.0 : 0,
          ),
          child: Container(
            height: imageHeight,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(paddingAndCircular ? 15.0 : 0),
              image: DecorationImage(
                image: AssetImage('images/$image'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: primary_text_style.copyWith(
                  color: fourPrimaryColor,
                  fontSize: 25.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 10),
              Container(
                child: Row(
                  children: [
                    Text('Café',
                        style: primary_text_style.copyWith(
                          fontSize: 17.0,
                          color: secondPrimaryColor,
                        )),
                    SizedBox(width: 5),
                    Text('Western Food',
                        style: primary_text_style.copyWith(
                          fontSize: 17.0,
                          color: secondPrimaryColor,
                        )),
                    SizedBox(width: 10),
                    Icon(Icons.star, color: fivePrimaryColor),
                    Text('4.9',
                        style: primary_text_style.copyWith(
                          fontSize: 17.0,
                          fontWeight: FontWeight.w700,
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
