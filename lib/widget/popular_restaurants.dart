import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/models/menus.dart';
import 'package:meal_monkey_food_delivery/utils/utils.dart';
import 'package:meal_monkey_food_delivery/widget/food_card.dart';

Widget PopularRestaurants() {
  return Column(
    children: imagesUtils.map((Menus menu) {
      return FoodCard(menus: menu);
    }).toList(),
  );
}
