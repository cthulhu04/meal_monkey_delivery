import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';

Widget NavigationIcons({
  IconData fontAwesomeIcons,
  String text,
  int currentPage,
  int currentIndex,
  Function onPressed,
}) {
  return MaterialButton(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FaIcon(
          fontAwesomeIcons,
          color: currentIndex == currentPage
              ? fivePrimaryColor
              : secondPrimaryColor,
        ),
        Text(text,
            style: primary_text_style.copyWith(
              fontSize: 15.0,
              fontWeight: FontWeight.w700,
              color: currentIndex == currentPage
                  ? fivePrimaryColor
                  : secondPrimaryColor,
            )),
      ],
    ),
    onPressed: onPressed,
  );
}
