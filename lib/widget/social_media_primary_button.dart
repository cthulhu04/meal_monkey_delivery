import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';

class SocialMediaPrimaryBtn extends StatelessWidget {
  Color color;
  Widget widget;
  Function function;
  SocialMediaPrimaryBtn({this.color, this.widget, this.function});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: color,
        border: Border.all(color: color),
        borderRadius: BorderRadius.circular(50.0),
      ),
      width: double.infinity,
      child: TextButton(
        onPressed: function,
        child: Center(
          child: widget,
        ),
      ),
    );
  }
}
