import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';

Widget SLiderCountryImage(List list) {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 20.0),
    child: Container(
      height: 150,
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        separatorBuilder: (BuildContext context, int index) =>
            SizedBox(width: 10),
        scrollDirection: Axis.horizontal,
        itemCount: list.length,
        itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  image: DecorationImage(
                    image: AssetImage('images/${list[index].image}'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                list[index].country,
                style: primary_text_style.copyWith(
                  color: fourPrimaryColor,
                  fontSize: 19.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          );
        },
      ),
    ),
  );
}
