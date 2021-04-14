import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/functionality/global_functions.dart';
import 'package:meal_monkey_food_delivery/models/menus.dart';
import 'package:meal_monkey_food_delivery/screens/food_screen.dart';

class NavigationButtonAssets {
  int currentPage;
  IconData fontAwesomeIcons;
  String text;
  NavigationButtonAssets({this.currentPage, this.fontAwesomeIcons, this.text});
}

// navigation button list
List<NavigationButtonAssets> navigation_button_assets = [
  NavigationButtonAssets(
    currentPage: 1,
    fontAwesomeIcons: FontAwesomeIcons.square,
    text: 'Menu',
  ),
  NavigationButtonAssets(
    currentPage: 2,
    fontAwesomeIcons: FontAwesomeIcons.shoppingBag,
    text: 'Offert',
  ),
  NavigationButtonAssets(
    currentPage: 3,
    fontAwesomeIcons: FontAwesomeIcons.userAlt,
    text: 'Profile',
  ),
  NavigationButtonAssets(
    currentPage: 4,
    fontAwesomeIcons: FontAwesomeIcons.list,
    text: 'More',
  ),
];

List<Map> category_btn_menu = [
  {
    'category': 'food',
    'items': count_list_menus('food').length,
  },
  {
    'category': 'beverages',
    'items': count_list_menus('beverages').length,
  },
  {
    'category': 'desserts',
    'items': count_list_menus('desserts').length,
  },
  {
    'category': 'promotions',
    'items': check_for_promotions().length,
  },
];

navigate_food_screen({BuildContext context, Menus menus}) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodScreen(
          menus: menus,
        ),
      ));
}

Widget rating_star(int count) {
  List<Widget> _iconList = [];
  for (int i = 0; i < count; i++) {
    _iconList.add(
      Icon(
        Icons.star,
        color: fivePrimaryColor,
        size: 28,
      ),
    );
  }
  return Row(
    children: _iconList,
  );
}
