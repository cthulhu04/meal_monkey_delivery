import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';

class PrimaryButton extends StatelessWidget {
  bool color;
  Widget widget;
  Function function;
  double width;
  double height;
  PrimaryButton({
    this.color = true,
    this.widget,
    this.function,
    this.width = double.infinity,
    this.height,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: color ? fivePrimaryColor : Colors.white,
        border: Border.all(color: fivePrimaryColor),
        borderRadius: BorderRadius.circular(50.0),
      ),
      width: width,
      height: height,
      child: TextButton(
        onPressed: function,
        child: Center(
          child: widget,
        ),
      ),
    );
  }
}
