import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';

Widget EditProfileContainer({
  String avatarImage,
  String name,
}) {
  return Container(
    child: Column(
      children: [
        CircleAvatar(
          radius: 60,
          backgroundImage: AssetImage(avatarImage),
        ),
        SizedBox(height: 30),
        Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.pin_drop, color: fivePrimaryColor),
              SizedBox(width: 10),
              Text('Edit Profile'),
            ],
          ),
        ),
        SizedBox(height: 30),
        Text(
          'Hi there $name!',
          style: TextStyle(fontSize: 21, fontWeight: FontWeight.w500),
        ),
        SizedBox(height: 10),
        GestureDetector(
          child: Text(
            'Sign Out',
            style: TextStyle(fontSize: 16, color: fivePrimaryColor),
          ),
          onTap: () => print('Sign Out'),
        ),
        SizedBox(height: 30),
      ],
    ),
  );
}
