import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/widget/recent_items_card.dart';

Widget RecentItems() {
  return Padding(
    padding: EdgeInsets.all(20.0),
    child: Container(
      child: Column(
        children: [
          RecentItemsCard(),
          SizedBox(height: 20),
          RecentItemsCard(),
        ],
      ),
    ),
  );
}
