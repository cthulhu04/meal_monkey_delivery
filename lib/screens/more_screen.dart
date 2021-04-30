import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/functionality/assets_widgets.dart';
import 'package:meal_monkey_food_delivery/widget/option_card.dart';

class MoreScreen extends StatefulWidget {
  @override
  _MoreScreenState createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ListView(
      physics: BouncingScrollPhysics(),
      children: options_card.map((options) {
        return Container(
          margin: EdgeInsets.symmetric(vertical: 10),
          child: OptionsCard(
            size: size,
            title: options['title'],
            icon: options['icon'],
            onTap: () => navigate_option_screen(
              context: context,
              navigateScreen: route_top_option_screen(options['title']),
            ),
          ),
        );
      }).toList(),
    );
  }
}
