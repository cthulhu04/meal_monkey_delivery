import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/functionality/assets_widgets.dart';
import 'package:meal_monkey_food_delivery/screens/category_screen.dart';
import 'package:meal_monkey_food_delivery/widget/input_form.dart';
import 'package:meal_monkey_food_delivery/widget/menu_category.dart';
import 'package:meal_monkey_food_delivery/widget/menu_category_card.dart';

class MenuScreen extends StatefulWidget {
  @override
  _MenuScreenState createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  double _heightOfContainer = 500;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10.0),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: InputForm(
              value: 'search',
            ),
          ),
          SizedBox(height: 20.0),
          MenuCategory(
            size: size,
            menuList: category_btn_menu.map((e) {
              return menu_category_card(
                size: size,
                food: e['category'],
                items: e['items'],
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => categoryScreen(title: e['category']),
                  ),
                ),
              );
            }).toList(),
          ),
          SizedBox(height: 20.0),
          // MenuCategory()
        ],
      ),
    );
  }
}
