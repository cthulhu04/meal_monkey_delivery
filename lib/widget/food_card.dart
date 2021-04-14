import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';
import 'package:meal_monkey_food_delivery/models/menus.dart';

Widget FoodCard({
  double imageHeight = 300,
  bool paddingAndCircular = false,
  bool version_2 = false,
  Menus menus,
  Function onTap,
}) {
  return GestureDetector(
    onTap: onTap,
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
                image: AssetImage('images/${menus.image}'),
                fit: BoxFit.cover,
              ),
            ),
            child: version_2
                ? Container(
                    color: Colors.black.withOpacity(0.5),
                    child: textField(
                      title: menus.title,
                      rating: '${menus.rating}',
                      cafe: '(124 ratings) Café',
                      food: 'Western Food',
                      version_2: version_2,
                    ),
                  )
                : null,
          ),
        ),
        SizedBox(height: 5),
        version_2
            ? SizedBox()
            : textField(
                title: menus.title,
                rating: '${menus.rating}',
                cafe: '(124 ratings) Café',
                food: 'Western Food',
              ),
      ],
    ),
  );
}

Widget textField({
  String title,
  String rating,
  String cafe,
  String food,
  bool version_2 = false,
}) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Text(
          title,
          style: primary_text_style.copyWith(
            color: version_2 ? Colors.white : fourPrimaryColor,
            fontSize: 25.0,
            fontWeight: FontWeight.w500,
          ),
        ),
        SizedBox(height: 10),
        Container(
          child: Row(
            children: [
              Icon(
                Icons.star,
                color: fivePrimaryColor,
              ),
              Text(rating,
                  style: primary_text_style.copyWith(
                    fontSize: 17.0,
                    fontWeight: FontWeight.w700,
                  )),
              SizedBox(width: 5),
              Text(cafe,
                  style: primary_text_style.copyWith(
                    fontSize: 17.0,
                    color: version_2 ? Colors.white : secondPrimaryColor,
                  )),
              SizedBox(width: 10),
              Text(food,
                  style: primary_text_style.copyWith(
                    fontSize: 17.0,
                    color: version_2 ? Colors.white : secondPrimaryColor,
                  )),
            ],
          ),
        ),
      ],
    ),
  );
}
