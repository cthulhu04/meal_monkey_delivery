import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';

Widget InputForm({
  String value,
  Function function,
  validation,
  bool obscureText = false,
  TextEditingController controller,
}) =>
    Container(
      decoration: BoxDecoration(
        color: formColors,
        borderRadius: BorderRadius.circular(90.0),
      ),
      child: TextFormField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: value,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              width: 0,
              style: BorderStyle.none,
            ),
          ),
        ),
        validator: validation,
        onChanged: function,
      ),
    );
