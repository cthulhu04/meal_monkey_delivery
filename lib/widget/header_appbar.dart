import 'dart:io' show Platform;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:meal_monkey_food_delivery/functionality/assets_widgets.dart';
import 'package:meal_monkey_food_delivery/screens/my_orders_screen.dart';

Widget headerAppBar({
  bool automaticallyImplyLeading = false,
  bool actions = true,
  String text = 'Welcome',
  BuildContext context,
  bool transparent = false,
}) {
  return AppBar(
    title: Padding(
      padding: EdgeInsets.only(left: 10),
      child: Text(text),
    ),
    backgroundColor: transparent ? Colors.transparent : null,
    automaticallyImplyLeading: automaticallyImplyLeading,
    elevation: 0.0,
    leading: automaticallyImplyLeading
        ? GestureDetector(
            child: Icon(
              Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
              color: Colors.black,
            ),
            onTap: () => Navigator.pop(context),
          )
        : null,
    actions: actions
        ? [
            Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    child: FaIcon(FontAwesomeIcons.shoppingCart),
                    onTap: () => navigate_myOrder_screen(context: context),
                  ),
                ],
              ),
            )
          ]
        : null,
  );
}
