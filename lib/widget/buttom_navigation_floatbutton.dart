import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';

Widget ButtomNagivationFloatButton({Function onPressed, int currentIndex}) {
  return Container(
    height: 100.0,
    width: 100.0,
    padding: EdgeInsets.all(15),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(50.0),
      color: Colors.white,
    ),
    child: FloatingActionButton(
      elevation: 0,
      backgroundColor:
          currentIndex == 0 ? fivePrimaryColor : secondPrimaryColor,
      child: FaIcon(
        FontAwesomeIcons.home,
        size: 32.0,
      ),
      onPressed: onPressed,
    ),
  );
}
