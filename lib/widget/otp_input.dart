import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';

Widget otpInput(
    {Function onChanged, validator, TextEditingController controller}) {
  return ClipRRect(
    borderRadius: BorderRadius.circular(20.0),
    child: Container(
      width: 60.0,
      height: 60.0,
      padding: EdgeInsets.all(10.0),
      color: formColors,
      child: Center(
        child: TextFormField(
          controller: controller,
          maxLength: 1,
          decoration: InputDecoration(
            counterStyle: TextStyle(
              height: double.minPositive,
            ),
            counterText: "",
            border: OutlineInputBorder(
              borderSide: BorderSide(
                width: 0,
                style: BorderStyle.none,
              ),
            ),
          ),
          onChanged: onChanged,
          validator: validator,
        ),
      ),
    ),
  );
}
