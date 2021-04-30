import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/functionality/assets_widgets.dart';
import 'package:meal_monkey_food_delivery/functionality/global_functions.dart';
import 'package:meal_monkey_food_delivery/models/menus.dart';
import 'package:meal_monkey_food_delivery/widget/food_card.dart';
import 'package:meal_monkey_food_delivery/widget/header_appbar.dart';
import 'package:meal_monkey_food_delivery/widget/input_form.dart';

class categoryScreen extends StatefulWidget {
  String title;
  categoryScreen({this.title});

  @override
  _categoryScreenState createState() => _categoryScreenState();
}

class _categoryScreenState extends State<categoryScreen> {
  test() {
    List<Menus> menu;
    if (widget.title == 'promotions') {
      menu = check_for_promotions();
    } else {
      menu = count_list_menus(widget.title);
    }
    return menu
        .map(
          (Menus menus) => FoodCard(
            version_2: true,
            menus: menus,
            onTap: () => navigate_food_screen(context: context, menus: menus),
          ),
        )
        .toList();
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    test();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: headerAppBar(
        automaticallyImplyLeading: true,
        text: widget.title,
        context: context,
      ),
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          Padding(
            padding: EdgeInsets.all(20),
            child: InputForm(value: 'Search'),
          ),
          Column(
            children: test(),
          ),
        ],
      ),
    );
  }
}
