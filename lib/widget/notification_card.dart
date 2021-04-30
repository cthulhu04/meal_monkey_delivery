import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';

Widget NotificationCard({String title, String date}) {
  return Card(
    elevation: 0,
    child: Column(
      children: [
        ListTile(
          leading: Icon(
            Icons.circle,
            color: fivePrimaryColor,
            size: 15,
          ),
          title: Text(title),
          subtitle: Text(date),
        ),
        Divider(height: 10, color: secondPrimaryColor),
      ],
    ),
  );
}
