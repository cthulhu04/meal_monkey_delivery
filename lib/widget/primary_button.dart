import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';

class PrimaryButton extends StatelessWidget {
  bool color;
  Widget widget;
  Function function;
  PrimaryButton({this.color = true, this.widget, this.function});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: color ? fivePrimaryColor : Colors.white,
        border: Border.all(color: fivePrimaryColor),
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
