import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/utils/utils.dart';
import 'package:meal_monkey_food_delivery/widget/food_horizantal_card.dart';

Widget MostPopular() {
  return Container(
    height: 320,
    child: ListView.separated(
      physics: BouncingScrollPhysics(),
      separatorBuilder: (BuildContext context, int index) =>
          SizedBox(width: 10.0),
      scrollDirection: Axis.horizontal,
      itemCount: imagesUtils.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          width: 300,
          child: Column(
            children: [
              FoodHorizontalCard(
                paddingAndCircular: true,
                imageHeight: 200,
                title: imagesUtils[index].title,
                image: imagesUtils[index].image,
              ),
            ],
          ),
        );
      },
    ),
  );
}
