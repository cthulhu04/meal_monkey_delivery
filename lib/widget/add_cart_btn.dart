import 'package:flutter/material.dart';

Widget add_cart_btn({
  Color color,
  Widget widget,
  Function function,
}) =>
    Container(
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
