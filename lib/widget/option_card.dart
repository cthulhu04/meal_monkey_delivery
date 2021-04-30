import 'dart:io' show Platform;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:meal_monkey_food_delivery/constants/main_colors.dart';
import 'package:meal_monkey_food_delivery/constants/text_style_constants.dart';
import 'package:meal_monkey_food_delivery/functionality/assets_widgets.dart';
import 'package:meal_monkey_food_delivery/models/notification.dart';

Widget OptionsCard({
  @required Size size,
  String title,
  Widget icon,
  Function onTap,
}) {
  double _heightOfContainer = 500;
  return GestureDetector(
    onTap: onTap,
    child: Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
          height: _heightOfContainer / 4 - 40,
          width: size.width / 1.1,
          decoration: BoxDecoration(
            color: secondPrimaryColor,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                child: Row(
                  children: [
                    SizedBox(width: 40),
                    icon,
                    SizedBox(width: 20),
                    Text(title,
                        style: primary_text_style.copyWith(
                          color: fourPrimaryColor,
                          fontSize: 17.0,
                        )),
                  ],
                ),
              ),
              title.toLowerCase() == 'notifications'
                  ? notification_circle(notificationLists.length)
                  : SizedBox(),
            ],
          ),
        ),
        Positioned(
          right: 0,
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: secondPrimaryColor,
              borderRadius: BorderRadius.circular(50),
            ),
            child: Icon(
              Platform.isIOS ? Icons.arrow_forward_ios : Icons.arrow_forward,
              color: fourPrimaryColor,
            ),
          ),
        ),
      ],
    ),
  );
}
