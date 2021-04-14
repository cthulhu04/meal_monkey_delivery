import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';

numbers_of_portion({Function menus, Function plus, String portion}) {
  return Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          child: Text(
            'Number of Portions',
            style: secondary_text_style,
          ),
        ),
        Container(
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 60,
                  height: 30,
                  color: fivePrimaryColor,
                  child: TextButton(
                    onPressed: menus,
                    child: Icon(Icons.remove, color: Colors.white),
                  ),
                ),
              ),
              SizedBox(width: 7),
              Container(
                width: 60,
                height: 30,
                decoration: BoxDecoration(
                  border: Border.all(color: fivePrimaryColor),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Center(
                  child: Text('${portion.toString()}'),
                ),
              ),
              SizedBox(width: 7),
              ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  width: 60,
                  height: 30,
                  color: fivePrimaryColor,
                  child: TextButton(
                    onPressed: plus,
                    child: Icon(Icons.add, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
