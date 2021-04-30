import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/functionality/global_functions.dart';
import 'package:meal_monkey_food_delivery/models/menus.dart';
import 'package:meal_monkey_food_delivery/screens/about_us_screen.dart';
import 'package:meal_monkey_food_delivery/screens/check_out_screen.dart';
import 'package:meal_monkey_food_delivery/screens/default_screen.dart';
import 'package:meal_monkey_food_delivery/screens/food_screen.dart';
import 'package:meal_monkey_food_delivery/screens/inbox_screen.dart';
import 'package:meal_monkey_food_delivery/screens/my_orders_screen.dart';
import 'package:meal_monkey_food_delivery/screens/notifications_screen.dart';
import 'package:meal_monkey_food_delivery/screens/option_screen.dart';
import 'package:meal_monkey_food_delivery/screens/payment_details_screen.dart';

// navigation button class modul
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

// menu screen category list
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

// menu screen option card
List<Map> options_card = [
  {
    'title': 'Payment Details',
    'icon': FaIcon(FontAwesomeIcons.moneyCheck),
  },
  {
    'title': 'My Orders',
    'icon': FaIcon(FontAwesomeIcons.shoppingBag),
  },
  {
    'title': 'Notifications',
    'icon': FaIcon(FontAwesomeIcons.shoppingBag),
  },
  {
    'title': 'About Us',
    'icon': FaIcon(FontAwesomeIcons.info),
  },
  {
    'title': 'Inbox',
    'icon': FaIcon(FontAwesomeIcons.mailBulk),
  },
];

// notification cirlce widget
Widget notification_circle(int notifications) {
  return Container(
    margin: EdgeInsets.only(right: 30),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(50),
      child: Container(
        width: 35,
        height: 35,
        color: Colors.red,
        child: Center(
          child: Text(
            notifications.toString(),
            style: TextStyle(fontSize: 17, color: Colors.white),
          ),
        ),
      ),
    ),
  );
}

navigate_food_screen({BuildContext context, Menus menus}) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => FoodScreen(
          menus: menus,
        ),
      ));
}

navigate_option_screen({
  BuildContext context,
  String title,
  Widget navigateScreen,
}) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => navigateScreen,
      ));
}

//navigate to my order screen
navigate_myOrder_screen({
  BuildContext context,
}) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyOrdersScreen('My Orders'),
      ));
}

//navigate to check out screen
navigate_checkOut_screen({
  BuildContext context,
}) {
  Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CheckOutScreen('Check Out'),
      ));
}

//this is a route function for the option screen
route_top_option_screen(String value) {
  switch (value) {
    case 'Payment Details':
      return PaymentDetailsScreen(value);
      break;
    case 'My Orders':
      return MyOrdersScreen(value);
      break;
    case 'Notifications':
      return NotificationsScreen(value);
      break;
    case 'About Us':
      return AboutUsScreen(value);
      break;
    case 'Inbox':
      return InboxScreen(value);
      break;
    default:
      return DefaultScreen();
  }
}

// rating starts global widget
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
